using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

[Persistable]
public class VisualEffect : Sims3.SimIFace.VisualEffect, IPersistPreSave, IPersistPostLoad
{
	private ulong mHandle;

	private ulong mPickOverrideId;

	private string mEffectName;

	private bool mbStarted;

	private bool mbConnectToBone;

	private ObjectGuid mParentId = ObjectGuid.InvalidObjectGuid;

	private Slot mParentSlotOrBoneName;

	private Vector3 mPos;

	private Vector3 mFwd;

	private Vector3 mUp;

	private bool mDisposed;

	private bool mbAutoDestroy;

	private ObjectGuid mTargetId = ObjectGuid.InvalidObjectGuid;

	private Slot mTargetSlotOrBoneName;

	private Vector3 mTargetPos;

	private bool mbTargetIsBone;

	public override ObjectGuid ObjectId => new ObjectGuid(mHandle);

	public override string EffectName => mEffectName;

	[DllImport("Sims3Common.dll")]
	private static extern ulong Swarm_CreateVisualEffect([MarshalAs(UnmanagedType.LPWStr)] string effectName);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Swarm_StartVisualEffect(ulong effectHandle, int transitionType, bool bNotifyOnFinish);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Swarm_StopVisualEffect(ulong effectHandle, int transitionType);

	[DllImport("Sims3Common.dll")]
	private static extern void Swarm_SetPosAndOrient(ulong effectHandle, Vector3 pos, Vector3 fwd, Vector3 up);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Swarm_SetEffectColor(ulong effectHandle, Vector3 color);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Swarm_SetEffectColorScale(ulong effectHandle, Vector3 color);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Swarm_SetEffectModelOverride(ulong effectHandle, int model, int modelSet);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Swarm_SetEffectTextureOverride(ulong effectHandle, ulong textureHash, int textureSet, uint groupId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Swarm_SetEffectDoubleTextureOverride(ulong effectHandle, ulong texture1Hash, int texture1Override, uint groupId1, ulong texture2Hash, int texture2Override, uint groupId2);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Swarm_SetEffectThumbnailTextureOverride(ulong effectHandle, ResourceKey key, ulong templateObjectId, int index, int size, uint geoState, uint matState, int textureSet);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Swarm_SetEffectHeadlineTextureOverride(ulong effectHandle, [MarshalAs(UnmanagedType.LPWStr)] string str);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Swarm_SetEffectLifeScale(ulong effectHandle, float scale);

	[DllImport("Sims3Common.dll")]
	private static extern void Swarm_SetAutoDestroy(ulong effectHandle, bool destroy);

	[DllImport("Sims3Common.dll")]
	private static extern void Swarm_SetNeverHide(ulong effectHandle, bool neverHide);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Swarm_SetIntParams(ulong effectHandle, int paramType, [MarshalAs(UnmanagedType.SafeArray)] int[] vars);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Swarm_SetFloatParams(ulong effectHandle, int paramType, [MarshalAs(UnmanagedType.SafeArray)] float[] vars);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Swarm_HasEffectStarted(ulong effectHandle);

	[DllImport("Sims3Common")]
	private static extern void Swarm_RegisterCallbackMethod(uint swarmEvent, [MarshalAs(UnmanagedType.LPWStr)] string typeName, [MarshalAs(UnmanagedType.LPWStr)] string methodName);

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Swarm_SetTargetObjectAndSlotOrBone(ulong effectHandle, ulong targetObjectId, uint boneOrSlotHash, Vector3 trans, bool bIsBone);

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Swarm_SetPickOverriderId(ulong effectHandle, ulong pickId);

	public VisualEffect(string effectName)
	{
		mHandle = Swarm_CreateVisualEffect(effectName);
		mEffectName = effectName;
		mPos = Vector3.Zero;
		mFwd = Vector3.UnitZ;
		mUp = Vector3.UnitY;
		mTargetPos = Vector3.Zero;
	}

	public VisualEffect()
	{
	}

	~VisualEffect()
	{
		if (!FinalizerTask.DelayFinalization(this))
		{
			DisposeInternal(fromDtor: true);
		}
	}

	public override void Dispose()
	{
		DisposeInternal(fromDtor: false);
		GC.SuppressFinalize(this);
	}

	private void DisposeInternal(bool fromDtor)
	{
		if (!mDisposed)
		{
			if (!mbAutoDestroy)
			{
				Stop(TransitionType.HardTransition);
			}
			Sims3.SimIFace.Simulator.DestroyObject(ObjectId);
			mDisposed = true;
		}
	}

	public override bool Start()
	{
		return Start(TransitionType.SoftTransition, bNotifyOnFinish: false);
	}

	public override bool Stop()
	{
		return Stop(TransitionType.SoftTransition);
	}

	public override bool Start(TransitionType transitionType)
	{
		return Start(transitionType, bNotifyOnFinish: false);
	}

	public override bool Start(TransitionType transitionType, bool bNotifyOnFinish)
	{
		return Swarm_StartVisualEffect(mHandle, (int)transitionType, bNotifyOnFinish);
	}

	public override bool Stop(TransitionType transitionType)
	{
		return Swarm_StopVisualEffect(mHandle, (int)transitionType);
	}

	public override void SetPosAndOrient(Vector3 pos, Vector3 fwd, Vector3 up)
	{
		mPos = pos;
		mFwd = fwd;
		mUp = up;
		Swarm_SetPosAndOrient(mHandle, pos, fwd, up);
	}

	public override bool ParentTo(IHasScriptProxy objectWithSlot, Slot slotOrBoneName)
	{
		Vector3 trans = Vector3.Zero;
		return ParentTo(objectWithSlot, slotOrBoneName, ref trans);
	}

	public override bool ParentTo(IHasScriptProxy objectWithSlot, Slot slotOrBoneName, ref Vector3 trans)
	{
		if (objectWithSlot != null && objectWithSlot.Proxy != null)
		{
			return ParentTo(objectWithSlot.Proxy.ObjectId, slotOrBoneName, ref trans);
		}
		return false;
	}

	public override void SetUseBoneParenting(bool connectToBone)
	{
		mbConnectToBone = connectToBone;
	}

	private bool ParentTo(ObjectGuid objectId, Slot slotOrBoneName, ref Vector3 trans)
	{
		if (objectId != ObjectGuid.InvalidObjectGuid)
		{
			mParentId = objectId;
			mParentSlotOrBoneName = slotOrBoneName;
			mPos = trans;
			Vector3 axis = Vector3.Zero;
			if (mbConnectToBone)
			{
				return Sims3.SimIFace.Slots.IsSuccess(Sims3.SimIFace.Slots.AttachToBone(ObjectId, objectId, (uint)slotOrBoneName, occupySlot: false, ref trans, ref axis, 0f));
			}
			return Sims3.SimIFace.Slots.IsSuccess(Sims3.SimIFace.Slots.AttachToSlot(ObjectId, objectId, (uint)slotOrBoneName, occupySlot: false, ref trans, ref axis, 0f));
		}
		return false;
	}

	public override bool SetTargetObjectAndSlotOrBone(IHasScriptProxy objectWithSlot, Slot slotOrBoneName, bool bIsBone)
	{
		return SetTargetObjectAndSlotOrBone(objectWithSlot, slotOrBoneName, Vector3.Zero, bIsBone);
	}

	public override bool SetPickOverriderId(ObjectGuid pickId)
	{
		mPickOverrideId = pickId.Value;
		return Swarm_SetPickOverriderId(mHandle, mPickOverrideId);
	}

	public override bool SetTargetObjectAndSlotOrBone(IHasScriptProxy objectWithSlot, Slot slotOrBoneName, Vector3 trans, bool bIsBone)
	{
		if (objectWithSlot != null && objectWithSlot.Proxy != null)
		{
			ObjectGuid objectId = objectWithSlot.Proxy.ObjectId;
			if (objectId != ObjectGuid.InvalidObjectGuid)
			{
				mTargetId = objectId;
				mTargetSlotOrBoneName = slotOrBoneName;
				mTargetPos = trans;
				mbTargetIsBone = bIsBone;
				return Swarm_SetTargetObjectAndSlotOrBone(mHandle, objectId.Value, (uint)slotOrBoneName, trans, bIsBone);
			}
		}
		return false;
	}

	public override bool SetEffectColorScale(Vector3 colorRgbScale)
	{
		return Swarm_SetEffectColorScale(mHandle, colorRgbScale);
	}

	public override bool SetEffectColorScale(float rScale, float gScale, float bScale)
	{
		return SetEffectColorScale(new Vector3(rScale, gScale, bScale));
	}

	public override bool SetEffectModelOverride(int model, int modelSet)
	{
		return Swarm_SetEffectModelOverride(mHandle, model, modelSet);
	}

	public override bool SetEffectTextureOverride(ulong textureHash, int textureSet, uint groupId)
	{
		return Swarm_SetEffectTextureOverride(mHandle, textureHash, textureSet, groupId);
	}

	public override bool SetEffectDoubleTextureOverride(ulong texture1Hash, int texture1Override, uint groupId1, ulong texture2Hash, int texture2Override, uint groupId2)
	{
		return Swarm_SetEffectDoubleTextureOverride(mHandle, texture1Hash, texture1Override, groupId1, texture2Hash, texture2Override, groupId2);
	}

	public override bool SetEffectThumbnailTextureOverride(ThumbnailKey key, int textureOverride)
	{
		return Swarm_SetEffectThumbnailTextureOverride(mHandle, key.mDescKey, key.mTemplateObjectId.Value, key.mIndex, (int)key.mSize, key.mGeometryState, key.mMaterialState, textureOverride);
	}

	public override bool SetEffectHeadlineTextureOverride(string str)
	{
		return Swarm_SetEffectHeadlineTextureOverride(mHandle, str);
	}

	public override bool SetEffectLifeScale(float scale)
	{
		return Swarm_SetEffectLifeScale(mHandle, scale);
	}

	public override void SetAutoDestroy(bool destroy)
	{
		mbAutoDestroy = destroy;
		Swarm_SetAutoDestroy(mHandle, destroy);
	}

	public override void SetNeverHide(bool neverHide)
	{
		Swarm_SetNeverHide(mHandle, neverHide);
	}

	public override bool SetFloatParams(int paramType, float[] vars)
	{
		return Swarm_SetFloatParams(mHandle, paramType, vars);
	}

	public override bool SetIntParams(int paramType, int[] vars)
	{
		return Swarm_SetIntParams(mHandle, paramType, vars);
	}

	public override bool HasEffectStarted()
	{
		return Swarm_HasEffectStarted(mHandle);
	}

	public void PersistPreSave()
	{
		mbStarted = Swarm_HasEffectStarted(mHandle);
		mParentId = Sims3.SimIFace.Slots.GetParentId(ObjectId);
		mParentSlotOrBoneName = Sims3.SimIFace.Slots.GetParentSlot(ObjectId, ref mbConnectToBone);
	}

	public void PersistPostLoad()
	{
		mHandle = Swarm_CreateVisualEffect(mEffectName);
		SetPosAndOrient(mPos, mFwd, mUp);
		if (mParentId != ObjectGuid.InvalidObjectGuid)
		{
			ParentTo(mParentId, mParentSlotOrBoneName, ref mPos);
		}
		if (mTargetId != ObjectGuid.InvalidObjectGuid)
		{
			Swarm_SetTargetObjectAndSlotOrBone(mHandle, mTargetId.Value, (uint)mTargetSlotOrBoneName, mTargetPos, mbTargetIsBone);
		}
		if (mPickOverrideId != 0)
		{
			Swarm_SetPickOverriderId(mHandle, mPickOverrideId);
		}
		if (mbStarted)
		{
			Start();
		}
	}

	protected override void RegisterCallbackMethod(SwarmEvent swarmEvent, string typeName, string methodName)
	{
		Swarm_RegisterCallbackMethod((uint)swarmEvent, typeName, methodName);
	}
}
