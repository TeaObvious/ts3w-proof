// Original PC 1.67 package assembly; actual ILSpy rendering, not a reconstructed implementation.
// Analyst note: selected post-load/wait/actor and posture consumers are interpreted in
// guides/sacs/managed-client-postload-and-waits.md. CIL and MethodDef identities take precedence.
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Sims3.SimIFace.Enums;
using Sims3.SimIFace.SACS;

namespace Sims3.SimIFace;

[Persistable]
public sealed class StateMachineClient : IDisposable, IPersistPostLoad
{
	private struct DriverHandleWrapper(uint handle) : IPersistable
	{
		private const uint kSaveVersion = 0u;

		public uint mHandle = handle;

		public void Read(FastStreamReader reader, IPersistReader persistReader)
		{
			reader.ReadUInt32();
			int saveIndex = reader.ReadInt32();
			mHandle = LoadSaveManager.NativeRead(saveIndex);
		}

		public void Write(FastStreamWriter writer, IPersistWriter persistWriter)
		{
			uint val = 0u;
			int val2 = LoadSaveManager.NativeWrite(mHandle);
			writer.Write(val);
			writer.Write(val2);
		}
	}

	private struct InterestRecord
	{
		internal Type type;

		internal ulong value;
	}

	public class SacsParam
	{
		public string mName;

		public uint mValueInt;

		public bool mValueBool;

		public string mValueString;

		public override string ToString()
		{
			if (mValueString != null)
			{
				return mName + " : " + mValueString;
			}
			if (mValueInt == 979470758 || mValueInt == 1668749452)
			{
				return mName + " : " + mValueBool;
			}
			if (mName == "ProductVersion")
			{
				return mName + " : " + (ProductVersion)mValueInt;
			}
			return mName + " : " + mValueInt;
		}
	}

	private struct HandlerKey
	{
		internal uint type;

		internal uint subtype;

		internal uint id;

		public override int GetHashCode()
		{
			return (int)(type + subtype + id);
		}

		public override bool Equals(object obj)
		{
			if (obj is HandlerKey handlerKey)
			{
				if (type == handlerKey.type && subtype == handlerKey.subtype)
				{
					return id == handlerKey.id;
				}
				return false;
			}
			return false;
		}
	}

	private struct HandlerRecord
	{
		internal HandlerKey key;

		internal SacsEventHandler handler;

		internal bool oneShot;

		public override string ToString()
		{
			if (handler == null || (object)handler.Method == null)
			{
				return base.ToString();
			}
			return key.id + ":" + handler.Method.Name;
		}
	}

	private const uint kYes = 979470758u;

	private const uint kNo = 1668749452u;

	private static readonly string kLogChannel = "SACS/Proxy";

	private static readonly bool DefaultYield = true;

	private static readonly DriverRequestFlags DefaultRequestFlags = DriverRequestFlags.kRequestEmulateEdith;

	private static readonly int DefaultTimeout = 60;

	private static readonly StateMachineClient DefaultBridgeClient = null;

	private static readonly string DefaultBridgeActorName = null;

	private static readonly BridgeOrigin DefaultBridgeOrigin = null;

	private static List<StateMachineClient> sStateMachineClientsForVFXFixUp;

	private string mName;

	private bool mUseActorBridgeOrigins = true;

	private bool mTraceEvents;

	private bool mAbortRequested;

	private bool mEnableSynchronousEventSupport;

	private Exception mPendingException;

	[Persistable(false)]
	private float mTimeoutTime = -1f;

	private float mTimeoutIntervalInTicks = -1f;

	private DriverHandleWrapper mDriver = new DriverHandleWrapper(0u);

	private ObjectGuid mScriptHandle = Simulator.kBadObjectGuid;

	private IEventQueue mEventQueue;

	private Dictionary<string, ObjectGuid> mActorNames = new Dictionary<string, ObjectGuid>();

	private Dictionary<string, IHasBridgeOrigin> mActors = new Dictionary<string, IHasBridgeOrigin>();

	private Dictionary<string, object> mVirtualAddRefs = new Dictionary<string, object>();

	private List<InterestRecord> mInterestRecords;

	private List<HandlerRecord> mEventHandlers;

	private List<HandlerRecord> mSynchronousEventHandlers;

	public static readonly uint kSacsEventType = 80u;

	private bool mHandleEventsAsynchronously;

	private ISacsProxy Proxy => SacsProxy.Instance;

	public string Name => mName;

	public bool UseActorBridgeOrigins
	{
		get
		{
			return mUseActorBridgeOrigins;
		}
		set
		{
			mUseActorBridgeOrigins = value;
		}
	}

	public bool EnableSynchronousEventSupport
	{
		get
		{
			return mEnableSynchronousEventSupport;
		}
		set
		{
			if (value == mEnableSynchronousEventSupport)
			{
				return;
			}
			mEnableSynchronousEventSupport = value;
			if (mEventQueue != null)
			{
				if (value)
				{
					mEventQueue.PermissiveOnEvent = OnSynchronousEvent;
				}
				else
				{
					mEventQueue.PermissiveOnEvent = null;
				}
			}
		}
	}

	public bool TraceEvents
	{
		get
		{
			return mTraceEvents;
		}
		set
		{
			mTraceEvents = value;
		}
	}

	public bool AbortRequested
	{
		get
		{
			return mAbortRequested;
		}
		set
		{
			mAbortRequested = value;
		}
	}

	public bool IsValid => Proxy.IsEventQueueValid(mDriver.mHandle);

	public List<SacsParam> Parameters
	{
		get
		{
			uint numParameters = GetNumParameters();
			List<SacsParam> list = new List<SacsParam>((int)numParameters);
			for (uint num = 0u; num < numParameters; num++)
			{
				SacsParam sacsParam = new SacsParam();
				sacsParam.mName = GetParameterNameByIndex(num);
				sacsParam.mValueInt = GetParameter(sacsParam.mName);
				sacsParam.mValueBool = GetParameterBool(sacsParam.mName, bValidate: false);
				sacsParam.mValueString = GetParameterString(sacsParam.mName);
				list.Add(sacsParam);
			}
			return list;
		}
	}

	public AnimationPriority DefaultPriority => (AnimationPriority)Proxy.GetDefaultPriority(mDriver.mHandle);

	public bool HandleEventsAsynchronously
	{
		get
		{
			return mHandleEventsAsynchronously;
		}
		set
		{
			if (mHandleEventsAsynchronously != value && mEventQueue != null)
			{
				if (value)
				{
					mEventQueue.OnEvent = OnEvent;
				}
				else
				{
					mEventQueue.OnEvent = null;
				}
			}
			mHandleEventsAsynchronously = value;
		}
	}

	public event SacsEventHandler EventFired;

	public static StateMachineClient Acquire(IHasScriptProxy hostObject, string stateMachineName)
	{
		return Acquire(hostObject.Proxy.ObjectId, stateMachineName);
	}

	public static StateMachineClient Acquire(IHasScriptProxy hostObject, string stateMachineName, AnimationPriority overridePriority)
	{
		return Acquire(hostObject.Proxy.ObjectId, stateMachineName, overridePriority);
	}

	public static StateMachineClient Acquire(ObjectGuid hostObjectId, string stateMachineName)
	{
		return Acquire(hostObjectId, stateMachineName, AnimationPriority.kAPDefault);
	}

	public static StateMachineClient Acquire(ObjectGuid hostObjectId, string stateMachineName, AnimationPriority overridePriority)
	{
		return Acquire(hostObjectId, stateMachineName, overridePriority, allowYield: true);
	}

	public static StateMachineClient Acquire(ObjectGuid hostObjectId, string stateMachineName, AnimationPriority overridePriority, bool allowYield)
	{
		ResourceKey stateMachineKey = new ResourceKey(ResourceUtils.HashString64(stateMachineName), 47570707u, 0u);
		uint num = SacsProxy.Instance.AcquireDriver(allowYield, hostObjectId, stateMachineKey, (int)overridePriority);
		switch (num)
		{
		case 4294967287u:
			throw new SacsErrorException("Host object was not found.");
		case 4294967288u:
			throw new SacsErrorException("Host object does not have a SacsComponent.");
		case 4294967289u:
			return null;
		case 4294967286u:
			return Acquire(hostObjectId, stateMachineName, overridePriority);
		case 4294967283u:
			return Acquire(hostObjectId, stateMachineName, overridePriority);
		case 0u:
			throw new SacsErrorException("You have broken SACS / In a new and unique way / Congratulations.");
		default:
		{
			IEventQueue eventQueue = EventQueueHost.CreateEventQueue();
			if (eventQueue != null)
			{
				SacsProxy.Instance.SetEventQueue(num, eventQueue.Handle);
				SacsProxy.Instance.UpdateEventFilter(num, 0u, 2u, 0u, EventKeyOperation.kEKOAddPersistent);
			}
			StateMachineClient stateMachineClient = new StateMachineClient(stateMachineName, num, hostObjectId, eventQueue);
			stateMachineClient.HandleEventsAsynchronously = true;
			return stateMachineClient;
		}
		}
	}

	public static string GetDebugString(ObjectGuid objectId)
	{
		return SacsProxy.Instance.GetDebugString(objectId.Value);
	}

	[Conditional("ENABLE_SACS_WEAK_REFERENCE_LISTS")]
	public static void DebugDump()
	{
	}

	internal string DebugDumpId()
	{
		return string.Format("0x{0:x}:{2} on 0x{1:x}", mDriver.mHandle, mScriptHandle.Value, Name);
	}

	private StateMachineClient()
	{
	}

	internal StateMachineClient(string name, uint driverHandle, ObjectGuid scriptHandle, IEventQueue eq)
		: this()
	{
		mName = name;
		mDriver.mHandle = driverHandle;
		mScriptHandle = scriptHandle;
		mEventQueue = eq;
	}

	[Conditional("EA_LOG_ENABLED")]
	private void DEBUG_MotionTechSetup()
	{
		if (mName.ToLower() == "motiontechtest")
		{
			TraceEvents = true;
		}
	}

	private uint Hash32(string str)
	{
		if (str == null)
		{
			return 0u;
		}
		return ResourceUtils.HashString32(str);
	}

	public override string ToString()
	{
		return "SMC[" + Name + "]";
	}

	public void SetEffectActor(string actorName, VisualEffect effect)
	{
		mVirtualAddRefs[actorName] = effect;
		SetActor(actorName, effect.ObjectId, null);
	}

	public void SetPropActor(string actorName, ObjectGuid actorObjectId)
	{
		SetActor(actorName, actorObjectId, null);
	}

	public void SetActor(string actorName, IHasScriptProxy actor)
	{
		mVirtualAddRefs[actorName] = actor;
		ObjectGuid actorObjectId = ObjectGuid.InvalidObjectGuid;
		if (actor != null)
		{
			actorObjectId = actor.Proxy.ObjectId;
		}
		BridgeOrigin origin = null;
		if (UseActorBridgeOrigins && actor is IHasBridgeOrigin)
		{
			origin = (actor as IHasBridgeOrigin).BridgeOrigin;
			mActors[actorName] = actor as IHasBridgeOrigin;
		}
		if (actor is ISacsAware sacsAware)
		{
			sacsAware.LogDebugOutput(actorName, "", "Actor Set", "", Name);
			sacsAware.SetSacsDefaultParameters(this, actorName);
		}
		SetActor(actorName, actorObjectId, origin);
	}

	private void SetActor(string actorName, ObjectGuid actorObjectId, BridgeOrigin origin)
	{
		if (!UseActorBridgeOrigins && origin != null)
		{
			throw new ArgumentException("Can't set actor bridge origins when UseActorBridgeOrigins is false.", "origin");
		}
		mActorNames[actorName] = actorObjectId;
		uint actorHash = Hash32(actorName);
		Proxy.SetActor(mDriver.mHandle, actorHash, actorObjectId);
		CheckForException();
	}

	private void CheckForException()
	{
		if (mPendingException != null && Simulator.CheckYieldingContext(shouldThrowException: false))
		{
			Exception ex = mPendingException;
			mPendingException = null;
			throw ex;
		}
	}

	public object GetActor(string actorName)
	{
		object value = null;
		mVirtualAddRefs.TryGetValue(actorName, out value);
		return value;
	}

	public void RemoveActor(string actorName)
	{
		mVirtualAddRefs.Remove(actorName);
		SetActor(actorName, null);
	}

	public void RemoveActor(IHasScriptProxy actor)
	{
		if (actor == null || actor.Proxy == null)
		{
			return;
		}
		foreach (KeyValuePair<string, ObjectGuid> mActorName in mActorNames)
		{
			if (mActorName.Value == actor.Proxy.ObjectId)
			{
				RemoveActor(mActorName.Key);
				break;
			}
		}
	}

	public bool HasActorDefinition(string actorName)
	{
		uint actorHash = Hash32(actorName);
		return Proxy.HasActor(mDriver.mHandle, actorHash);
	}

	public void AddInterest<Type>() where Type : IConvertible
	{
		if (mInterestRecords == null)
		{
			mInterestRecords = new List<InterestRecord>(4);
		}
		InterestRecord item = new InterestRecord
		{
			type = typeof(Type),
			value = 0uL
		};
		mInterestRecords.Add(item);
	}

	public void AddInterest<Type>(Type value) where Type : IConvertible
	{
		if (mInterestRecords == null)
		{
			mInterestRecords = new List<InterestRecord>(10);
		}
		InterestRecord item = new InterestRecord
		{
			type = typeof(Type),
			value = value.ToUInt64(null)
		};
		mInterestRecords.Add(item);
	}

	public void AddInterests<Type>(params Type[] values) where Type : IConvertible
	{
		if (mInterestRecords == null)
		{
			mInterestRecords = new List<InterestRecord>(values.Length);
		}
		InterestRecord item = new InterestRecord
		{
			type = typeof(Type)
		};
		for (int num = values.Length - 1; num >= 0; num--)
		{
			item.value = values[num].ToUInt64(null);
			mInterestRecords.Add(item);
		}
	}

	public void SetProductVersion(ProductVersion productVersion)
	{
		SetParameter(2763291142u, (uint)productVersion);
	}

	public void SetParameter(string actor, Type tagType, ulong tagVal, YesOrNo paramValue)
	{
		if (mInterestRecords == null)
		{
			return;
		}
		for (int num = mInterestRecords.Count - 1; num >= 0; num--)
		{
			InterestRecord interestRecord = mInterestRecords[num];
			if (((object)interestRecord.type == tagType && interestRecord.value == 0) || interestRecord.value == tagVal)
			{
				SetParameterInternal(actor, tagType, tagVal, paramValue);
				break;
			}
		}
	}

	private void SetParameterInternal(string actor, Type tagType, ulong tagVal, YesOrNo paramValue)
	{
		string enumSimpleName = Simulator.GetEnumSimpleName(tagType, tagVal);
		Proxy.SetParam(mDriver.mHandle, actor, enumSimpleName, (paramValue == YesOrNo.yes) ? 979470758u : 1668749452u);
	}

	public void SetParameter(uint paramHash, Type valueType, ulong valueVal)
	{
		uint enumSimpleHash = Simulator.GetEnumSimpleHash(valueType, valueVal);
		Proxy.SetParam(mDriver.mHandle, paramHash, enumSimpleHash);
	}

	public void SetParameter(uint paramHash, uint valueHash)
	{
		Proxy.SetParam(mDriver.mHandle, paramHash, valueHash);
	}

	public void SetParameter(string paramName, bool paramValue)
	{
		if (paramValue)
		{
			SetParameter(paramName, YesOrNo.yes);
		}
		else
		{
			SetParameter(paramName, YesOrNo.no);
		}
	}

	public void SetParameter(string paramName, YesOrNo paramValue)
	{
		uint paramHash = Hash32(paramName);
		uint valueHash = ((paramValue == YesOrNo.yes) ? 979470758u : 1668749452u);
		Proxy.SetParam(mDriver.mHandle, paramHash, valueHash);
	}

	public void SetParameter(string paramName, string paramValue, ProductVersion productVersion)
	{
		SetProductVersion(productVersion);
		SetParameter(paramName, paramValue);
	}

	public void SetParameter(string paramName, string paramValue)
	{
		if (paramValue == null)
		{
			throw new ArgumentNullException("paramValue");
		}
		uint paramHash = Hash32(paramName);
		Proxy.SetParam(mDriver.mHandle, paramHash, paramValue);
	}

	public void SetParameter(string paramName, object paramValue)
	{
		if (paramValue == null)
		{
			throw new ArgumentNullException("paramValue");
		}
		uint paramHash = Hash32(paramName);
		uint num = 0u;
		num = Hash32(paramValue.ToString());
		Proxy.SetParam(mDriver.mHandle, paramHash, num);
	}

	public void SetParameter<T>(string paramName, float value)
	{
		uint paramHash = Hash32(paramName);
		uint valueHash = EnumMap.MapToHash32(value, typeof(T));
		Proxy.SetParam(mDriver.mHandle, paramHash, valueHash);
	}

	public uint GetParameter(string paramName)
	{
		uint paramHash = Hash32(paramName);
		return Proxy.GetParam(mDriver.mHandle, paramHash);
	}

	public uint GetParameter(uint paramHash)
	{
		return Proxy.GetParam(mDriver.mHandle, paramHash);
	}

	public bool GetParameterBool(string paramName)
	{
		return GetParameterBool(paramName, bValidate: true);
	}

	public bool GetParameterBool(string paramName, bool bValidate)
	{
		uint paramHash = Hash32(paramName);
		uint param = Proxy.GetParam(mDriver.mHandle, paramHash);
		if (param == 979470758)
		{
			return true;
		}
		return false;
	}

	private string GetParameterString(string paramName)
	{
		uint paramHash = Hash32(paramName);
		return Proxy.GetParamString(mDriver.mHandle, paramHash);
	}

	private string GetParameterString(uint paramHash)
	{
		return Proxy.GetParamString(mDriver.mHandle, paramHash);
	}

	public uint GetNumParameters()
	{
		return Proxy.GetNumParams(mDriver.mHandle);
	}

	public string GetParameterNameByIndex(uint nIndex)
	{
		return Proxy.GetParamNameByIndex(mDriver.mHandle, nIndex);
	}

	public void EnterState(string actorName, string stateName)
	{
		uint actorHash = Hash32(actorName);
		uint stateHash = Hash32(stateName);
		Proxy.EnterState(mDriver.mHandle, actorHash, stateHash);
		CheckForException();
	}

	public void RequestState(string actorName, string stateName)
	{
		RequestState(DefaultYield, actorName, stateName, DefaultRequestFlags, DefaultTimeout, DefaultBridgeClient, DefaultBridgeActorName, DefaultBridgeOrigin);
	}

	public void RequestState(bool yield, string actorName, string stateName)
	{
		RequestState(yield, actorName, stateName, DefaultRequestFlags, DefaultTimeout, DefaultBridgeClient, DefaultBridgeActorName, DefaultBridgeOrigin);
	}

	public void RequestState(bool yield, string actorName, string stateName, DriverRequestFlags flags)
	{
		RequestState(yield, actorName, stateName, flags, DefaultTimeout, DefaultBridgeClient, DefaultBridgeActorName, DefaultBridgeOrigin);
	}

	public void RequestState(bool yield, string actorName, string stateName, DriverRequestFlags flags, int timeoutInSimMinutes)
	{
		RequestState(yield, actorName, stateName, flags, timeoutInSimMinutes, DefaultBridgeClient, DefaultBridgeActorName, DefaultBridgeOrigin);
	}

	public void RequestState(bool yield, string actorName, string stateName, DriverRequestFlags flags, int timeoutInSimMinutes, StateMachineClient bridgeClient, string bridgeActorName)
	{
		RequestState(yield, actorName, stateName, flags, timeoutInSimMinutes, bridgeClient, bridgeActorName, DefaultBridgeOrigin);
	}

	public void RequestState(bool yield, string actorName, string stateName, DriverRequestFlags flags, int timeoutInSimMinutes, BridgeOrigin origin)
	{
		RequestState(yield, actorName, stateName, flags, timeoutInSimMinutes, DefaultBridgeClient, DefaultBridgeActorName, origin);
	}

	public void RequestState(bool yield, string actorName, string stateName, DriverRequestFlags flags, int timeoutInSimMinutes, StateMachineClient bridgeClient, string bridgeActorName, BridgeOrigin origin)
	{
		CheckForException();
		if ((flags & DriverRequestFlags.kRequestDoNotWaitForAnimation) == 0)
		{
			flags |= DriverRequestFlags.kRequestEmulateEdith;
		}
		mTimeoutTime = -1f;
		mTimeoutIntervalInTicks = -1f;
		if (timeoutInSimMinutes > 0)
		{
			mTimeoutIntervalInTicks = (float)(60 * timeoutInSimMinutes) / 1.6f;
			UpdateTimeoutTime();
		}
		_ = TraceEvents;
		if (yield)
		{
			Simulator.CheckYieldingContext();
		}
		uint num = ((actorName != null) ? Hash32(actorName) : 0u);
		uint num2 = ((stateName != null) ? Hash32(stateName) : 0u);
		uint bridgeActorHash = ((bridgeActorName != null) ? Hash32(bridgeActorName) : 0u);
		uint bridgeDriverHandle = bridgeClient?.mDriver.mHandle ?? 0;
		if (bridgeClient == null && actorName != null && UseActorBridgeOrigins)
		{
			IHasBridgeOrigin hasBridgeOrigin = null;
			_ = ObjectGuid.InvalidObjectGuid;
			if (mActors.ContainsKey(actorName) && origin == null)
			{
				hasBridgeOrigin = mActors[actorName];
				if (hasBridgeOrigin != null && (origin = hasBridgeOrigin.BridgeOrigin) != null)
				{
					_ = TraceEvents;
					hasBridgeOrigin.BridgeOrigin = null;
				}
			}
		}
		if (origin != null)
		{
			if (origin.ShouldBridgeTo(this))
			{
				_ = TraceEvents;
				flags |= DriverRequestFlags.kRequestWaitOnBridge;
				if (origin.UseInterrupt)
				{
					flags |= DriverRequestFlags.kInterrupt;
				}
			}
			else
			{
				origin.MakeRequest();
				bridgeDriverHandle = 0u;
				bridgeActorHash = 0u;
			}
		}
		bool handleEventsAsynchronously = HandleEventsAsynchronously;
		if (yield || (flags & (DriverRequestFlags.kClearQueue | DriverRequestFlags.kInterrupt)) != 0)
		{
			if (!handleEventsAsynchronously)
			{
				if (Simulator.CurrentTask != ObjectGuid.InvalidObjectGuid)
				{
					string text = "";
					mPendingException = new SacsErrorException("Another thread interrupted this request: " + text);
					AbortRequested = true;
					throw new SacsErrorException(text);
				}
				yield = false;
			}
			else if (yield)
			{
				HandleEventsAsynchronously = false;
			}
		}
		ResultCodes resultCodes = ResultCodes.kGenericFailure;
		try
		{
			flags &= ~DriverRequestFlags.kYield;
			if (yield)
			{
				SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 11u, 0u, EventKeyOperation.kEKOAddPersistent);
				SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 10u, 0u, EventKeyOperation.kEKOAddPersistent);
				SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 1u, 0u, EventKeyOperation.kEKOAddPersistent);
				SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 4u, 0u, EventKeyOperation.kEKOAddPersistent);
				SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 5u, num, EventKeyOperation.kEKOAddPersistent);
				SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 5u, 1109422689u, EventKeyOperation.kEKOAddPersistent);
				SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 3u, 0u, EventKeyOperation.kEKOAddPersistent);
				SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 8u, num2, EventKeyOperation.kEKOAddOneShot);
				SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 9u, 0u, EventKeyOperation.kEKOAddOneShot);
			}
			resultCodes = Proxy.RequestState(yield: false, mDriver.mHandle, num, num2, flags, 0f, 0u, bridgeDriverHandle, bridgeActorHash);
			if (resultCodes < ResultCodes.kSuccess)
			{
				FlushEventQueue();
				if (mPendingException == null)
				{
					mPendingException = new SacsErrorException(resultCodes, actorName, stateName);
				}
			}
			else
			{
				if (origin != null && origin.ShouldBridgeTo(this))
				{
					origin.BridgeTo(this, actorName);
				}
				if (yield)
				{
					bool flag = 0 != (flags & DriverRequestFlags.kRequestEmulateEdith);
					bool flag2 = false;
					bool flag3 = false;
					bool flag4 = num2 == 0;
					if (TraceEvents)
					{
					}
					IEvent evt;
					while (WaitNextEvent(out evt))
					{
						if (evt == null)
						{
							Simulator.Sleep(0u);
							continue;
						}
						if (evt.EventSubType == 1)
						{
							resultCodes = (ResultCodes)evt.EventId;
							break;
						}
						if (evt.EventSubType == 2)
						{
							LogLevel eventId = (LogLevel)evt.EventId;
							eventId.ToString().Substring(1);
						}
						if (evt.EventSubType == 10)
						{
							uint eventId2 = evt.EventId;
							GetNextEvent(wait: false, out evt);
							uint eventId3 = evt.EventId;
							if ((num == 0 || eventId2 == num || eventId2 == 1109422689) && eventId3 != num2)
							{
								mPendingException = new SacsErrorException("Request for " + stateName + " interrupted by another request with a different destination: " + ResourceUtils.UnHash(eventId3));
								AbortRequested = true;
							}
						}
						if (evt.EventSubType == 11)
						{
							uint eventId4 = evt.EventId;
							GetNextEvent(wait: false, out evt);
							uint eventId5 = evt.EventId;
							if (num == 0 || eventId4 == num || eventId4 == 1109422689)
							{
								if (eventId5 == num2)
								{
									flag2 = true;
									flag3 = true;
									SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 5u, num, EventKeyOperation.kEKORemovePersistent);
									SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 5u, 1109422689u, EventKeyOperation.kEKORemovePersistent);
									if (TraceEvents)
									{
										string.Format("Request: Reached destination: " + stateName, new object[0]);
									}
									if (!flag)
									{
										break;
									}
								}
								else
								{
									mPendingException = new SacsErrorException("Durring a request for " + stateName + " the state machine became idle in a state other than the one requested: " + ResourceUtils.UnHash(eventId5));
									AbortRequested = true;
								}
							}
						}
						if (AbortRequested)
						{
							resultCodes = ResultCodes.kInterrupted;
							break;
						}
						if (evt.EventSubType == 4)
						{
							_ = evt.EventId;
							GetNextEvent(wait: false, out evt);
							_ = evt.EventId;
							if (mTimeoutTime > 0f && (float)Simulator.TicksElapsed() > mTimeoutTime)
							{
								resultCodes = ResultCodes.kTimeout;
								break;
							}
						}
						if (!flag4 && evt.EventSubType == 3 && evt.EventId == num2)
						{
							flag2 = true;
							if (TraceEvents)
							{
								string.Format("Request: Reached destination: " + stateName, new object[0]);
							}
							if (!flag)
							{
								break;
							}
						}
						if (flag && evt.EventSubType == 5)
						{
							flag3 = flag2;
							if (flag3)
							{
								SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 5u, num, EventKeyOperation.kEKORemovePersistent);
								SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 5u, 1109422689u, EventKeyOperation.kEKORemovePersistent);
							}
							UpdateTimeoutTime();
						}
						if (evt.EventSubType == 8 && evt.EventId == num2)
						{
							flag4 = true;
							SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 5u, num, EventKeyOperation.kEKORemovePersistent);
							SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 5u, 1109422689u, EventKeyOperation.kEKORemovePersistent);
							if (TraceEvents)
							{
								string.Format("Request: Processing as one shot: " + stateName, new object[0]);
							}
						}
						if (flag4 && evt.EventSubType == 9)
						{
							num2 = evt.EventId;
							SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 5u, num, EventKeyOperation.kEKOAddPersistent);
							SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 5u, 1109422689u, EventKeyOperation.kEKOAddPersistent);
							flag4 = false;
							if (TraceEvents)
							{
								string.Format("Request: Returning from one shot: " + stateName, new object[0]);
							}
						}
						if (!flag || !flag2 || !flag3)
						{
							continue;
						}
						break;
					}
				}
			}
		}
		catch (ResetException)
		{
			throw;
		}
		catch (Exception)
		{
			HandleEventsAsynchronously = handleEventsAsynchronously;
			throw;
		}
		finally
		{
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 11u, 0u, EventKeyOperation.kEKORemovePersistent);
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 10u, 0u, EventKeyOperation.kEKORemovePersistent);
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 1u, 0u, EventKeyOperation.kEKORemovePersistent);
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 4u, 0u, EventKeyOperation.kEKORemovePersistent);
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 5u, 0u, EventKeyOperation.kEKORemovePersistent);
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 5u, num, EventKeyOperation.kEKORemovePersistent);
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 5u, 1109422689u, EventKeyOperation.kEKORemovePersistent);
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 3u, 0u, EventKeyOperation.kEKORemovePersistent);
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 8u, num2, EventKeyOperation.kEKORemoveOneShot);
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 9u, 0u, EventKeyOperation.kEKORemoveOneShot);
		}
		HandleEventsAsynchronously = handleEventsAsynchronously;
		CheckForException();
		if (resultCodes == ResultCodes.kProxyInvalid && !Objects.IsValid(mScriptHandle))
		{
			resultCodes = ResultCodes.kSuccess;
		}
		switch (resultCodes)
		{
		case ResultCodes.kSuccess:
			break;
		case ResultCodes.kTimeout:
			throw new SacsTimeoutException(actorName, stateName);
		case ResultCodes.kInterrupted:
			throw new SacsAbortException(actorName, stateName);
		default:
			throw new SacsErrorException(resultCodes, actorName, stateName);
		}
	}

	private void UpdateTimeoutTime()
	{
		if (mTimeoutIntervalInTicks > 0f)
		{
			mTimeoutTime = (float)Simulator.TicksElapsed() + mTimeoutIntervalInTicks;
		}
		else
		{
			mTimeoutTime = -1f;
		}
	}

	[Conditional("EA_DEBUG")]
	private void LogSacsEventMessage(IEvent evt)
	{
	}

	[Conditional("EA_DEBUG")]
	private void LogSacsEventMessage(string actorName, string stateName, IEvent evt)
	{
		IScriptLogic arg = Simulator.GetProxy(mScriptHandle)?.Target;
		IScriptProxy scriptProxy = null;
		LogLevel eventId = (LogLevel)evt.EventId;
		if (EATrace.ShouldLog(eventId, "SACS/Relay"))
		{
			_ = $"<{arg}:{Name}> {evt.EventMessage}";
		}
		eventId.ToString().Substring(1);
	}

	public void Reset()
	{
		Reset(0u, 0u);
	}

	private void Reset(uint bridgeDriverHandle, uint bridgeActorHash)
	{
		Proxy.RequestState(yield: false, mDriver.mHandle, 0u, 1713986504u, DriverRequestFlags.kNone, 0f, 0u, bridgeDriverHandle, bridgeActorHash);
	}

	public void Return(string actorName)
	{
		RequestState(actorName, null);
	}

	public void Return(bool yield, string actorName, DriverRequestFlags flags, int timeoutInSimMinutes)
	{
		RequestState(yield, actorName, null, flags, timeoutInSimMinutes);
	}

	public bool CanPause(string actorName)
	{
		uint actorHash = ((actorName != null) ? Hash32(actorName) : 0u);
		return SacsProxy.Instance.CanPause(mDriver.mHandle, actorHash);
	}

	public bool Pause(string actorName)
	{
		uint actorHash = ((actorName != null) ? Hash32(actorName) : 0u);
		return SacsProxy.Instance.Pause(mDriver.mHandle, actorHash);
	}

	public void Continue(string actorName)
	{
		uint actorHash = ((actorName != null) ? Hash32(actorName) : 0u);
		SacsProxy.Instance.Continue(mDriver.mHandle, actorHash);
	}

	[Conditional("SACS_LOG_ENABLED")]
	private void LogActorMessage(string actorName, string stateName, string output, string subStateName)
	{
		if (mActors.Count > 0 && actorName != null && mActors.TryGetValue(actorName, out var _) && mActors[actorName] is ISacsAware sacsAware)
		{
			sacsAware.LogDebugOutput(actorName, stateName, output, subStateName, Name);
		}
	}

	[Conditional("SACS_LOG_ENABLED")]
	private void LogEventMessage(string actorName, string stateName, uint eventSubType, string subStateName)
	{
		switch ((SacsEventSubTypes)eventSubType)
		{
		}
	}

	[Conditional("SACS_LOG_ENABLED")]
	public void LogSetParameter(string paramName, object paramValue)
	{
		if (mActors.Count <= 0)
		{
			return;
		}
		foreach (IHasBridgeOrigin value in mActors.Values)
		{
			if (value is ISacsAware sacsAware)
			{
				sacsAware.LogDebugOutput("", (paramValue == null) ? "null" : paramValue.ToString(), "Parameter Set", paramName, Name);
			}
		}
	}

	public void AddEventHandler(uint type, uint subtype, uint id, SacsEventHandler handler, bool oneShot)
	{
		AddEventHandler(ref mEventHandlers, type, subtype, id, handler, oneShot);
	}

	public void AddSynchronousEventHandler(uint type, uint subtype, uint id, SacsEventHandler handler, bool oneShot)
	{
		EnableSynchronousEventSupport = true;
		AddEventHandler(ref mSynchronousEventHandlers, type, subtype, id, handler, oneShot);
	}

	private void AddEventHandler(ref List<HandlerRecord> recordList, uint type, uint subtype, uint id, SacsEventHandler handler, bool oneShot)
	{
		if (recordList == null)
		{
			recordList = new List<HandlerRecord>(10);
		}
		if (handler == null)
		{
			throw new ArgumentNullException("handler");
		}
		HandlerKey handlerKey = new HandlerKey
		{
			type = type,
			subtype = subtype,
			id = id
		};
		bool flag = true;
		for (int i = 0; i < recordList.Count; i++)
		{
			HandlerRecord handlerRecord = recordList[i];
			if (handlerRecord.key.Equals(handlerKey) && handlerRecord.handler == handler)
			{
				flag = false;
				break;
			}
		}
		if (flag)
		{
			HandlerRecord item = new HandlerRecord
			{
				key = handlerKey,
				handler = handler,
				oneShot = oneShot
			};
			recordList.Add(item);
			EventKeyOperation operation = ((!oneShot) ? EventKeyOperation.kEKOAddPersistent : EventKeyOperation.kEKOAddOneShot);
			if (mDriver.mHandle != 0)
			{
				SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, handlerKey.type, handlerKey.subtype, handlerKey.id, operation);
			}
		}
	}

	public bool HasEventHandler(SacsEventHandler handler)
	{
		return HasEventHandler(mEventHandlers, handler);
	}

	public bool HasSynchronousEventHandler(SacsEventHandler handler)
	{
		return HasEventHandler(mSynchronousEventHandlers, handler);
	}

	private bool HasEventHandler(List<HandlerRecord> handlers, SacsEventHandler handler)
	{
		if (handlers == null)
		{
			return false;
		}
		for (int i = 0; i < handlers.Count; i++)
		{
			if (handlers[i].handler == handler)
			{
				return true;
			}
		}
		return false;
	}

	public bool RemoveEventHandler(SacsEventHandler handler)
	{
		return RemoveEventHandler(mEventHandlers, handler);
	}

	public bool RemoveSynchronousEventHandler(SacsEventHandler handler)
	{
		return RemoveEventHandler(mSynchronousEventHandlers, handler);
	}

	private bool RemoveEventHandler(List<HandlerRecord> handlers, SacsEventHandler handler)
	{
		if (handlers == null)
		{
			return false;
		}
		bool result = false;
		int num = 0;
		while (num < handlers.Count)
		{
			HandlerRecord record = handlers[num];
			if (record.handler == handler)
			{
				RemoveEventHandlerAt(handlers, num, record);
				result = true;
			}
			else
			{
				num++;
			}
		}
		return result;
	}

	private void RemoveEventHandlerAt(List<HandlerRecord> handlers, int i, HandlerRecord record)
	{
		bool oneShot = record.oneShot;
		HandlerKey key = record.key;
		handlers.RemoveAt(i);
		EventKeyOperation operation = (oneShot ? EventKeyOperation.kEKORemoveOneShot : EventKeyOperation.kEKORemovePersistent);
		if (mDriver.mHandle != 0)
		{
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, key.type, key.subtype, key.id, operation);
		}
	}

	public void RemoveAllEventHandlers()
	{
		if (mEventHandlers != null)
		{
			for (int num = mEventHandlers.Count - 1; num >= 0; num--)
			{
				RemoveEventHandlerAt(mEventHandlers, num, mEventHandlers[num]);
			}
		}
		if (mSynchronousEventHandlers != null)
		{
			for (int num2 = mSynchronousEventHandlers.Count - 1; num2 >= 0; num2--)
			{
				RemoveEventHandlerAt(mSynchronousEventHandlers, num2, mSynchronousEventHandlers[num2]);
			}
		}
	}

	public void AddSacsEventHandler(uint subtype, uint id, SacsEventHandler handler, bool oneShot)
	{
		AddEventHandler(kSacsEventType, subtype, id, handler, oneShot);
	}

	public void AddSynchronousSacsEventHandler(uint subtype, uint id, SacsEventHandler handler, bool oneShot)
	{
		AddSynchronousEventHandler(kSacsEventType, subtype, id, handler, oneShot);
	}

	public void AddPersistentSacsEventHandler(SacsEventSubTypes subtype, SacsEventHandler handler)
	{
		AddPersistentSacsEventHandler((uint)subtype, handler);
	}

	public void AddPersistentSacsEventHandler(SacsEventHandler handler)
	{
		AddPersistentSacsEventHandler(0u, handler);
	}

	public void AddPersistentSacsEventHandler(uint subtype, SacsEventHandler handler)
	{
		AddEventHandler(kSacsEventType, subtype, 0u, handler, oneShot: false);
	}

	public void AddPersistentStateEnteredEventHandler(string stateName, SacsEventHandler sacsEventHandler)
	{
		AddSacsEventHandler(3u, ResourceUtils.HashString32(stateName), sacsEventHandler, oneShot: false);
	}

	public void AddPersistentScriptEventHandler(uint xEventId, SacsEventHandler sacsEventHandler)
	{
		AddSacsEventHandler(6u, xEventId, sacsEventHandler, oneShot: false);
	}

	public void AddOneShotStateEnteredEventHandler(string stateName, SacsEventHandler sacsEventHandler)
	{
		AddSacsEventHandler(3u, ResourceUtils.HashString32(stateName), sacsEventHandler, oneShot: true);
	}

	public void AddOneShotScriptEventHandler(uint xEventId, SacsEventHandler sacsEventHandler)
	{
		AddSacsEventHandler(6u, xEventId, sacsEventHandler, oneShot: true);
	}

	public void AddSynchronousOneShotScriptEventHandler(uint xEventId, SacsEventHandler sacsEventHandler)
	{
		AddSynchronousSacsEventHandler(6u, xEventId, sacsEventHandler, oneShot: true);
	}

	public void AddPersistentSynchronousScriptEventHandler(uint xEventId, SacsEventHandler sacsEventHandler)
	{
		AddSynchronousSacsEventHandler(6u, xEventId, sacsEventHandler, oneShot: false);
	}

	private void FireEventHandlers(IEvent evt)
	{
		if (EventFired != null)
		{
			EventFired(this, evt);
		}
		FireEventHandlers(mEventHandlers, evt);
	}

	private void FireSynchronousEventHandlers(IEvent evt)
	{
		FireEventHandlers(mSynchronousEventHandlers, evt);
	}

	private void FireEventHandlers(List<HandlerRecord> handlers, IEvent evt)
	{
		if (handlers == null)
		{
			return;
		}
		int num = 0;
		while (num < handlers.Count)
		{
			HandlerRecord record = handlers[num];
			if ((record.key.type == 0 || record.key.type == evt.EventType) && (record.key.subtype == 0 || record.key.subtype == evt.EventSubType) && (record.key.id == 0 || record.key.id == evt.EventId))
			{
				if (record.handler == null)
				{
					record.oneShot = true;
				}
				else
				{
					record.handler(this, evt);
				}
				if (record.oneShot)
				{
					RemoveEventHandlerAt(handlers, num, record);
				}
				else
				{
					num++;
				}
			}
			else
			{
				num++;
			}
		}
	}

	public bool GetNextEvent(bool wait, out IEvent evt)
	{
		if (mEventQueue == null)
		{
			evt = null;
			return false;
		}
		bool result = false;
		bool handleEventsAsynchronously = HandleEventsAsynchronously;
		if (wait)
		{
			HandleEventsAsynchronously = false;
		}
		try
		{
			result = mEventQueue.GetNextEvent(wait, out evt);
		}
		finally
		{
			HandleEventsAsynchronously = handleEventsAsynchronously;
		}
		if (evt != null)
		{
			OnEvent(evt, callback: false, synchronous: false);
		}
		return result;
	}

	public bool PollNextEvent(out IEvent evt)
	{
		return GetNextEvent(wait: false, out evt);
	}

	public bool WaitNextEvent(out IEvent evt)
	{
		return GetNextEvent(wait: true, out evt);
	}

	public void FlushEventQueue()
	{
		IEvent evt;
		do
		{
			PollNextEvent(out evt);
		}
		while (evt != null);
	}

	private void OnSynchronousEvent(IEvent evt)
	{
		OnEvent(evt, callback: true, synchronous: true);
	}

	private void OnEvent(IEvent evt)
	{
		OnEvent(evt, callback: true, synchronous: false);
	}

	private void OnEvent(IEvent evt, bool callback, bool synchronous)
	{
		if (TraceEvents)
		{
			string.Format(Name + ":{0:x}:{1}:{2}:{3}", new object[4]
			{
				evt.EventType,
				Enum.GetName(typeof(SacsEventSubTypes), evt.EventSubType),
				ResourceUtils.UnHash(evt.EventId),
				evt.EventMessage
			});
		}
		if (evt.EventSubType == 2 && evt.EventId >= 150)
		{
			Exception ex = new SacsErrorException(evt.EventMessage, mPendingException);
			mPendingException = null;
			if (!callback)
			{
				throw ex;
			}
			mPendingException = ex;
		}
		if (synchronous)
		{
			FireSynchronousEventHandlers(evt);
		}
		else
		{
			FireEventHandlers(evt);
		}
	}

	~StateMachineClient()
	{
		if (!FinalizerTask.DelayFinalization(this))
		{
			Dispose(bFromDtor: true);
		}
	}

	public void Dispose()
	{
		Dispose(bFromDtor: false);
	}

	private void Dispose(bool bFromDtor)
	{
		if (mDriver.mHandle != 0)
		{
			Proxy.ReleaseDriver(mDriver.mHandle);
			mDriver.mHandle = 0u;
		}
		HandleEventsAsynchronously = false;
		if (mEventQueue != null)
		{
			mEventQueue.Dispose();
			mEventQueue = null;
		}
		if (!bFromDtor)
		{
			mActors.Clear();
			mActorNames.Clear();
			if (mEventHandlers != null)
			{
				mEventHandlers.Clear();
			}
			if (mSynchronousEventHandlers != null)
			{
				mSynchronousEventHandlers.Clear();
			}
			mVirtualAddRefs.Clear();
			GC.SuppressFinalize(this);
		}
	}

	public static void PostWorldLoadFixup()
	{
		if (sStateMachineClientsForVFXFixUp == null)
		{
			return;
		}
		foreach (StateMachineClient item in sStateMachineClientsForVFXFixUp)
		{
			item.VFXFixup();
		}
		sStateMachineClientsForVFXFixUp = null;
	}

	private void VFXFixup()
	{
		List<string> list = new List<string>();
		list.AddRange(mVirtualAddRefs.Keys);
		foreach (string item in list)
		{
			object obj = mVirtualAddRefs[item];
			if (obj is VisualEffect effect)
			{
				SetEffectActor(item, effect);
			}
		}
	}

	public void PersistPostLoad()
	{
		if (mEventQueue != null)
		{
			SacsProxy.Instance.SetEventQueue(mDriver.mHandle, mEventQueue.Handle);
		}
		bool handleEventsAsynchronously = HandleEventsAsynchronously;
		mHandleEventsAsynchronously = false;
		HandleEventsAsynchronously = handleEventsAsynchronously;
		bool enableSynchronousEventSupport = EnableSynchronousEventSupport;
		mEnableSynchronousEventSupport = false;
		EnableSynchronousEventSupport = enableSynchronousEventSupport;
		SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 2u, 0u, EventKeyOperation.kEKOAddPersistent);
		if (!handleEventsAsynchronously)
		{
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 11u, 0u, EventKeyOperation.kEKOAddPersistent);
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 10u, 0u, EventKeyOperation.kEKOAddPersistent);
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 1u, 0u, EventKeyOperation.kEKOAddPersistent);
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 4u, 0u, EventKeyOperation.kEKOAddPersistent);
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 5u, 0u, EventKeyOperation.kEKOAddPersistent);
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 3u, 0u, EventKeyOperation.kEKOAddPersistent);
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 8u, 0u, EventKeyOperation.kEKOAddOneShot);
			SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, 0u, 9u, 0u, EventKeyOperation.kEKOAddOneShot);
		}
		if (mEventHandlers != null)
		{
			for (int i = 0; i < mEventHandlers.Count; i++)
			{
				HandlerRecord handlerRecord = mEventHandlers[i];
				HandlerKey key = handlerRecord.key;
				EventKeyOperation operation = ((!handlerRecord.oneShot) ? EventKeyOperation.kEKOAddPersistent : EventKeyOperation.kEKOAddOneShot);
				SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, key.type, key.subtype, key.id, operation);
			}
		}
		if (mSynchronousEventHandlers != null)
		{
			for (int j = 0; j < mSynchronousEventHandlers.Count; j++)
			{
				HandlerRecord handlerRecord2 = mSynchronousEventHandlers[j];
				HandlerKey key2 = handlerRecord2.key;
				EventKeyOperation operation2 = ((!handlerRecord2.oneShot) ? EventKeyOperation.kEKOAddPersistent : EventKeyOperation.kEKOAddOneShot);
				SacsProxy.Instance.UpdateEventFilter(mDriver.mHandle, key2.type, key2.subtype, key2.id, operation2);
			}
		}
		if (sStateMachineClientsForVFXFixUp == null)
		{
			sStateMachineClientsForVFXFixUp = new List<StateMachineClient>();
		}
		sStateMachineClientsForVFXFixUp.Add(this);
		UpdateTimeoutTime();
	}
}
