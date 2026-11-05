/* Original PC1.67 selected managed members, actual ILSpy11.1 output.
   Omitted siblings are outside this selection. Repeated usings, selected getter body fragments
   and constructor base..ctor() text are tool renderings, not a compilable replacement class.
   Complete typed original CIL is paired in GameObject.il.txt; the canonical managed README owns assembly provenance. */

/* Analyst: exact original nested GameObject.FlagField context, TypeDef0x020000E5. Paired original declaration has System.Enum base and uint16 value__. */
[Flags]
public enum FlagField : ushort
{
	WasHarvested = 1,
	Charred = 2,
	InWorld = 4,
	IsUsed = 8,
	InInventory = 0x10,
	Smashed = 0x20,
	OwnedBySpawner = 0x40,
	IsStolen = 0x80,
	MovingToOtherLot = 0x100,
	HiddenFlagsFootprint = 0x200,
	HiddenFlagsModel = 0x400,
	DoesNotStack = 0x800,
	Scratched = 0x1000,
	HiddenFlagsDarkLot = 0x2000,
	JustPurchased = 0x4000
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.GameObject::AddToRoutingReferenceList, MethodDef 0x060008f3, RVA0x00028BCC, 34 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Allocates the routing-reference list only on null, then appends the supplied Sim. It does not clear an existing list. */
using System.Collections.Generic;
using Sims3.Gameplay.Actors;

public void AddToRoutingReferenceList(Sim actor)
{
	if (mRoutingReferenceList == null)
	{
		mRoutingReferenceList = new List<Sim>();
	}
	mRoutingReferenceList.Add(actor);
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.GameObject::get_RoutingReferenceList, MethodDef 0x060008f5, RVA0x00028C06, 7 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Complete selected original accessor/body. Its field references and control flow are governed by the paired original CIL; broader original consumers are outside this selection. */
{
	return mRoutingReferenceList;
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.GameObject::get_Interactions, MethodDef 0x06000901, RVA0x00028CE8, 26 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Lazy allocation is original managed ownership. This selected getter may be rendered as a body by ILSpy; the complete typed paired CIL supplies its exact declaration. */
using System.Collections.Generic;
using Sims3.Gameplay.Autonomy;

{
	if (mInteractions == null)
	{
		mInteractions = new List<InteractionObjectPair>();
	}
	return mInteractions;
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.GameObject::get_Level, MethodDef 0x0600090e, RVA0x00028E58, 7 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Complete selected original accessor/body. Its field references and control flow are governed by the paired original CIL; broader original consumers are outside this selection. */
{
	return mLevel;
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.GameObject::get_StaleRoomId, MethodDef 0x0600090f, RVA0x00028E60, 7 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Complete selected original accessor/body. Its field references and control flow are governed by the paired original CIL; broader original consumers are outside this selection. */
{
	return mRoomId;
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.GameObject::get_RoomId, MethodDef 0x06000910, RVA0x00028E68, 7 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Complete selected original accessor/body. Its field references and control flow are governed by the paired original CIL; broader original consumers are outside this selection. */
{
	return mRoomId;
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.GameObject::get_InUse, MethodDef 0x06000917, RVA0x00028F10, 63 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Walks Parent links first and can return true for a Sim ancestor before inspecting mActorsUsingMe.Count. No whole native Parent producer is inferred. */
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Interfaces;

{
	for (IGameObject parent = Parent; parent != null; parent = parent.Parent)
	{
		if (parent is Sim)
		{
			return true;
		}
		if (parent.ObjectId == ObjectId)
		{
			break;
		}
	}
	return mActorsUsingMe.Count > 0;
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.GameObject::get_UseCount, MethodDef 0x0600091d, RVA0x0002901C, 12 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Complete selected original accessor/body. Its field references and control flow are governed by the paired original CIL; broader original consumers are outside this selection. */
{
	return mActorsUsingMe.Count;
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.GameObject::.ctor, MethodDef 0x0600097f, RVA0x0002A15C, 105 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Field initializers execute in this complete constructor CIL before the base constructor call: level INT_MAX, room -1, two real Sim lists and flags12. This is an actual ILSpy selected-constructor rendering; base..ctor() is its rendering, not handwritten replacement code. */
using System.Collections.Generic;
using Sims3.Gameplay.Actors;

public GameObject()
{
	mLevel = int.MaxValue;
	mRoomId = -1;
	mIntPrice = -1;
	mMinValueModifier = 1;
	mPurchasedPrice = -1;
	mReferenceList = new List<Sim>();
	mActorsUsingMe = new List<Sim>();
	mFlags = FlagField.InWorld | FlagField.IsUsed;
	kMaxDeviationFromCircle = 2f;
	base..ctor();
	TypeCompareDelegate = IsThisObjectOfSameType;
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.GameObject::InternalOnSetLevel, MethodDef 0x06000a41, RVA0x0002DADE, 8 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Stores the supplied level only. This virtual original hook is distinct from a host reflection field write. */
public virtual void InternalOnSetLevel(int level)
{
	mLevel = level;
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.GameObject::InternalOnSetRoomAndLevel, MethodDef 0x06000a42, RVA0x0002DAE8, 80 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Captures original LotCurrent and calls virtual InternalOnSetLevel first. Changed lot/room can update look-at ownership, store room, call virtual RoomChanged and update the commodity map. */
using Sims3.Gameplay.Core;

public virtual void InternalOnSetRoomAndLevel(int roomId, int level, int previousRoomId, Lot previousLot)
{
	Lot lotCurrent = LotCurrent;
	InternalOnSetLevel(level);
	if (previousLot != lotCurrent || previousRoomId != roomId)
	{
		if (CanBeLookedAt)
		{
			previousLot?.RemoveRoomLookAt(this, previousRoomId);
			lotCurrent?.AddRoomLookAt(this, roomId);
		}
		mRoomId = roomId;
		RoomChanged(roomId, previousRoomId, previousLot);
		UpdateCommodityInteractionMap();
	}
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.GameObject::Init, MethodDef 0x06000a57, RVA0x0002DDC8, 348 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   mbInited is tested before all other initialization. The true path returns GetScriptExecuteType. The false path stores true first, then original product/hooks/lot/startup/component/owner-lot work in CIL order; this body contains no local flag rollback. */
using Sims3.Gameplay.Core;
using Sims3.SimIFace;

public sealed override ScriptExecuteType Init(bool postLoad)
{
	if (mbInited)
	{
		return GetScriptExecuteType();
	}
	mbInited = true;
	base.Init(postLoad);
	mProduct = UserToolUtils.GetProduct(UserToolUtils.BuildBuyProductType.Object, GetResourceKey());
	if (mProduct != null)
	{
		mbProductInited = true;
	}
	while (mActorsUsingMe.Remove(null))
	{
	}
	if (postLoad)
	{
		if (mRoutingReferenceList != null)
		{
			int num = 0;
			while (num < mRoutingReferenceList.Count)
			{
				if (mRoutingReferenceList[num] == null || !Sims3.SimIFace.Objects.IsValid(mRoutingReferenceList[num].ObjectId))
				{
					mRoutingReferenceList.RemoveAt(num);
				}
				else
				{
					num++;
				}
			}
		}
		OnLoad();
	}
	else
	{
		OnCreation();
	}
	if (AddToLot())
	{
		LotManager.PlaceObjectOnLot(this, Proxy.ObjectId);
	}
	OnStartup();
	if (mObjComponents != null)
	{
		int num2 = 0;
		while (num2 < mObjComponents.Count)
		{
			ObjectComponent objectComponent = mObjComponents[num2];
			if (objectComponent != null)
			{
				if (postLoad)
				{
					objectComponent.OnLoad();
				}
				objectComponent.OnStartup();
				num2++;
			}
			else
			{
				mObjComponents.RemoveAt(num2);
			}
		}
		if (mObjComponents.Count == 0)
		{
			mObjComponents = null;
		}
	}
	if (!postLoad && LotManager.sIsBuildBuyModeOn)
	{
		SetOwnerLot(LotManager.ActiveLot);
	}
	UpdateOwnerLot(LotCurrent);
	return GetScriptExecuteType();
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.GameObject::AddToLot, MethodDef 0x06000a58, RVA0x0002DF30, 2 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Complete selected original accessor/body. Its field references and control flow are governed by the paired original CIL; broader original consumers are outside this selection. */
public virtual bool AddToLot()
{
	return true;
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.GameObject::get_ReferenceList, MethodDef 0x06000a94, RVA0x0002E7F1, 7 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Complete selected original accessor/body. Its field references and control flow are governed by the paired original CIL; broader original consumers are outside this selection. */
{
	return mReferenceList;
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.GameObject::get_ActorsUsingMe, MethodDef 0x06000a9b, RVA0x0002E944, 7 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Complete selected original accessor/body. Its field references and control flow are governed by the paired original CIL; broader original consumers are outside this selection. */
{
	return mActorsUsingMe;
}
