using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

[Persistable]
public class EventQueue : IEventQueue, IDisposable
{
	private delegate void OnNativeEventDelegate(uint type, uint subType, uint id, string message);

	[Persistable(false)]
	private EventQueueHandle mHandle;

	[Persistable(false)]
	private OnNativeEventDelegate mOnNativeEvent;

	[Persistable(false)]
	private OnEventDelegate mOnEvent;

	[Persistable(false)]
	private OnEventDelegate mPermissiveOnEvent;

	private Queue<Event> mEvents = new Queue<Event>();

	private ObjectGuid mSleepingTask = ObjectGuid.InvalidObjectGuid;

	public uint Handle => mHandle.Value;

	public OnEventDelegate OnEvent
	{
		set
		{
			mOnEvent = value;
			if (mOnEvent != null)
			{
				while (mEvents.Count > 0)
				{
					IEvent evt = mEvents.Dequeue();
					mOnEvent(evt);
				}
			}
		}
	}

	public OnEventDelegate PermissiveOnEvent
	{
		set
		{
			mPermissiveOnEvent = value;
		}
	}

	[DllImport("Sims3Common.dll")]
	private static extern uint EventQueue_CreateEventQueueImpl([MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	internal static extern void EventQueue_ReleaseEventQueueImpl(uint eventQueueHandle);

	private static Event CreateEvent(uint type, uint subType, uint id, string message)
	{
		return new Event(type, subType, id, message);
	}

	private void OnNativeEvent(uint type, uint subType, uint id, string message)
	{
		Event obj = CreateEvent(type, subType, id, message);
		if (mPermissiveOnEvent != null)
		{
			mPermissiveOnEvent(obj);
		}
		if (mOnEvent != null)
		{
			mOnEvent(obj);
			return;
		}
		mEvents.Enqueue(obj);
		if (mSleepingTask != ObjectGuid.InvalidObjectGuid)
		{
			Sims3.SimIFace.Simulator.Wake(mSleepingTask, assertIfNotSleeping: false);
		}
	}

	public EventQueue()
	{
		mOnNativeEvent = OnNativeEvent;
		mHandle = new EventQueueHandle(EventQueue_CreateEventQueueImpl(mOnNativeEvent));
	}

	~EventQueue()
	{
		Dispose(bFromDtor: true);
	}

	public void Dispose()
	{
		Dispose(bFromDtor: false);
	}

	private void Dispose(bool bFromDtor)
	{
		if (mSleepingTask != ObjectGuid.InvalidObjectGuid)
		{
			Sims3.SimIFace.Simulator.GetProxy(mSleepingTask)?.SetObjectToReset();
			mSleepingTask = ObjectGuid.InvalidObjectGuid;
		}
		if (mHandle != null)
		{
			mHandle.Dispose();
			mHandle = null;
		}
		if (!bFromDtor)
		{
			GC.SuppressFinalize(this);
		}
	}

	public bool GetNextEvent(bool waitForEvent, out IEvent evt)
	{
		if (mEvents.Count > 0)
		{
			evt = mEvents.Dequeue();
			return true;
		}
		if (waitForEvent)
		{
			if (mSleepingTask != ObjectGuid.InvalidObjectGuid)
			{
				evt = null;
				return false;
			}
			mSleepingTask = Sims3.SimIFace.Simulator.CurrentTask;
			try
			{
				Sims3.SimIFace.Simulator.Sleep(uint.MaxValue);
			}
			finally
			{
				mSleepingTask = ObjectGuid.InvalidObjectGuid;
			}
			return GetNextEvent(waitForEvent: false, out evt);
		}
		evt = null;
		return true;
	}
}
