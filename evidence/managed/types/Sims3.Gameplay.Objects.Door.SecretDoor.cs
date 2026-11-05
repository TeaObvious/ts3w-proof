/* Analyst: PC1.67 original managed evidence. Discovery and openness are independent. Closed removes route portals; open adds them at animation callback. Hide while open requests deferred close then hides on movement completion.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Controllers;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;

namespace Sims3.Gameplay.Objects.Door;

public abstract class SecretDoor : NonAnimatedDoor, ISecretObject, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent
{
	private sealed class ToggleDiscovered : ImmediateInteraction<IActor, SecretDoor>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<IActor, SecretDoor, ToggleDiscovered>
		{
			protected override string GetInteractionName(IActor a, SecretDoor target, InteractionObjectPair interaction)
			{
				if (target.IsDiscovered)
				{
					return LocalizeString("MakeUndiscovered");
				}
				return LocalizeString("MakeDiscovered");
			}

			protected override bool Test(IActor a, SecretDoor target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			if (Target.IsDiscovered)
			{
				Target.Hide();
			}
			else
			{
				Target.UnHide();
			}
			return true;
		}
	}

	private sealed class ToggleDiscoverable : ImmediateInteraction<IActor, SecretDoor>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<IActor, SecretDoor, ToggleDiscoverable>
		{
			protected override string GetInteractionName(IActor a, SecretDoor target, InteractionObjectPair interaction)
			{
				if (target.IsDiscoverable)
				{
					return LocalizeString("MakeUndiscoverable");
				}
				return LocalizeString("MakeDiscoverable");
			}

			protected override bool Test(IActor a, SecretDoor target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Target.mIsDiscoverable = !Target.mIsDiscoverable;
			return true;
		}
	}

	private const string kLocalizationKey = "Gameplay/Abstracts/SecretDoor";

	private const uint kSecretDoorIsDiscovered = 3602696443u;

	private const uint kSecretDoorIsDiscoverable = 3602696442u;

	private static readonly Slot kRoutingSlot0 = Slots.Hash("RoutingSlot_Door0_Front");

	private static readonly Slot kRoutingSlot1 = Slots.Hash("RoutingSlot_Door1_Rear");

	private bool mIsDiscoverable;

	private bool mIsDiscovered;

	private bool mHideWhenDoneClosing;

	private ObjectGuid mOpenOneShot;

	public bool IsDiscoverable => mIsDiscoverable;

	public bool IsDiscovered => mIsDiscovered;

	protected override bool CanClose
	{
		get
		{
			if (mIsDiscovered)
			{
				return !IsLocked;
			}
			return false;
		}
	}

	protected override bool CanOpen
	{
		get
		{
			if (mIsDiscovered)
			{
				return !IsLocked;
			}
			return false;
		}
	}

	protected override bool CanBeLocked => false;

	private static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/Abstracts/SecretDoor:" + name, parameters);
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		buildBuyInteractions.Add(ToggleDiscovered.Singleton);
		buildBuyInteractions.Add(ToggleDiscoverable.Singleton);
		base.AddBuildBuyInteractions(buildBuyInteractions);
	}

	protected override void AddDebugInteractions(List<InteractionDefinition> debugInteractions)
	{
		debugInteractions.Add(ToggleDiscovered.Singleton);
		debugInteractions.Add(ToggleDiscoverable.Singleton);
		base.AddDebugInteractions(debugInteractions);
	}

	public override void OnCreation()
	{
		base.OnCreation();
		mIsDiscoverable = true;
	}

	public override void OnAddTombObjectComponent(ITombObjectComponent tombObjectComponent)
	{
		base.OnAddTombObjectComponent(tombObjectComponent);
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.Hide, OnHideBehavior);
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.Unhide, OnUnhideBehavior);
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.Open, OnOpenBehavior);
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.Close, OnCloseBehavior);
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.Toggle, OnToggleBehavior);
	}

	public override void LoadWorldBuilderData()
	{
		base.LoadWorldBuilderData();
		WorldBuilderData.Get("SecretDoor", ObjectId, "mIsDiscovered", ref mIsDiscovered);
		WorldBuilderData.Get("SecretDoor", ObjectId, "mIsDiscoverable", ref mIsDiscoverable);
	}

	public override void SaveWorldBuilderData()
	{
		base.SaveWorldBuilderData();
		WorldBuilderData.Set("SecretDoor", ObjectId, "mIsDiscovered", mIsDiscovered, defaultValue: false);
		WorldBuilderData.Set("SecretDoor", ObjectId, "mIsDiscoverable", mIsDiscoverable, defaultValue: true);
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		bool result = base.ImportContent(resKeyTable, objIdTable, reader);
		reader.ReadBool(3602696443u, out mIsDiscovered, defaultValue: false);
		reader.ReadBool(3602696442u, out mIsDiscoverable, defaultValue: true);
		return result;
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		bool result = base.ExportContent(resKeyTable, objIdTable, writer);
		writer.WriteBool(3602696443u, mIsDiscovered);
		writer.WriteBool(3602696442u, mIsDiscoverable);
		return result;
	}

	public override void Dispose()
	{
		if (mOpenOneShot.IsValid)
		{
			Simulator.DestroyObject(mOpenOneShot);
			mOpenOneShot = ObjectGuid.InvalidObjectGuid;
		}
		base.Dispose();
	}

	public override PortalRestriction IsAllowedThrough(int srcRoomId, int destRoomId, Sim actor)
	{
		if (!mIsDiscovered)
		{
			return PortalRestriction.DoorRestriction;
		}
		return base.IsAllowedThrough(srcRoomId, destRoomId, actor);
	}

	public override bool IsVisibleInTombRoom()
	{
		if (!mIsDiscovered)
		{
			return false;
		}
		if (!IsOpen)
		{
			return true;
		}
		return base.IsVisibleInTombRoom();
	}

	protected override void OnLockChanged(tLock previousLockType)
	{
		if (LockType != previousLockType)
		{
			if (IsLocked)
			{
				Audio.StartSound("secret_door_lock");
			}
			else
			{
				Audio.StartSound("secret_door_unlock");
			}
		}
	}

	protected override bool ShouldOpen()
	{
		if (!mIsDiscovered)
		{
			UnHide();
		}
		return base.ShouldOpen();
	}

	private void OpenOneShot()
	{
		Open();
		mOpenOneShot = ObjectGuid.InvalidObjectGuid;
	}

	protected virtual bool OnOpenBehavior(Sim sim)
	{
		if (!IsOpen && mOpenOneShot == ObjectGuid.InvalidObjectGuid)
		{
			mOpenOneShot = Simulator.AddObject(new OneShotFunction(OpenOneShot));
			return true;
		}
		return false;
	}

	protected override void OnDoneMoving()
	{
		base.OnDoneMoving();
		if (!IsOpen && mHideWhenDoneClosing)
		{
			mHideWhenDoneClosing = false;
			Hide();
		}
	}

	protected virtual bool OnCloseBehavior(Sim sim)
	{
		if (IsOpen)
		{
			CloseWhenAble();
			return true;
		}
		return false;
	}

	protected virtual bool OnToggleBehavior(Sim sim)
	{
		if (IsOpen)
		{
			return OnCloseBehavior(sim);
		}
		return OnOpenBehavior(sim);
	}

	protected virtual bool OnHideBehavior(Sim sim)
	{
		if (IsOpen)
		{
			mHideWhenDoneClosing = true;
			CloseWhenAble();
			return true;
		}
		if (mIsDiscovered)
		{
			mIsDiscovered = false;
			TombRoomManager.UpdateTombMusic();
			return true;
		}
		return false;
	}

	protected virtual bool OnUnhideBehavior(Sim sim)
	{
		if (!mIsDiscovered)
		{
			mIsDiscovered = true;
			TombRoomManager.UpdateTombMusic();
			return true;
		}
		return false;
	}

	public bool RouteToSecretDoor(Sim actor, out string ikSuffix)
	{
		ikSuffix = null;
		if (actor.RouteToSlotListAndCheckInUse((IGameObject)this, new Slot[2] { kRoutingSlot0, kRoutingSlot1 }, out Slot slot))
		{
			if (slot == kRoutingSlot1)
			{
				ikSuffix = "_1";
			}
			return true;
		}
		return false;
	}

	public bool RouteToSecretDoor(Sim actor)
	{
		string ikSuffix;
		return RouteToSecretDoor(actor, out ikSuffix);
	}

	public void Hide()
	{
		OnHideBehavior(null);
	}

	public void UnHide()
	{
		OnUnhideBehavior(null);
	}
}
