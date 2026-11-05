using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Text;
using System.Xml;
using Sims3.SimIFace;

namespace ScriptCore;

[Persistable(FormatterType = typeof(SimulatorFormatter))]
public sealed class Simulator : ISimulator
{
	private static bool sInPersistHandler;

	private static Dictionary<ulong, ITask> mObjHash;

	private static long sSimTickCnt;

	private YieldAnalysisTaskHandler mYieldAnalysisTaskHandler;

	private YieldAnalysisMethodHandler mYieldAnalysisMethodHandler;

	private YieldAnalysisCallHandler mYieldAnalysisCallHandler;

	internal static Simulator Instance => (Simulator)AppDomain.CurrentDomain.GetData("Simulator");

	public ObjectGuid CurrentTask => new ObjectGuid(Simulator_GetCurrentTaskImpl());

	public long TickCount => sSimTickCnt;

	[DllImport("Sims3Common.dll")]
	private static extern ulong Simulator_GetCurrentTaskImpl();

	[DllImport("Sims3Common.dll")]
	private static extern long Simulator_GetTickCountImpl();

	[DllImport("Sims3Common.dll")]
	private static extern ulong Simulator_CreateObjectImpl(ulong instanceId, uint groupId, uint typeId, [MarshalAs(UnmanagedType.SafeArray)] byte[] data);

	[DllImport("Sims3Common.dll")]
	private static extern void Simulator_DestroyObjectImpl(ulong objectId);

	[DllImport("Sims3Common.dll")]
	private static extern void Simulator_DisableScriptImpl(ulong objectId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Simulator_SleepImpl(uint simTicks);

	[DllImport("Sims3Common.dll")]
	private static extern void Simulator_WakeImpl(ulong objectId, [MarshalAs(UnmanagedType.I1)] bool assertIfNotSleeping);

	[DllImport("Sims3Common.dll")]
	private static extern void Simulator_SetYieldingDisabledImpl([MarshalAs(UnmanagedType.I1)] bool disabled);

	[DllImport("Sims3Common.dll")]
	private static extern ITask Simulator_GetTaskImpl(ulong objectId, bool preInit);

	[DllImport("Sims3Common.dll")]
	private static extern uint Simulator_CountResources(ulong instanceId, uint groupId, uint typeId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.LPStr)]
	private static extern string Simulator_LoadXmlAsString(ulong instanceId, uint groupId, uint typeId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.LPStr)]
	private static extern string Simulator_LoadNthXmlAsString(uint index, ulong instanceId, uint groupId, uint typeId);

	[DllImport("Sims3Common.dll")]
	private static extern XmlDocument Simulator_LoadXmlAsDocument(ulong instanceId, uint groupId, uint typeId);

	[DllImport("Sims3Common.dll")]
	private static extern XmlDocument Simulator_LoadNthXmlAsDocument(uint index, ulong instanceId, uint groupId, uint typeId);

	[DllImport("Sims3Common.dll")]
	private static extern string MonoScriptHost_GetEnumSimpleName(Type enumType, ulong val);

	[DllImport("Sims3Common.dll")]
	private static extern uint MonoScriptHost_GetEnumSimpleHash(Type enumType, ulong val);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string Simulator_CreateDnPExportFileImpl(ref uint fileHandle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string Simulator_CreateExportFileImpl(ref uint fileHandle, [MarshalAs(UnmanagedType.LPWStr)] string prefix);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string Simulator_CreateScriptErrorFileImpl(ref uint fileHandle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Simulator_AppendToScriptErrorFileImpl(uint fileHandle, char[] text);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Simulator_CloseScriptErrorFileImpl(uint fileHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void Simulator_AddObjectImpl([MarshalAs(UnmanagedType.IUnknown)] object proxy, ulong objectId);

	[DllImport("Sims3Common.dll")]
	private static extern long Simulator_GetUsedBytesImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Simulator_IsInitDoneImpl(ulong handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)]
	private static extern ulong[] Simulator_GetAllSimulationObjectKeysImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string Simulator_GetSimulationObjectNameImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern void Simulator_EnableYieldAnalysis([MarshalAs(UnmanagedType.Interface)] YieldAnalysisTaskHandler checkTaskHandler, [MarshalAs(UnmanagedType.Interface)] YieldAnalysisMethodHandler checkMethodHandler, [MarshalAs(UnmanagedType.Interface)] YieldAnalysisCallHandler callHandler);

	[DllImport("Sims3Common.dll")]
	private static extern void Simulator_DisableYieldAnalysis();

	[DllImport("Sims3Common.dll")]
	private static extern bool Simulator_DidSecuritySystemFailImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void Simulator_ClearReflectionCache();

	[DllImport("Sims3Common.dll")]
	private static extern int Simulator_DoCPPProfile(uint startEndDelta, uint index);

	static Simulator()
	{
		sSimTickCnt = 0L;
		mObjHash = new Dictionary<ulong, ITask>();
		Persist.TypeMissing += TypeMissingHandler;
		Persist.TypeFound += TypeFoundHandler;
	}

	public Simulator()
	{
		AppDomain.CurrentDomain.SetData("Simulator", this);
	}

	private static Type TypeMissingHandler(string className)
	{
		if (sInPersistHandler)
		{
			return null;
		}
		string text = ScriptProxy.SubstituteClass(className);
		if (text == null)
		{
			return null;
		}
		sInPersistHandler = true;
		Type typeByUnqualifiedName = Persist.GetTypeByUnqualifiedName(text);
		sInPersistHandler = false;
		return typeByUnqualifiedName;
	}

	private static bool TypeFoundHandler(ref Type type)
	{
		if (sInPersistHandler)
		{
			return false;
		}
		string fullName = type.FullName;
		string text = ScriptProxy.SubstituteClass(fullName);
		if (text == null)
		{
			type = null;
			return true;
		}
		if (text == fullName)
		{
			return false;
		}
		sInPersistHandler = true;
		Type typeByUnqualifiedName = Persist.GetTypeByUnqualifiedName(text);
		sInPersistHandler = false;
		if (typeByUnqualifiedName != type)
		{
			type = typeByUnqualifiedName;
			return true;
		}
		return false;
	}

	public static void RefObj(object obj)
	{
		if (!(obj is ITask { ObjectId: { Value: var value } } task))
		{
			throw new InvalidCastException("Only ITasks (or subclasses) can be added to the simulator.");
		}
		if (value == 0)
		{
			throw new NullReferenceException("Task hasn't has ObjectId set yet.");
		}
		mObjHash[value] = task;
	}

	public static void DerefObj(ulong handle)
	{
		mObjHash.Remove(handle);
	}

	[Conditional("EA_DEBUGRELEASE")]
	[Conditional("EA_DEBUG")]
	public static void SetCurrentTaskName(object obj)
	{
	}

	public bool IsInitDone(ObjectGuid handle)
	{
		return Simulator_IsInitDoneImpl(handle.Value);
	}

	public void SetYieldingDisabled(bool disabled)
	{
		Simulator_SetYieldingDisabledImpl(disabled);
	}

	public long GetUsedBytes()
	{
		return Simulator_GetUsedBytesImpl();
	}

	public void SetLogicFailureCallback(LogicFailureCallback failurecallback)
	{
		ScriptProxy.SetLogicFailureCallback(failurecallback);
	}

	public void SetLogicReplacement(string oldClass, string newClass)
	{
		ScriptProxy.SetLogicReplacement(oldClass, newClass);
	}

	public uint CountResources(ResourceKey resKey)
	{
		return Simulator_CountResources(resKey.InstanceId, resKey.GroupId, resKey.TypeId);
	}

	public string LoadXmlString(ResourceKey resKey)
	{
		return Simulator_LoadXmlAsString(resKey.InstanceId, resKey.GroupId, resKey.TypeId);
	}

	public XmlDocument LoadXml(ResourceKey resKey)
	{
		return Simulator_LoadXmlAsDocument(resKey.InstanceId, resKey.GroupId, resKey.TypeId);
	}

	public XmlDocument LoadNthXml(ResourceKey resKey, uint index)
	{
		return Simulator_LoadNthXmlAsDocument(index, resKey.InstanceId, resKey.GroupId, resKey.TypeId);
	}

	public XmlReader ReadXml(ResourceKey resKey)
	{
		string text = LoadXmlString(resKey);
		if (text == null)
		{
			return null;
		}
		XmlReaderSettings xmlReaderSettings = new XmlReaderSettings();
		xmlReaderSettings.IgnoreComments = true;
		xmlReaderSettings.IgnoreWhitespace = true;
		return XmlReader.Create(new StringReader(text), xmlReaderSettings);
	}

	public XmlReader ReadXml(ResourceKey resKey, uint index)
	{
		throw new Exception("The method or operation is not implemented.");
	}

	private static void AddElementToDoc(XmlDocument doc, XmlElement elm)
	{
		if (doc.DocumentElement != null)
		{
			AddElementToDocElement(doc, elm);
		}
		else
		{
			doc.AppendChild(elm);
		}
	}

	private static void AddElementToDocElement(XmlDocument doc, XmlElement elm)
	{
		doc.DocumentElement.AppendChild(elm);
	}

	private static void AddElementToNode(XmlNode node, XmlElement elm)
	{
		node?.AppendChild(elm);
	}

	private static void AddTextToElement(XmlElement elm, XmlText text)
	{
		elm.AppendChild(text);
	}

	public ObjectGuid AddObject(object obj, bool postLoad, ObjectGuid objectId)
	{
		if (obj is IScriptLogic)
		{
			ScriptProxy scriptProxy = new ScriptProxy();
			if (!scriptProxy.SetLogic((IScriptLogic)obj, postLoad))
			{
				return Sims3.SimIFace.Simulator.kBadObjectGuid;
			}
			Simulator_AddObjectImpl(scriptProxy, objectId.Value);
			return scriptProxy.ObjectId;
		}
		ITask task = (ITask)obj;
		Simulator_AddObjectImpl(task, objectId.Value);
		return task.ObjectId;
	}

	public ObjectGuid CreateObject(ResourceKey prototypeKey, Hashtable overrideData)
	{
		ObjectGuid kBadObjectGuid = Sims3.SimIFace.Simulator.kBadObjectGuid;
		if (overrideData != null)
		{
			ArrayList arrayList = new ArrayList();
			ArrayList arrayList2 = new ArrayList();
			ArrayList arrayList3 = new ArrayList();
			foreach (DictionaryEntry overrideDatum in overrideData)
			{
				string value = (string)overrideDatum.Key;
				object value2 = overrideDatum.Value;
				if (value2 != null)
				{
					if (value2.GetType() == typeof(string))
					{
						arrayList.Add(value);
					}
					else if (value2.GetType() == typeof(ResourceKey))
					{
						arrayList2.Add(value);
					}
					else if (value2.GetType() == typeof(uint))
					{
						arrayList3.Add(value);
					}
				}
			}
			int value3 = arrayList.Count + arrayList2.Count + arrayList3.Count;
			ASCIIEncoding aSCIIEncoding = new ASCIIEncoding();
			MemoryStream memoryStream = new MemoryStream();
			BinaryWriter binaryWriter = new BinaryWriter(memoryStream);
			binaryWriter.Write(value3);
			foreach (string item in arrayList)
			{
				string s = (string)overrideData[item];
				binaryWriter.Write((byte)0);
				byte[] bytes = aSCIIEncoding.GetBytes(item);
				binaryWriter.Write((byte)bytes.Length);
				binaryWriter.Write(bytes);
				bytes = aSCIIEncoding.GetBytes(s);
				binaryWriter.Write((byte)bytes.Length);
				binaryWriter.Write(bytes);
			}
			foreach (string item2 in arrayList2)
			{
				ResourceKey resourceKey = (ResourceKey)overrideData[item2];
				binaryWriter.Write((byte)1);
				byte[] bytes = aSCIIEncoding.GetBytes(item2);
				binaryWriter.Write((byte)bytes.Length);
				binaryWriter.Write(bytes);
				binaryWriter.Write(resourceKey.InstanceId);
				binaryWriter.Write(resourceKey.GroupId);
				binaryWriter.Write(resourceKey.TypeId);
			}
			foreach (string item3 in arrayList3)
			{
				uint value4 = (uint)overrideData[item3];
				binaryWriter.Write((byte)2);
				byte[] bytes = aSCIIEncoding.GetBytes(item3);
				binaryWriter.Write((byte)bytes.Length);
				binaryWriter.Write(bytes);
				binaryWriter.Write(value4);
			}
			binaryWriter.Flush();
			kBadObjectGuid = new ObjectGuid(Simulator_CreateObjectImpl(prototypeKey.InstanceId, prototypeKey.GroupId, prototypeKey.TypeId, memoryStream.GetBuffer()));
		}
		else
		{
			kBadObjectGuid = new ObjectGuid(Simulator_CreateObjectImpl(prototypeKey.InstanceId, prototypeKey.GroupId, prototypeKey.TypeId, null));
		}
		return kBadObjectGuid;
	}

	public void DestroyObject(ObjectGuid scriptHandle)
	{
		Simulator_DestroyObjectImpl(scriptHandle.Value);
	}

	public void DisableScript(ObjectGuid scriptHandle)
	{
		Simulator_DisableScriptImpl(scriptHandle.Value);
	}

	public void Sleep(uint simTicks)
	{
		Simulator_SleepImpl(simTicks);
	}

	public void Wake(ObjectGuid objectId)
	{
		Simulator_WakeImpl(objectId.Value, assertIfNotSleeping: true);
	}

	public void Wake(ObjectGuid objectId, bool assertIfNotSleeping)
	{
		Simulator_WakeImpl(objectId.Value, assertIfNotSleeping);
	}

	public IScriptProxy GetProxy(ObjectGuid objectId)
	{
		return Simulator_GetTaskImpl(objectId.Value, preInit: false) as IScriptProxy;
	}

	public IScriptProxy GetProxyPreInit(ObjectGuid objectId)
	{
		return Simulator_GetTaskImpl(objectId.Value, preInit: true) as IScriptProxy;
	}

	public ITask GetTask(ObjectGuid objectId)
	{
		return Simulator_GetTaskImpl(objectId.Value, preInit: false);
	}

	public string CreateDnPExportFile(ref uint fileHandle)
	{
		return Simulator_CreateDnPExportFileImpl(ref fileHandle);
	}

	public string CreateExportFile(ref uint fileHandle, string prefix)
	{
		return Simulator_CreateExportFileImpl(ref fileHandle, prefix);
	}

	public string CreateScriptErrorFile(ref uint fileHandle)
	{
		return Simulator_CreateScriptErrorFileImpl(ref fileHandle);
	}

	public bool AppendToScriptErrorFile(uint fileHandle, char[] text)
	{
		return Simulator_AppendToScriptErrorFileImpl(fileHandle, text);
	}

	public bool CloseScriptErrorFile(uint fileHandle)
	{
		return Simulator_CloseScriptErrorFileImpl(fileHandle);
	}

	public ResourceKey[] GetAllSimulationObjectKeys()
	{
		ulong[] array = Simulator_GetAllSimulationObjectKeysImpl();
		int num = array.Length;
		ResourceKey[] array2 = new ResourceKey[num];
		for (int i = 0; i < num; i++)
		{
			ref ResourceKey reference = ref array2[i];
			reference = new ResourceKey(array[i], 47985727u, 0u);
		}
		return array2;
	}

	public string GetSimulationObjectName(ResourceKey key)
	{
		return Simulator_GetSimulationObjectNameImpl(key);
	}

	public void EnableYieldAnalysis(YieldAnalysisTaskHandler checkTaskHandler, YieldAnalysisMethodHandler checkMethodHandler, YieldAnalysisCallHandler callHandler)
	{
		Simulator_DisableYieldAnalysis();
		mYieldAnalysisTaskHandler = checkTaskHandler;
		mYieldAnalysisMethodHandler = checkMethodHandler;
		mYieldAnalysisCallHandler = callHandler;
		Simulator_EnableYieldAnalysis(checkTaskHandler, checkMethodHandler, callHandler);
	}

	public void DisableYieldAnalysis()
	{
		Simulator_DisableYieldAnalysis();
		mYieldAnalysisTaskHandler = null;
		mYieldAnalysisMethodHandler = null;
		mYieldAnalysisCallHandler = null;
	}

	public string GetObjectStackTrace(ObjectGuid objectHandle)
	{
		if (!TaskControl.GetTaskContext(objectHandle.Value, methodsOnly: true, out var context) || context.mFrames == null)
		{
			return "<no call stack>";
		}
		StringBuilder stringBuilder = new StringBuilder();
		TaskFieldReference fieldRef = default;
		for (int num = context.mFrames.Length - 1; num >= 0; num--)
		{
			TaskFrame taskFrame = context.mFrames[num];
			fieldRef.mFrameIndex = num;
			if (taskFrame.mMethodHandle.Value != IntPtr.Zero)
			{
				MethodInfo methodInfo = (MethodInfo)MethodBase.GetMethodFromHandle(taskFrame.mMethodHandle);
				stringBuilder.Append("    at ");
				stringBuilder.Append(methodInfo.ReturnType.Name);
				stringBuilder.Append(' ');
				Type declaringType = methodInfo.DeclaringType;
				stringBuilder.Append(declaringType.Namespace);
				stringBuilder.Append('.');
				stringBuilder.Append(declaringType.Name);
				stringBuilder.Append('.');
				stringBuilder.Append(methodInfo.Name);
				stringBuilder.Append('(');
				ParameterInfo[] parameters = methodInfo.GetParameters();
				for (int i = 0; i < parameters.Length; i++)
				{
					if (i != 0)
					{
						stringBuilder.Append(", ");
					}
					ParameterInfo parameterInfo = parameters[i];
					Type parameterType = parameterInfo.ParameterType;
					stringBuilder.Append(parameterType.Name);
					stringBuilder.Append(' ');
					stringBuilder.Append(parameterInfo.Name);
					fieldRef.mFieldIndex = i;
					switch (Type.GetTypeCode(parameterType))
					{
					case TypeCode.Boolean:
					{
						object fieldValue = TaskControl.GetFieldValue(objectHandle.Value, fieldRef);
						if (fieldValue != null)
						{
							stringBuilder.Append(((bool)fieldValue) ? " = true" : " = false");
						}
						break;
					}
					case TypeCode.Char:
					{
						object fieldValue = TaskControl.GetFieldValue(objectHandle.Value, fieldRef);
						if (fieldValue != null)
						{
							stringBuilder.AppendFormat(" = {0}", (int)(char)fieldValue);
						}
						break;
					}
					case TypeCode.SByte:
					case TypeCode.Byte:
					case TypeCode.Int16:
					case TypeCode.UInt16:
					case TypeCode.Int32:
					case TypeCode.UInt32:
					case TypeCode.Int64:
					case TypeCode.UInt64:
					case TypeCode.Single:
					case TypeCode.Double:
					case TypeCode.Decimal:
					case TypeCode.DateTime:
					{
						object fieldValue = TaskControl.GetFieldValue(objectHandle.Value, fieldRef);
						if (fieldValue != null)
						{
							stringBuilder.AppendFormat(" = {0}", fieldValue);
						}
						break;
					}
					case TypeCode.String:
					{
						object fieldValue = TaskControl.GetFieldValue(objectHandle.Value, fieldRef);
						if (fieldValue != null)
						{
							stringBuilder.AppendFormat(" = \"{0}\"", fieldValue);
						}
						else
						{
							stringBuilder.Append(" = null");
						}
						break;
					}
					}
				}
				stringBuilder.Append(')');
				stringBuilder.Append('\n');
			}
			else
			{
				stringBuilder.AppendLine("<Invalid method>");
			}
		}
		if (context.mNativeYieldCall != 0)
		{
			TaskControl.TaskControl_ReleaseYieldingCall(context.mNativeYieldCall);
		}
		return stringBuilder.ToString();
	}

	public string GetEnumSimpleName(Type enumType, ulong val)
	{
		return MonoScriptHost_GetEnumSimpleName(enumType, val);
	}

	public uint GetEnumSimpleHash(Type enumType, ulong val)
	{
		return MonoScriptHost_GetEnumSimpleHash(enumType, val);
	}

	public bool DidSecuritySystemFail()
	{
		return Simulator_DidSecuritySystemFailImpl();
	}

	public void ClearReflectionCache()
	{
		Simulator_ClearReflectionCache();
	}

	public long DoCPPProfile(uint startEndDelta, uint index)
	{
		return Simulator_DoCPPProfile(startEndDelta, index);
	}

	private static string DebugGetObjectStackTrace(ulong objectId)
	{
		return "";
	}
}
