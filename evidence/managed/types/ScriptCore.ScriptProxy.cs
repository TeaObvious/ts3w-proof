using System;
using System.Collections.Generic;
using System.Reflection;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public class ScriptProxy : IScriptProxy, ITask, IDisposable, IStackMarshalable
{
	private enum eResetStatus
	{
		kResetNone,
		kResetRequested
	}

	private ObjectGuid mObjectId;

	private IScriptLogic mTarget;

	private ScriptExecuteType mExecuteType = ScriptExecuteType.None;

	private static Dictionary<string, string> sLogicReplacementDictionary = new Dictionary<string, string>();

	private static LogicFailureCallback sFailureCallback = null;

	internal SavedTaskContext mSavedTaskContext;

	internal bool mResetSavedObject;

	public ObjectGuid ObjectId
	{
		get
		{
			return mObjectId;
		}
		set
		{
			mObjectId = value;
		}
	}

	public IScriptLogic Target => mTarget;

	public string ClassName
	{
		get
		{
			if (mTarget == null)
			{
				return "{Null}";
			}
			Type type = mTarget.GetType();
			return type.Namespace + "." + type.Name;
		}
	}

	public ScriptExecuteType ExecuteType => mExecuteType;

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey ScriptProxy_GetResourceKeyImpl(ulong objectId);

	[DllImport("Sims3Common.dll")]
	private static extern void ScriptProxy_SetResetState(ulong objectId, eResetStatus newStatus);

	public ScriptProxy()
	{
		mObjectId = Sims3.SimIFace.Simulator.kBadObjectGuid;
	}

	~ScriptProxy()
	{
	}

	public override string ToString()
	{
		if (mTarget != null)
		{
			return "Proxy." + mTarget.ToString();
		}
		return base.ToString();
	}

	public void Simulate()
	{
		if (mTarget == null)
		{
			return;
		}
		try
		{
			PreSimulate();
		}
		catch (ResetException)
		{
			OnReset();
			return;
		}
		catch (Exception)
		{
			OnReset();
			throw;
		}
		bool flag = true;
		while (flag)
		{
			try
			{
				mTarget.Simulate();
				flag = false;
			}
			catch (ResetException)
			{
				OnReset();
				break;
			}
			catch (Exception e)
			{
				SetObjectNotToReset();
				if (!OnScriptError(e))
				{
					OnReset();
					throw;
				}
				Exception ex4 = null;
			}
		}
	}

	public void Stop()
	{
		if (mTarget != null)
		{
			mTarget.Stop();
		}
	}

	public void Dispose()
	{
		try
		{
			if (mTarget != null)
			{
				mTarget.Dispose();
			}
		}
		finally
		{
			mTarget = null;
			mObjectId = Sims3.SimIFace.Simulator.kBadObjectGuid;
		}
	}

	internal bool SetLogic(IScriptLogic obj)
	{
		return SetLogic(obj, postLoad: false);
	}

	internal bool SetLogic(IScriptLogic obj, bool postLoad)
	{
		mTarget = obj;
		mTarget.Proxy = this;
		try
		{
			mExecuteType = mTarget.Init(postLoad);
		}
		catch (ResetException)
		{
			mExecuteType = ScriptExecuteType.InitFailed;
		}
		if (mExecuteType == ScriptExecuteType.InitFailed)
		{
			mTarget.Proxy = null;
			mTarget = null;
			throw new Exception("--- ERROR:  logic type " + obj.GetType().Namespace + "." + obj.GetType().Name + " failed to init. ---");
		}
		return true;
	}

	private IScriptLogic TryCreateLogic(string className)
	{
		AppDomain currentDomain = AppDomain.CurrentDomain;
		Assembly[] assemblies = currentDomain.GetAssemblies();
		IScriptLogic scriptLogic = null;
		Assembly[] array = assemblies;
		foreach (Assembly assembly in array)
		{
			scriptLogic = (IScriptLogic)assembly.CreateInstance(className);
			if (scriptLogic != null)
			{
				break;
			}
		}
		return scriptLogic;
	}

	public static string SubstituteClass(string className)
	{
		if (sLogicReplacementDictionary.TryGetValue(className, out var value))
		{
			className = value;
		}
		return className;
	}

	public static string CreateLogicFailureName(string className)
	{
		string newclassname = null;
		if (sFailureCallback != null)
		{
			sFailureCallback(className, out newclassname);
		}
		return newclassname;
	}

	public bool CreateLogic(string className)
	{
		if (mTarget != null)
		{
			return false;
		}
		className = SubstituteClass(className);
		if (className == null)
		{
			return false;
		}
		IScriptLogic scriptLogic = TryCreateLogic(className);
		if (scriptLogic == null)
		{
			string text = CreateLogicFailureName(className);
			if (text != null)
			{
				scriptLogic = TryCreateLogic(text);
				if (scriptLogic == null)
				{
					throw new Exception("--- ERROR:  Unable to create failure logic '" + text + "'. ---");
				}
			}
			if (scriptLogic == null)
			{
				throw new Exception("--- ERROR:  Unable to create logic type '" + className + "'. ---");
			}
		}
		return SetLogic(scriptLogic);
	}

	public ResourceKey GetResourceKey()
	{
		return ScriptProxy_GetResourceKeyImpl(mObjectId.Value);
	}

	public void Load(IScriptLogic logic)
	{
		mTarget = logic;
		if (mTarget != null)
		{
			mTarget.Proxy = this;
		}
	}

	public void PostLoad()
	{
		if (mTarget != null)
		{
			mExecuteType = mTarget.Init(_postLoad: true);
			if (mExecuteType == ScriptExecuteType.InitFailed)
			{
				string fullName = mTarget.GetType().FullName;
				mTarget.Proxy = null;
				mTarget = null;
				throw new Exception("--- ERROR:  logic type " + fullName + " failed to init. ---");
			}
		}
	}

	public void OnReset()
	{
		mTarget.OnReset();
	}

	public bool OnScriptError(Exception e)
	{
		return ScriptErrorWindow.DisplayScriptError(this, e);
	}

	public void SetObjectToReset()
	{
		if (mObjectId.Value != 0)
		{
			ScriptProxy_SetResetState(mObjectId.Value, eResetStatus.kResetRequested);
		}
	}

	private void SetObjectNotToReset()
	{
		if (mObjectId.Value != 0)
		{
			ScriptProxy_SetResetState(mObjectId.Value, eResetStatus.kResetNone);
		}
	}

	public static void SetLogicFailureCallback(LogicFailureCallback failurecallback)
	{
		sFailureCallback = failurecallback;
	}

	public static void SetLogicReplacement(string oldClass, string newClass)
	{
		sLogicReplacementDictionary[oldClass] = newClass;
	}

	private void PreSimulate()
	{
		if (mResetSavedObject)
		{
			if (mSavedTaskContext != null)
			{
				mSavedTaskContext.Dispose();
				mSavedTaskContext = null;
			}
			if (!LoadSaveManager.SendObjectFailedEvent(this))
			{
				mResetSavedObject = false;
				SetObjectToReset();
				Sims3.SimIFace.Simulator.Sleep(1u);
			}
		}
		else if (mSavedTaskContext != null)
		{
			RestoreSavedTaskContext();
		}
	}

	private void RestoreSavedTaskContext()
	{
		SavedTaskContext savedTaskContext = mSavedTaskContext;
		mSavedTaskContext = null;
		if (savedTaskContext != null)
		{
			LoadSaveManager.RequestTaskRestore(savedTaskContext);
			Sims3.SimIFace.Simulator.Sleep(uint.MaxValue);
			OnReset();
		}
	}

	public IStackReference ConvertToStackReference()
	{
		return new ScriptProxyReference(mObjectId);
	}
}
