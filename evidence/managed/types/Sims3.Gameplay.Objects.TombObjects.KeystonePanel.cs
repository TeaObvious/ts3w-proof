/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.CAS;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Objects.TombObjects.AdventureRewards;
using Sims3.Gameplay.Opportunities;
using Sims3.Gameplay.Tutorial;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;
using Sims3.UI;

namespace Sims3.Gameplay.Objects.TombObjects;

public class KeystonePanel : GameObject, IHasKeystoneShape, IAdventureObject, ICanHasTombObjectComponent, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent, IHasWorldBuilderData, IKeystonePanel
{
	public class InsertKeystone : Interaction<Sim, KeystonePanel>
	{
		private sealed class Definition : InteractionDefinition<Sim, KeystonePanel, InsertKeystone>
		{
			protected override bool Test(Sim a, KeystonePanel target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.IsUnlocked)
				{
					return false;
				}
				if (a.Inventory.Find<IKeystone>(target.IsObjectValidKey) == null)
				{
					greyedOutTooltipCallback = target.ToTooltipString;
					return false;
				}
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		private IKeystone mSelectedKeystone;

		public override void Cleanup()
		{
			if (StandardEntryCalled && !StandardExitCalled && mSelectedKeystone.Parent == Target)
			{
				mSelectedKeystone.UnParent();
				mSelectedKeystone.SetObjectToReset();
				Actor.Inventory.TryToAdd(mSelectedKeystone);
				Target.UpdateVisualState();
			}
			mSelectedKeystone = null;
			base.Cleanup();
		}

		protected override bool Run()
		{
			if (!Target.RouteToKeystonePanel(Actor))
			{
				return false;
			}
			foreach (IKeystone item in Actor.Inventory.FindAll<IKeystone>(checkInUse: true, Target.IsObjectValidKey))
			{
				if (mSelectedKeystone == null || mSelectedKeystone.UseForLast)
				{
					mSelectedKeystone = item;
				}
			}
			if (mSelectedKeystone != null)
			{
				StandardEntry();
				BeginCommodityUpdates();
				Actor.Inventory.RemoveByForce(mSelectedKeystone);
				EnterStateMachine("keystonePanel", "Enter", "x");
				SetActor("keystonePanel", Target);
				SetActor("keystone", mSelectedKeystone);
				if (Target.Parent is TreasureChest)
				{
					SetParameter("isOnTreasureChest", paramValue: true);
					SetActor("TreasureChest", Target.Parent);
				}
				AddOneShotScriptEventHandler(101u, OnInsertedKeystone);
				AddOneShotScriptEventHandler(376u, OnTookKeystoneOut);
				AddOneShotScriptEventHandler(377u, OnKeystoneSwap);
				AnimateSim("Insert");
				AnimateSim("Exit");
				Target.UpdateVisualState();
				Target.TombObjectComponent.ActivateTrigger(Trigger.InsertKeystone, Actor);
				EndCommodityUpdates(succeeded: true);
				Tutorialette.TriggerLesson(Lessons.TombKeystone, Actor);
				StandardExit();
				return true;
			}
			return false;
		}

		private void OnInsertedKeystone(StateMachineClient smc, IEvent evt)
		{
			string name = "ep1KeystoneRaysCircleGlow";
			switch (Target.KeystoneInfo.Shape)
			{
			case KeystoneMaker.Shape.Crescent:
				name = "ep1KeystoneRaysCrescentGlow";
				break;
			case KeystoneMaker.Shape.Heart:
				name = "ep1KeystoneRaysHeartGlow";
				break;
			case KeystoneMaker.Shape.Named:
				name = "ep1KeystoneRaysKeyGlow";
				break;
			case KeystoneMaker.Shape.Star:
				name = "ep1KeystoneRaysStarGlow";
				break;
			}
			VisualEffect.FireOneShotEffect(name, Target, Slot.FXJoint_0, VisualEffect.TransitionType.SoftTransition);
			Actor.SimDescription.TombStats.KeyUsed(Target.KeystoneInfo.Shape, mSelectedKeystone is SkeletonKey);
		}

		private void OnTookKeystoneOut(StateMachineClient smc, IEvent evt)
		{
			if (mSelectedKeystone is SkeletonKey)
			{
				mSelectedKeystone.SetModel("Keystone");
				mSelectedKeystone.SetGeometryState(Keystone.GetGeometryStateName(Target.KeystoneInfo.Shape));
			}
		}

		private void OnKeystoneSwap(StateMachineClient smc, IEvent evt)
		{
			if (mSelectedKeystone is SkeletonKey)
			{
				VisualEffect.FireOneShotEffect("ep1KeystoneSwap", Actor, Sim.FXJoints.LeftHand, VisualEffect.TransitionType.SoftTransition);
			}
		}
	}

	private sealed class RemoveKeystone : ImmediateInteraction<IActor, KeystonePanel>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<IActor, KeystonePanel, RemoveKeystone>
		{
			protected override string GetInteractionName(IActor a, KeystonePanel target, InteractionObjectPair interaction)
			{
				return "Debug: Remove Keystone";
			}

			protected override bool Test(IActor a, KeystonePanel target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Target.OnAdventureReset();
			return true;
		}
	}

	private const string kLocalizationKey = "Gameplay/Objects/TombObjects/KeystonePanel";

	private Keystone.Info mKeystoneInfo;

	private VisualEffect mGlowFx;

	public bool IsUnlocked => GetContainedObject(Slot.ContainmentSlot_0) != null;

	public Keystone.Info KeystoneInfo => mKeystoneInfo;

	public string Name => KeystoneInfo.Name;

	private static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/Objects/TombObjects/KeystonePanel:" + name, parameters);
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		buildBuyInteractions.Add(Keystone.SetShape.Singleton);
		base.AddBuildBuyInteractions(buildBuyInteractions);
	}

	protected override void AddDebugInteractions(List<InteractionDefinition> debugInteractions)
	{
		debugInteractions.Add(Keystone.SetShape.Singleton);
		debugInteractions.Add(RemoveKeystone.Singleton);
		base.AddDebugInteractions(debugInteractions);
	}

	public override void OnStartup()
	{
		AddComponent<TombObjectStaticComponent>(new object[0]);
		AddComponent<AdventureComponent>(new object[0]);
		AddInteraction(InsertKeystone.Singleton);
		UpdateVisualState();
	}

	public void OnAddTombObjectComponent(ITombObjectComponent tombObjectComponent)
	{
		tombObjectComponent.RegisterTrigger(Trigger.InsertKeystone);
	}

	public override void OnCreation()
	{
		if (Simulator.GetObjectInitParameters(ObjectId) is KeystoneMaker.KeystoneInitParams keystoneInitParams)
		{
			mKeystoneInfo = Keystone.GetKeystoneInfoFromNameOrType(keystoneInitParams.KeystoneNameOrType);
		}
	}

	public static void PostWorldLoadAdventureFixup()
	{
		Household travelHousehold = GameStates.TravelHousehold;
		if (travelHousehold == null)
		{
			return;
		}
		if (!travelHousehold.mKeystonePanelsUsed.TryGetValue(GameUtils.GetCurrentWorld(), out var value))
		{
			value = new List<string>();
		}
		KeystonePanel[] objects = Queries.GetObjects<KeystonePanel>();
		KeystonePanel[] array = objects;
		foreach (KeystonePanel keystonePanel in array)
		{
			if (keystonePanel.KeystoneInfo.Shape == KeystoneMaker.Shape.Named && !string.IsNullOrEmpty(keystonePanel.AdventureKey))
			{
				if (value.Contains(keystonePanel.KeystoneInfo.Name))
				{
					keystonePanel.OnAdventureReset(unreset: true);
				}
				else
				{
					keystonePanel.OnAdventureReset(unreset: false);
				}
			}
		}
	}

	public override void Dispose()
	{
		if (mGlowFx != null)
		{
			mGlowFx.Dispose();
			mGlowFx = null;
		}
		base.Dispose();
	}

	public void OnAdventureReset()
	{
		OnAdventureReset(unreset: false);
	}

	public void OnAdventureReset(bool unreset)
	{
		if (mKeystoneInfo.Shape != KeystoneMaker.Shape.Named)
		{
			return;
		}
		IGameObject containedObject = GetContainedObject(Slot.ContainmentSlot_0);
		if (unreset)
		{
			if (containedObject == null)
			{
				containedObject = KeystoneMaker.Make(mKeystoneInfo.Name);
				containedObject.ParentToSlot(this, Slot.ContainmentSlot_0);
				TombObjectComponent.ActivateTrigger(Trigger.InsertKeystone, null);
				UpdateVisualState();
			}
		}
		else if (containedObject != null)
		{
			containedObject.Destroy();
			TombObjectComponent.DeactivateTrigger(Trigger.InsertKeystone, null);
			UpdateVisualState();
		}
	}

	public override bool HandToolAllowPlacementInSlot(IGameObject objectToPlaceInSlot, Slot slot, AdditionalSlotPlacementCheckResults checks)
	{
		if (slot == Slot.ContainmentSlot_0)
		{
			return false;
		}
		return base.HandToolAllowPlacementInSlot(objectToPlaceInSlot, slot, checks);
	}

	public override List<InteractionObjectPair> GetAllInteractionsForActor(IActor s)
	{
		if (Parent is ISecretObject { IsDiscovered: false } secretObject)
		{
			return secretObject.GetAllInteractionsForActor(s);
		}
		return base.GetAllInteractionsForActor(s);
	}

	public override bool HasAnyInteraction(IActor actor, ref InteractionInstanceParameters parameters)
	{
		if (Parent is ISecretObject { IsDiscovered: false } secretObject)
		{
			return secretObject.HasAnyInteraction(actor, ref parameters);
		}
		return base.HasAnyInteraction(actor, ref parameters);
	}

	public override Tooltip CreateTooltip(Vector2 mousePosition, WindowBase mousedOverWindow, ref Vector2 tooltipPosition)
	{
		Tooltip result = base.CreateTooltip(mousePosition, mousedOverWindow, ref tooltipPosition);
		if (!IsUnlocked)
		{
			result = new SimpleTextTooltip(ToTooltipString());
		}
		return result;
	}

	public override string ToTooltipString()
	{
		if (!IsUnlocked)
		{
			string text = LocalizeString("TooltipText", mKeystoneInfo.ToString());
			if (KeystoneInfo.Shape == KeystoneMaker.Shape.Named && !string.IsNullOrEmpty(KeystoneInfo.Name) && OpportunityManager.sKeystonesThatComeFromAdventures.ContainsKey(KeystoneInfo.Name))
			{
				text = text + "\n" + LocalizeString("KeyFromAdventureHovertip");
			}
			return text;
		}
		return base.ToTooltipString();
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		bool result = base.ExportContent(resKeyTable, objIdTable, writer);
		mKeystoneInfo.ExportContent(resKeyTable, objIdTable, writer);
		return result;
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		bool result = base.ImportContent(resKeyTable, objIdTable, reader);
		mKeystoneInfo.ImportContent(resKeyTable, objIdTable, reader);
		UpdateVisualState();
		return result;
	}

	public void LoadWorldBuilderData()
	{
		IWorldBuilderData direct = WorldBuilderData.GetDirect("Keystones", ObjectId, "mKeystoneInfo");
		if (direct != null)
		{
			mKeystoneInfo = (Keystone.Info)(object)direct;
			UpdateVisualState();
		}
	}

	public void SaveWorldBuilderData()
	{
		if (Sims3.SimIFace.Environment.HasEditInGameModeSwitch)
		{
			WorldBuilderData.SetDirect("Keystones", ObjectId, "mKeystoneInfo", mKeystoneInfo);
		}
	}

	public bool IsObjectValidKey(IGameObject obj, object customData)
	{
		if (obj is IKeystone keystone)
		{
			return keystone.IsCorrectShape(mKeystoneInfo);
		}
		return false;
	}

	public bool RouteToKeystonePanel(Sim actor)
	{
		if (Parent is TreasureChest treasureChest)
		{
			return treasureChest.RouteToTreasureChest(actor);
		}
		return actor.RouteToSlotAndCheckInUse(this, Slot.RoutingSlot_0);
	}

	public void UpdateInfo(Keystone.Info keystoneInfo)
	{
		mKeystoneInfo.Name = keystoneInfo.Name;
		mKeystoneInfo.Shape = keystoneInfo.Shape;
		UpdateVisualState();
	}

	public void UpdateVisualState()
	{
		string text = "keystonePanelCircle";
		switch (mKeystoneInfo.Shape)
		{
		case KeystoneMaker.Shape.Crescent:
			text = "keystonePanelCresent";
			break;
		case KeystoneMaker.Shape.Heart:
			text = "keystonePanelHeart";
			break;
		case KeystoneMaker.Shape.Named:
			text = "keystonePanelNamed";
			break;
		case KeystoneMaker.Shape.Star:
			text = "keystonePanelStar";
			break;
		}
		SetGeometryState(text);
		if (IsUnlocked)
		{
			SetMaterial(text + "Glow");
			if (mGlowFx == null)
			{
				mGlowFx = VisualEffect.Create("ep1KeystoneConstantGlow");
				mGlowFx.ParentTo(this, Slot.FXJoint_0);
				mGlowFx.Start();
			}
		}
		else
		{
			SetMaterial(text);
			if (mGlowFx != null)
			{
				mGlowFx.Stop();
				mGlowFx.Dispose();
				mGlowFx = null;
			}
		}
	}
}
