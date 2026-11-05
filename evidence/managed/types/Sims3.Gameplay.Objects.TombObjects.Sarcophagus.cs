/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.CAS;
using Sims3.Gameplay.Controllers;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.EventSystem;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Objects.Decorations;
using Sims3.Gameplay.Objects.FoodObjects;
using Sims3.Gameplay.Objects.Spawners;
using Sims3.Gameplay.Skills;
using Sims3.Gameplay.Socializing;
using Sims3.Gameplay.ThoughtBalloons;
using Sims3.Gameplay.Tutorial;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;
using Sims3.SimIFace.CustomContent;
using Sims3.UI;
using Sims3.UI.Hud;

namespace Sims3.Gameplay.Objects.TombObjects;

public class Sarcophagus : AbstractArtObject, ISarcophagus, ISandsOfUnderstandingable, IHasWorldBuilderData, IGivesTombObjectStatus, ICanHasTombObjectComponent, GameObject.IDoNotDuplicateOnClone, ICanCountAsBeingIndoors, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent
{
	private enum MummyChance : uint
	{
		None,
		Tunable,
		Definitely,
		AlreadyCreated
	}

	public class SarcophagusInteraction : Interaction<Sim, Sarcophagus>
	{
		public void PrepSimForExit(bool setPosition)
		{
			if (!setPosition)
			{
				Actor.SetPosition(Target, Slot.RoutingSlot_1);
				Actor.SetForward(Slots.GetForwardOfSlot(Target.ObjectId, Slot.RoutingSlot_1));
			}
			Actor.PushSims(Target.GetPositionOfSlot(Slot.RoutingSlot_0), 4f, waitForPushes: true);
		}

		public void RegisterForHidingEvents()
		{
			AddOneShotScriptEventHandler(201u, EventCallbackHidingEvents);
			AddOneShotScriptEventHandler(202u, EventCallbackHidingEvents);
		}

		private void EventCallbackHidingEvents(StateMachineClient sender, IEvent evt)
		{
			if (evt.EventId == 201)
			{
				Actor.SetHiddenFlags(HiddenFlags.Everything);
			}
			else if (evt.EventId == 202)
			{
				Actor.SetHiddenFlags(HiddenFlags.Nothing);
			}
		}

		public override void Cleanup()
		{
			Target.DisableRoutingFootprint();
			base.Cleanup();
		}
	}

	public sealed class LookInside : SarcophagusInteraction, ICountsAsIndoorInteraction
	{
		private sealed class Definition : InteractionDefinition<Sim, Sarcophagus, LookInside>
		{
			protected override bool Test(Sim a, Sarcophagus target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (TombRoomManager.IsObjectInATombRoom(target))
				{
					return !target.mLookedIn;
				}
				return false;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		private float mLookMinutes;

		private bool mCreateMummy;

		private VisualEffect mTreasureFX;

		protected override bool Run()
		{
			if (!BuffFear.CanSimDoFearGatingAction(Actor, kFearBuffThresholdLookInside))
			{
				Actor.ShowTNSIfSelectable(LocalizeString(Actor.IsFemale, "FearLookInsideRefuseTNS", Actor), StyledNotification.NotificationStyle.kGameMessageNegative, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
				Actor.PlaySoloAnimation("a_fearModdlet_refuse_x", yield: true);
				return false;
			}
			if (!Target.RouteToSarcaphagus(Actor, null))
			{
				return false;
			}
			StandardEntry();
			BeginCommodityUpdates();
			EnterStateMachine("Sarcophagus", "Enter", "x", "sarcophagus");
			AnimateSim("LookInsideLoop");
			SetParameter("foundNothing", paramValue: true);
			bool flag = true;
			if (Target.mCreateMummyOnLookIn)
			{
				AnimateSim("LookInsideMummyReaction");
				BuffFear.GiveFear(Actor, kFearBuffMoodValueSeenMummy, Origin.FromMummyEncounter);
				mCreateMummy = true;
			}
			else
			{
				mLookMinutes = RandomUtil.GetFloat(kLookInsideMinMinutes, kLookInsideMaxMinutes);
				flag = DoLoop(ExitReason.Default, LoopDel, mCurrentStateMachine);
			}
			Target.RemoveComponent<SandsOfUnderstandingComponent>();
			if (Target.mLookedIn && Target.TombObjectComponent.IsTriggerLinkedToAnyActivatedBehavior(Trigger.Open))
			{
				Target.TombObjectComponent.ActivateTrigger(Trigger.Open, Actor);
				Actor.ShowTNSIfSelectable(LocalizeString(Actor.IsFemale, "FoundTrigger", Actor), StyledNotification.NotificationStyle.kGameMessagePositive, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
				SetParameter("foundNothing", paramValue: false);
			}
			AnimateSim("Exit");
			if (mCreateMummy)
			{
				Actor.RouteAway(1f, 3f, limitOutdoors: false, GetPriority(), Autonomous, isCancellable: false, hidden: true, RouteDistancePreference.PreferNearestToRouteOrigin);
			}
			EndCommodityUpdates(flag);
			StandardExit();
			return flag;
		}

		private void LoopDel(StateMachineClient smc, LoopData loopData)
		{
			if (!(loopData.mLifeTime >= mLookMinutes))
			{
				return;
			}
			if (mTreasureFX != null)
			{
				if (!(loopData.mLifeTime >= mLookMinutes + kLookInsideAdditionalMinutesTreasure))
				{
					return;
				}
				mTreasureFX.Stop();
			}
			else if (Target.SandsOfUnderstandingComponent == null && RandomUtil.RandomChance(kLookInsideFailureChance))
			{
				AnimateSim("LookInsideFailure");
			}
			else
			{
				Target.mLookedIn = true;
				List<IGameObject> list = new List<IGameObject>();
				if (Target.TreasureComponent.HasAdventureTreasure())
				{
					list.AddRange(Target.TreasureComponent.GetAdventureTreasure(Actor));
				}
				if (Target.TreasureComponent.NumberOfTreasuresGivenThisVisit < 1)
				{
					list.AddRange(Target.TreasureComponent.GetStandardTreasure(Actor));
				}
				if (list.Count > 0)
				{
					mTreasureFX = VisualEffect.Create("ep1sarcophagusGlow");
					mTreasureFX.ParentTo(Target, Slot.FXJoint_0);
					mTreasureFX.Start();
					Target.TreasureComponent.GiveTreasuresToSim(list, Actor, playCollectionBehavior: true);
					smc.SetParameter("foundNothing", paramValue: false);
					return;
				}
			}
			Actor.AddExitReason(ExitReason.Finished);
		}

		public override void Cleanup()
		{
			if (mCreateMummy)
			{
				Target.TombMummyCreate();
			}
			if (mTreasureFX != null)
			{
				mTreasureFX.Dispose();
			}
			base.Cleanup();
		}
	}

	private sealed class Hide : SarcophagusInteraction, ICountsAsIndoorInteraction
	{
		private sealed class Definition : InteractionDefinition<Sim, Sarcophagus, Hide>
		{
			protected override bool Test(Sim a, Sarcophagus target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.mLookedIn && TombRoomManager.IsObjectInATombRoom(target) && target.IsTombMummyInRoomWithObject(target))
				{
					return true;
				}
				return false;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			RequestWalkStyle(Sim.WalkStyle.FastRun);
			if (!Target.RouteToSarcaphagus(Actor, null))
			{
				return false;
			}
			StandardEntry();
			BeginCommodityUpdates();
			Target.ClearSimFromAllMummyFollows(Actor);
			EnterStateMachine("Sarcophagus", "Enter", "x", "sarcophagus");
			SetParameter("isMummy", Actor.SimDescription.IsMummy);
			SetParameter("isHiding", paramValue: true);
			RegisterForHidingEvents();
			AnimateSim("Open");
			Target.EnableRoutingFootprint(Actor);
			AnimateSim("HideLoop");
			bool flag = DoLoop(ExitReason.Default);
			PrepSimForExit(setPosition: true);
			AnimateSim("Exit");
			EndCommodityUpdates(flag);
			StandardExit();
			return flag;
		}
	}

	private sealed class Sleep : SarcophagusInteraction, ISleeping, ICountsAsIndoorInteraction
	{
		private sealed class Definition : InteractionDefinition<Sim, Sarcophagus, Sleep>
		{
			protected override bool Test(Sim a, Sarcophagus target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (a.SimDescription.IsMummy)
				{
					if (isAutonomous)
					{
						return false;
					}
					return true;
				}
				bool flag = TombRoomManager.IsObjectInATombRoom(target);
				if (flag && target.mLookedIn && a.Motives.GetValue(CommodityKind.Energy) <= kRestEnergyRequirement)
				{
					if (!a.SimDescription.IsPlayableGhost && !a.TraitManager.HasAnyElement(TraitNames.Brave, TraitNames.HeavySleeper, TraitNames.Daredevil, TraitNames.Insane, TraitNames.Adventurous))
					{
						return a.BuffManager.HasAnyElement(BuffNames.TurboSleep, BuffNames.Blizzard);
					}
					return true;
				}
				return !flag;
			}

			protected override string GetInteractionName(Sim actor, Sarcophagus target, InteractionObjectPair iop)
			{
				string name = (TombRoomManager.IsObjectInATombOrHiddenRoom(target) ? "RestInteraction" : "SleepInteraction");
				return LocalizeString(actor.IsFemale, name);
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		private float minutesSlept;

		private MotiveDelta mEnergyDelata;

		private VisualEffect mSleepFX;

		protected override bool Run()
		{
			if (!Target.RouteToSarcaphagus(Actor, null))
			{
				return false;
			}
			StandardEntry();
			Target.PreSleepBehavior(Actor);
			mEnergyDelata = AddMotiveDelta(CommodityKind.Energy, Target.SleepEnergyDelta);
			Target.ClearSimFromAllMummyFollows(Actor);
			EnterStateMachine("Sarcophagus", "Enter", "x", "sarcophagus");
			SetParameter("isMummy", Actor.SimDescription.IsMummy);
			RegisterForHidingEvents();
			AnimateSim("Open");
			Target.EnableRoutingFootprint(Actor);
			float multiplier = 1f;
			if (Actor.BuffManager.HasElement(BuffNames.HerbLavender))
			{
				multiplier = Lavender.EnergyRateWhileSleepingMultiplier;
			}
			BeginCommodityUpdate(CommodityKind.Energy, multiplier);
			BeginCommodityUpdates();
			Actor.SetIsSleeping(value: true);
			AnimateSim("SleepLoop");
			string sleepFXName = Actor.OccultManager.GetSleepFXName();
			mSleepFX = VisualEffect.Create(sleepFXName);
			mSleepFX.ParentTo(Target, Slot.FXJoint_1);
			mSleepFX.Start();
			bool flag = DoLoop(ExitReason.Default, LoopDel, null);
			mSleepFX.Stop();
			Actor.SetIsSleeping(value: false);
			Target.PostSleepBehavior(Actor, minutesSlept, fromCleanup: false);
			EndCommodityUpdates(flag);
			PrepSimForExit(setPosition: true);
			SetParameter("isMummy", Actor.SimDescription.IsMummy);
			AnimateSim("Exit");
			StandardExit();
			return flag;
		}

		private void LoopDel(StateMachineClient smc, LoopData loopData)
		{
			minutesSlept = loopData.mLifeTime;
			if (Actor.Motives.IsMax(CommodityKind.Energy) && !Actor.SimDescription.IsMummy)
			{
				Actor.AddExitReason(ExitReason.Finished);
			}
		}

		public override void Cleanup()
		{
			RemoveMotiveDelta(mEnergyDelata);
			Target.PostSleepBehavior(Actor, 0f, fromCleanup: true);
			if (mSleepFX != null)
			{
				mSleepFX.Stop();
				mSleepFX.Dispose();
			}
			base.Cleanup();
		}
	}

	private class WooHoo : SarcophagusInteraction, ICountsAsIndoorInteraction
	{
		private sealed class Definition : InteractionDefinition<Sim, Sarcophagus, WooHoo>
		{
			protected override bool Test(Sim a, Sarcophagus target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				bool flag = TombRoomManager.IsObjectInATombRoom(target);
				if ((flag && target.mLookedIn) || !flag)
				{
					return GetPotentialLovers(a).Count > 0;
				}
				return false;
			}

			public override void PopulatePieMenuPicker(ref InteractionInstanceParameters parameters, out List<ObjectPicker.TabInfo> listObjs, out List<ObjectPicker.HeaderInfo> headers, out int NumSelectableRows)
			{
				NumSelectableRows = 1;
				Sim sim = parameters.Actor as Sim;
				PopulateSimPicker(ref parameters, out listObjs, out headers, GetPotentialLovers(sim), includeActor: false);
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		public Sim WooHooer;

		public Sim WooHooee;

		private VisualEffect mWooHooFX;

		private bool isWooHooing;

		public override string GetInteractionName()
		{
			if (WooHooer != null && WooHooee != null)
			{
				Sim sim = ((Actor == WooHooer) ? WooHooee : WooHooer);
				return LocalizeString(Actor.IsFemale, "WooHooInteraction", sim);
			}
			return base.GetInteractionName();
		}

		protected override bool Run()
		{
			bool flag = false;
			if (WooHooer == null)
			{
				WooHooer = Actor;
				WooHooee = GetSelectedObject() as Sim;
				flag = true;
			}
			bool flag2 = false;
			if (!((!flag) ? Target.RouteToSarcaphagus(Actor, WooHooer) : Target.RouteToSarcaphagus(Actor, null)))
			{
				Actor.AddExitReason(ExitReason.Finished);
				return false;
			}
			if (flag && Target.ActorsUsingMe.Contains(WooHooee))
			{
				return false;
			}
			StandardEntry();
			EnterStateMachine("Sarcophagus", "Enter", "x", "sarcophagus");
			SetParameter("isMummy", Actor.SimDescription.IsMummy);
			RegisterForHidingEvents();
			AnimateSim("Open");
			if (flag && !Actor.HasExitReason())
			{
				WooHoo wooHoo = Singleton.CreateInstance(Target, WooHooee, new InteractionPriority(InteractionPriorityLevel.UserDirected), isAutonomous: false, cancellableByPlayer: true) as WooHoo;
				wooHoo.LinkedInteractionInstance = this;
				wooHoo.WooHooer = WooHooer;
				wooHoo.WooHooee = WooHooee;
				WooHooee.InteractionQueue.AddNext(wooHoo);
			}
			AnimateSim("WooHooWait");
			if (StartSync(flag))
			{
				BeginCommodityUpdates();
				if (flag)
				{
					mWooHooFX = VisualEffect.Create("sarcophagusCairoWoohooPetals");
					mWooHooFX.ParentTo(Target, Slot.FXJoint_0);
					mWooHooFX.Start();
					Audio.StartObjectSound(Target.ObjectId, "sarcoph_woohoo", loop: false);
				}
				isWooHooing = true;
				RockGemMetalBase.HandleNearbyWoohoo(Actor, RockGemMetalBase.HowMuchWooHoo.MoreWoohoo);
				AnimateSim("WooHoo");
				RockGemMetalBase.HandleNearbyWoohoo(Actor, RockGemMetalBase.HowMuchWooHoo.LessWoohoo);
				isWooHooing = false;
				EndCommodityUpdates(succeeded: true);
				if (flag)
				{
					mWooHooFX.Stop();
					SocialCallback.RunPostWoohoo(Actor, WooHooee, Target);
					do
					{
						Simulator.Sleep(10u);
					}
					while (Target.UseCount > 1);
				}
			}
			else if (flag)
			{
				if (LinkedInteractionInstance != null)
				{
					LinkedInteractionInstance.InstanceActor.AddExitReason(ExitReason.CanceledByScript);
				}
				do
				{
					Simulator.Sleep(10u);
				}
				while (Target.UseCount > 1);
			}
			PrepSimForExit(setPosition: true);
			Target.EnableRoutingFootprint(Actor);
			AnimateSim("Exit");
			StandardExit();
			if (!flag)
			{
				Actor.RouteAway(1f, 3f, limitOutdoors: false, GetPriority(), Autonomous, isCancellable: false, hidden: true, RouteDistancePreference.PreferNearestToRouteOrigin);
			}
			return true;
		}

		public override void Cleanup()
		{
			if (isWooHooing)
			{
				RockGemMetalBase.HandleNearbyWoohoo(Actor, RockGemMetalBase.HowMuchWooHoo.LessWoohoo);
				isWooHooing = false;
			}
			if (mWooHooFX != null)
			{
				mWooHooFX.Stop();
				mWooHooFX.Dispose();
			}
			base.Cleanup();
		}
	}

	private sealed class TryForBaby : WooHoo, ICountsAsIndoorInteraction
	{
		private sealed class Definition : InteractionDefinition<Sim, Sarcophagus, TryForBaby>
		{
			protected override bool Test(Sim a, Sarcophagus target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				bool flag = TombRoomManager.IsObjectInATombRoom(target);
				if ((flag && target.mLookedIn) || !flag)
				{
					return GetPotentialMates(a).Count > 0;
				}
				return false;
			}

			public override void PopulatePieMenuPicker(ref InteractionInstanceParameters parameters, out List<ObjectPicker.TabInfo> listObjs, out List<ObjectPicker.HeaderInfo> headers, out int NumSelectableRows)
			{
				NumSelectableRows = 1;
				Sim sim = parameters.Actor as Sim;
				PopulateSimPicker(ref parameters, out listObjs, out headers, GetPotentialMates(sim), includeActor: false);
			}
		}

		public new static readonly InteractionDefinition Singleton = new Definition();

		public override string GetInteractionName()
		{
			if (WooHooer != null && WooHooee != null)
			{
				Sim sim = ((Actor == WooHooer) ? WooHooee : WooHooer);
				return LocalizeString(Actor.IsFemale, "TryForBaby", sim);
			}
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/Sarcophagus/TryForBaby:InteractionName");
		}

		protected override bool Run()
		{
			Sim sim = GetSelectedObject() as Sim;
			if (base.Run() && Pregnancy.ShouldImpregnate(Actor, sim, kBabyMadeChance))
			{
				Pregnancy.Start(Actor, sim);
				return true;
			}
			return false;
		}
	}

	private sealed class SummonPlayableMummy : SarcophagusInteraction
	{
		private sealed class Definition : InteractionDefinition<Sim, Sarcophagus, SummonPlayableMummy>
		{
			protected override bool Test(Sim a, Sarcophagus target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.LotCurrent.IsResidentialLot && !TombRoomManager.IsObjectInATombRoom(target) && target.DoesSimHaveAllMummyIngredients(a))
				{
					if (!a.Household.CanAddSpeciesToHousehold(CASAgeGenderFlags.Human))
					{
						greyedOutTooltipCallback = HouseholdTooBigGreyedOutTooltip;
						return false;
					}
					return true;
				}
				return false;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		private List<CollectableRelic> mJars = new List<CollectableRelic>(5);

		private bool mDestroyItems;

		private static string HouseholdTooBigGreyedOutTooltip()
		{
			return LocalizeString("HouseholdTooBig");
		}

		protected override bool Run()
		{
			if (!Target.RouteToSarcaphagus(Actor, null))
			{
				return false;
			}
			mJars = Target.GetMummyIngredients(Actor, setInUse: true);
			if (mJars.Count != 5)
			{
				return false;
			}
			StandardEntry();
			Sim sim = Target.AddPlayableMummyToHousehold(Actor.Household);
			if (sim == null)
			{
				StandardExit();
				return false;
			}
			sim.SetHiddenFlags(HiddenFlags.Everything);
			sim.OccultManager.AddOccultType(OccultTypes.Mummy, addOutfit: true, isReward: false, fromRestore: false);
			EnterStateMachine("Sarcophagus", "Enter", "x", "sarcophagus");
			BeginCommodityUpdates();
			AnimateSim("SummonPlayableMummy");
			AnimateSim("Exit");
			if (!Target.TombMummyPushExitSarcophagus(sim))
			{
				sim.Destroy();
			}
			else
			{
				mDestroyItems = true;
				EventTracker.SendEvent(EventTypeId.kCreatedMonster, Actor, sim);
			}
			StandardExit();
			return true;
		}

		public override void Cleanup()
		{
			if (mJars.Count == 5)
			{
				foreach (CollectableRelic mJar in mJars)
				{
					if (mDestroyItems)
					{
						Actor.Inventory.RemoveByForce(mJar);
						mJar.Destroy();
					}
					else
					{
						Actor.Inventory.SetNotInUse(mJar);
					}
				}
			}
			base.Cleanup();
		}
	}

	private sealed class MummyExitSarcophagus : SarcophagusInteraction
	{
		[DoesntRequireTuning]
		private sealed class Definition : InteractionDefinition<Sim, Sarcophagus, MummyExitSarcophagus>
		{
			protected override bool Test(Sim a, Sarcophagus target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			public override string GetInteractionName(ref InteractionInstanceParameters parameters)
			{
				return Localization.LocalizeString("Gameplay/Actors/Sim/MummyReaction:InteractionName");
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		[TunableComment("Broadcaster for reacting to a tomb mummy exiting the sarcophagus.")]
		[Tunable]
		private static ReactionBroadcasterParams kTombMummyAppearanceReactionParams = new ReactionBroadcasterParams();

		private ReactionBroadcaster mReactionBroadcaster;

		protected override bool Run()
		{
			StandardEntry();
			PrepSimForExit(setPosition: false);
			EnterStateMachine("Sarcophagus", "Enter", "x", "sarcophagus");
			RegisterForHidingEvents();
			if (Actor.Household == Household.NpcHousehold)
			{
				mReactionBroadcaster = new ReactionBroadcaster(Target, kTombMummyAppearanceReactionParams, OnEntered);
				SetParameter("playRoar", paramValue: false);
			}
			else
			{
				SetParameter("playRoar", paramValue: true);
			}
			Actor.ThoughtBalloonManager.AddBlocker(Target);
			Target.EnableRoutingFootprint(Actor);
			Audio.StartObjectSound(Target.ObjectId, "sarcoph_mummy_appear", loop: false);
			AnimateSim("TombMummyGetOut");
			AnimateSim("Exit");
			if (Actor.Household == Household.NpcHousehold)
			{
				Target.TombMummyPushWander(Actor);
				Tutorialette.TriggerLesson(Lessons.TombMummySpawned, null);
			}
			StandardExit();
			return true;
		}

		public override void Cleanup()
		{
			Actor.ThoughtBalloonManager.RemoveBlocker(Target);
			if (mReactionBroadcaster != null)
			{
				mReactionBroadcaster.Dispose();
			}
			base.Cleanup();
		}

		private void OnEntered(Sim actor, ReactionBroadcaster broadcaster)
		{
			ThoughtBalloonAxis axis = ThoughtBalloonAxis.kDislike;
			ReactionTypes[] array;
			if (actor.TraitManager.HasElement(TraitNames.Coward))
			{
				array = new ReactionTypes[5]
				{
					ReactionTypes.ThrowUp,
					ReactionTypes.Scared,
					ReactionTypes.Shiver,
					ReactionTypes.GhostNegative,
					ReactionTypes.Startled
				};
			}
			else if (actor.SimDescription.IsMummy)
			{
				array = new ReactionTypes[1] { ReactionTypes.Salute };
				axis = ThoughtBalloonAxis.kLike;
			}
			else if (actor.TraitManager.HasAnyElement(TraitNames.Brave, TraitNames.Adventurous, TraitNames.Daredevil) || actor.BuffManager.HasElement(BuffNames.Blizzard))
			{
				array = new ReactionTypes[3]
				{
					ReactionTypes.PumpFist,
					ReactionTypes.Excited,
					ReactionTypes.Shrug
				};
				axis = ThoughtBalloonAxis.kNeutral;
			}
			else
			{
				array = new ReactionTypes[3]
				{
					ReactionTypes.Scared,
					ReactionTypes.GhostNegative,
					ReactionTypes.Startled
				};
			}
			ReactionTypes reactionType = array[RandomUtil.GetInt(0, array.Length - 1)];
			actor.PlayReaction(reactionType, new InteractionPriority(InteractionPriorityLevel.UserDirected), Actor, axis, ReactionSpeed.Immediate);
		}
	}

	private sealed class MummyWander : Interaction<Sim, Sarcophagus>
	{
		[DoesntRequireTuning]
		private sealed class Definition : InteractionDefinition<Sim, Sarcophagus, MummyWander>
		{
			protected override bool Test(Sim a, Sarcophagus target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			public override string GetInteractionName(ref InteractionInstanceParameters parameters)
			{
				return Localization.LocalizeString("Gameplay/Interfaces/IGameObject/GhostWander:InteractionName");
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Target.mTombMummysTarget = null;
			if (!Actor.Wander(1f, 5f, RouteDistancePreference.PreferFurthestFromRouteOrigin, new int[1] { Target.RoomId }, doRouteFail: false))
			{
				Actor.RemoveExitReason(ExitReason.RouteFailed);
			}
			if (Target.mTombMummyBroadcaster != null)
			{
				Target.mTombMummyBroadcaster.Dispose();
				Target.mTombMummyBroadcaster = null;
			}
			Target.mTombMummyBroadcaster = new ReactionBroadcaster(Actor, kTombMummyWanderReactionParams, TombMummyWanderCallback);
			return DoLoop(ExitReason.Default, LoopDel, null);
		}

		private void LoopDel(StateMachineClient smc, LoopData loopData)
		{
			if (!Actor.Wander(5f, 10f, RouteDistancePreference.NoPreference, new int[1] { Target.RoomId }, doRouteFail: false) && !Actor.Wander(1f, 4f, RouteDistancePreference.NoPreference, new int[1] { Target.RoomId }, doRouteFail: false) && !Actor.HasExitReason(ExitReason.Finished))
			{
				Target.TombMummyPushReturnToSarcophagus(Actor, playSleepFX: false);
			}
			else
			{
				Target.TombMummyValidatePosition(Actor);
			}
		}

		public override void Cleanup()
		{
			base.Cleanup();
		}
	}

	private sealed class MummyFollow : Interaction<Sim, Sarcophagus>
	{
		[DoesntRequireTuning]
		private sealed class Definition : InteractionDefinition<Sim, Sarcophagus, MummyFollow>
		{
			protected override bool Test(Sim a, Sarcophagus target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			public override string GetInteractionName(ref InteractionInstanceParameters parameters)
			{
				return Localization.LocalizeString("Gameplay/Interfaces/IGameObject/GhostWander:InteractionName");
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			if (Target.mTombMummyBroadcaster != null)
			{
				Target.mTombMummyBroadcaster.Dispose();
				Target.mTombMummyBroadcaster = null;
			}
			Target.mTombMummyBroadcaster = new ReactionBroadcaster(Actor, kTombMummyFollowParams, TombMummyFollowCallback);
			return DoLoop(ExitReason.Default, LoopDel, null);
		}

		private void LoopDel(StateMachineClient smc, LoopData loopData)
		{
			Sim mTombMummysTarget = Target.mTombMummysTarget;
			if (mTombMummysTarget != null && Lot.AreInSameRoom(Actor, mTombMummysTarget))
			{
				Route route = Actor.CreateRoute();
				route.PlanToPoint(mTombMummysTarget.Position);
				route.DoRouteFail = false;
				if (!Actor.DoRoute(route) && Actor.HasExitReason(ExitReason.RouteFailed))
				{
					Target.TombMummyPushWander(Actor);
				}
				return;
			}
			if (Target.mTombMummyBroadcaster != null)
			{
				Target.mTombMummyBroadcaster.Dispose();
				Target.mTombMummyBroadcaster = null;
			}
			Actor.AddExitReason(ExitReason.Finished);
			string animationName = (RandomUtil.CoinFlip() ? "a_react_shrug1_standing_x" : "a_idle_neutral_scratchHead_x");
			Actor.PlaySoloAnimation(animationName, yield: true);
			if (!Target.TombMummyPushWander(Actor))
			{
				Target.TombMummyPushReturnToSarcophagus(Actor, playSleepFX: false);
			}
		}

		public override void Cleanup()
		{
			base.Cleanup();
		}
	}

	private sealed class MummyReturnToSarcophagus : SarcophagusInteraction
	{
		[DoesntRequireTuning]
		private sealed class Definition : InteractionDefinition<Sim, Sarcophagus, MummyReturnToSarcophagus>
		{
			protected override bool Test(Sim a, Sarcophagus target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			public override string GetInteractionName(ref InteractionInstanceParameters parameters)
			{
				return Localization.LocalizeString("Gameplay/Core/Lot/GoHome:InteractionName");
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		public bool CreateSleepFXAlarm;

		private bool mDestroyMummy;

		protected override bool Run()
		{
			if (!Target.RouteToSarcaphagus(Actor, null))
			{
				mDestroyMummy = true;
				return true;
			}
			StandardEntry();
			BeginCommodityUpdates();
			Target.ClearSimFromAllMummyFollows(Actor);
			EnterStateMachine("Sarcophagus", "Enter", "x", "sarcophagus");
			SetParameter("isMummy", paramValue: true);
			RegisterForHidingEvents();
			AnimateSim("TombMummyGetin");
			AnimateSim("Exit");
			StandardExit();
			mDestroyMummy = true;
			return true;
		}

		public override void Cleanup()
		{
			if (mDestroyMummy)
			{
				Target.TombMummyDestroy();
			}
			if (CreateSleepFXAlarm)
			{
				Target.CreateSleepFX();
			}
			base.Cleanup();
		}
	}

	private sealed class MummyDisintegrate : Interaction<Sim, Sarcophagus>
	{
		[DoesntRequireTuning]
		private sealed class Definition : InteractionDefinition<Sim, Sarcophagus, MummyDisintegrate>
		{
			protected override bool Test(Sim a, Sarcophagus target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			public override string GetInteractionName(ref InteractionInstanceParameters parameters)
			{
				return Localization.LocalizeString("Gameplay/Actors/Sim/ReapSoul:InteractionName");
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		private AshPile mPile;

		protected override bool Run()
		{
			Target.TombMummyRemoveBroadcaster();
			mPile = GlobalFunctions.CreateObjectOutOfWorld("AshPile") as AshPile;
			mPile.SetMaterial("mummy");
			EnterStateMachine("Sarcophagus", "Enter", "x", "sarcophagus");
			AddOneShotScriptEventHandler(101u, EventCallbackStartFade);
			AnimateSim("TombMummyDisintegrate");
			AnimateSim("Exit");
			return true;
		}

		public override void Cleanup()
		{
			Target.TombMummyDestroy();
			base.Cleanup();
		}

		private void EventCallbackStartFade(StateMachineClient sender, IEvent evt)
		{
			Actor.FadeOut();
			mPile.SetTooltipText(Actor.SimDescription.FirstName + " " + Actor.SimDescription.LastName);
			mPile.SetPosition(Actor.Position);
			mPile.AddToWorld();
			mPile.FadeIn();
		}
	}

	private sealed class DebugCreateTombMummy : Interaction<Sim, Sarcophagus>
	{
		[DoesntRequireTuning]
		private sealed class Definition : InteractionDefinition<Sim, Sarcophagus, DebugCreateTombMummy>
		{
			protected override bool Test(Sim a, Sarcophagus target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return target.mTombMummy == null;
			}

			public override string GetInteractionName(ref InteractionInstanceParameters parameters)
			{
				return "DEBUG: Create Tomb Mummy";
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			MummyChance mChanceForMummy = Target.mChanceForMummy;
			Target.TombMummyCreate();
			Target.mLookedIn = true;
			Target.mChanceForMummy = mChanceForMummy;
			return true;
		}
	}

	private sealed class DEBUGDestroyTombMummy : Interaction<Sim, Sarcophagus>
	{
		[DoesntRequireTuning]
		private sealed class Definition : InteractionDefinition<Sim, Sarcophagus, DEBUGDestroyTombMummy>
		{
			protected override bool Test(Sim a, Sarcophagus target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return target.mTombMummy != null;
			}

			public override string GetInteractionName(ref InteractionInstanceParameters parameters)
			{
				return "DEBUG: Destroy Tomb Mummy";
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Target.TombMummyDestroy();
			Target.mLookedIn = false;
			return true;
		}
	}

	private sealed class SetMummyChance : ImmediateInteraction<IActor, Sarcophagus>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<IActor, Sarcophagus, SetMummyChance>
		{
			public string MenuText = string.Empty;

			public string[] MenuPath;

			public MummyChance Chance;

			public Definition()
			{
			}

			public Definition(string text, string[] path, MummyChance chance)
			{
				MenuText = text;
				MenuPath = path;
				Chance = chance;
			}

			public override string[] GetPath(bool isFemale)
			{
				return MenuPath;
			}

			protected override void AddInteractions(InteractionObjectPair iop, IActor actor, Sarcophagus target, List<InteractionObjectPair> results)
			{
				string text = LocalizeString("SetMummyChance");
				foreach (MummyChance value in Enum.GetValues(typeof(MummyChance)))
				{
					if (value != MummyChance.AlreadyCreated)
					{
						string text2 = LocalizeString(value.ToString());
						results.Add(new InteractionObjectPair(new Definition(text2, new string[1] { text }, value), iop.Target));
					}
				}
			}

			protected override string GetInteractionName(IActor a, Sarcophagus target, InteractionObjectPair interaction)
			{
				return MenuText;
			}

			protected override bool Test(IActor a, Sarcophagus target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Definition definition = InteractionDefinition as Definition;
			Target.mChanceForMummy = definition.Chance;
			Target.UpdateCreateMummyOnLookIn();
			return true;
		}
	}

	private enum InteractionAction
	{
		SetGender,
		SetFirstName,
		SetLastName,
		ShowFullName,
		Clear
	}

	private sealed class SetTombMummySpecifics : ImmediateInteraction<IActor, Sarcophagus>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<IActor, Sarcophagus, SetTombMummySpecifics>
		{
			public string MenuText = string.Empty;

			public string[] MenuPath;

			public InteractionAction SpecificAction = InteractionAction.Clear;

			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate2;

			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate3;

			public Definition()
			{
			}

			public Definition(string text, string[] path, InteractionAction specificAction)
			{
				MenuText = text;
				MenuPath = path;
				SpecificAction = specificAction;
			}

			public override string[] GetPath(bool isFemale)
			{
				return MenuPath;
			}

			protected override void AddInteractions(InteractionObjectPair iop, IActor actor, Sarcophagus target, List<InteractionObjectPair> results)
			{
				string name = (target.mSpecificGenderIsMale ? "SetFemale" : "SetMale");
				results.Add(new InteractionObjectPair(new Definition(LocalizeString(name), new string[1] { LocalizeString("SetTombMummySpecifics") }, InteractionAction.SetGender), target));
				results.Add(new InteractionObjectPair(new Definition(LocalizeString("FirstName"), new string[1] { LocalizeString("SetTombMummySpecifics") }, InteractionAction.SetFirstName), target));
				results.Add(new InteractionObjectPair(new Definition(LocalizeString("LastName"), new string[1] { LocalizeString("SetTombMummySpecifics") }, InteractionAction.SetLastName), target));
				results.Add(new InteractionObjectPair(new Definition(LocalizeString("ShowFullName"), new string[1] { LocalizeString("SetTombMummySpecifics") }, InteractionAction.ShowFullName), target));
				results.Add(new InteractionObjectPair(new Definition(LocalizeString("ClearAll"), new string[1] { LocalizeString("SetTombMummySpecifics") }, InteractionAction.Clear), target));
			}

			public override string GetInteractionName(ref InteractionInstanceParameters parameters)
			{
				return MenuText;
			}

			protected override bool Test(IActor a, Sarcophagus target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (SpecificAction == InteractionAction.ShowFullName)
				{
					if (target.mSpecificFirstNameIndex == -1)
					{
						greyedOutTooltipCallback = () => LocalizeString("NeedFirstName");
						return false;
					}
					if (target.mSpecificLastNameIndex == -1)
					{
						greyedOutTooltipCallback = () => LocalizeString("NeedLastName");
						return false;
					}
				}
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Definition definition = InteractionDefinition as Definition;
			string empty = string.Empty;
			switch (definition.SpecificAction)
			{
			case InteractionAction.SetGender:
				Target.mSpecificGenderIsMale = !Target.mSpecificGenderIsMale;
				break;
			case InteractionAction.SetFirstName:
				empty = StringInputDialog.Show(LocalizeString("FirstName"), LocalizeString("SetFirstNameDialog"), "", numbersOnly: true);
				if (empty != "")
				{
					Target.mSpecificFirstNameIndex = int.Parse(empty);
				}
				break;
			case InteractionAction.SetLastName:
				empty = StringInputDialog.Show(LocalizeString("LastName"), LocalizeString("SetLastNameDialog"), "", numbersOnly: true);
				if (empty != "")
				{
					Target.mSpecificLastNameIndex = int.Parse(empty);
				}
				break;
			case InteractionAction.ShowFullName:
			{
				string text = Target.GetSpecificLocalizedFirstName() + " " + Target.GetSpecificLocalizedLastName();
				StyledNotification.Format format = new StyledNotification.Format(LocalizeString("ShowFullNameTNS", text), StyledNotification.NotificationStyle.kSystemMessage);
				StyledNotification.Show(format);
				break;
			}
			case InteractionAction.Clear:
				Target.mSpecificFirstNameIndex = -1;
				Target.mSpecificLastNameIndex = -1;
				break;
			}
			return true;
		}
	}

	private const uint kChanceForMummy = 144840148u;

	private const uint kSpecificFirstNameIndex = 144840156u;

	private const uint kSpecificLastNameIndex = 144840161u;

	private const uint kSpecificGenderIsMale = 144840167u;

	private const string kWorldBuilderDataName = "Sarcophagus";

	private static readonly string sLocalizationKey = "Sims3.Gameplay.Objects.TombObjects".Substring(6).Replace('.', '/') + "/Sarcophagus";

	private MummyChance mChanceForMummy;

	private bool mLookedIn;

	private ReactionBroadcaster mTombMummyBroadcaster;

	private Sim mTombMummy;

	private Sim mTombMummysTarget;

	private int mSpecificFirstNameIndex = -1;

	private int mSpecificLastNameIndex = -1;

	private bool mSpecificGenderIsMale = true;

	private bool mCreateMummyOnLookIn;

	private AlarmHandle mMummySleepFXAlarm = AlarmHandle.kInvalidHandle;

	private VisualEffect mSleepFX;

	[TunableComment("The minimum number of Sim minutes a Sim will look inside the sarcophagus.")]
	[Tunable]
	private static float kLookInsideMinMinutes = 5f;

	[Tunable]
	[TunableComment("The max number of Sim minutes a Sim will look inside the sarcophagus.")]
	private static float kLookInsideMaxMinutes = 5f;

	[TunableComment("The number of minutes added to the look inside time if the Sim finds treasure.  This time allows the treasure fx to play.")]
	[Tunable]
	private static float kLookInsideAdditionalMinutesTreasure = 5f;

	[Tunable]
	[TunableComment("The chance a Sim will 'fail' at looking inside.")]
	private static float kLookInsideFailureChance = 15f;

	[Tunable]
	[TunableComment("If the sarcophagus' mummy chance is set to 'Tunable', this is the chance a mummy will be present.")]
	private static float kLookInsideMummyChance = 15f;

	[Tunable]
	[TunableComment("A Sim's energy must be <= to this value to be able to 'Rest' in the sarcophagus.")]
	private static float kRestEnergyRequirement = -25f;

	[TunableComment("The motive delta for energy while a Sim is sleeping.")]
	[Tunable]
	private static float kSleepEnergyMotiveDelta = 25f;

	[Tunable]
	private static ViewTuning kViewTuning = new ViewTuning();

	[TunableComment("Broadcaster for reacting to a tomb mummy who is wandering.")]
	[Tunable]
	private static ReactionBroadcasterParams kTombMummyWanderReactionParams = new ReactionBroadcasterParams();

	[TunableComment("Broadcaster for reacting to a tomb mummy who is wandering.")]
	[Tunable]
	private static ReactionBroadcasterParams kTombMummyFollowParams = new ReactionBroadcasterParams();

	[Tunable]
	[TunableComment("The minimum athletic skill for a tomb mummy.")]
	private static int kTombMummyAthleticSkillMin = 5;

	[TunableComment("The max athletic skill for a tomb mummy.")]
	[Tunable]
	private static int kTombMummyAthleticSkillMax = 10;

	[TunableComment("The minimum martial arts skill for a tomb mummy.")]
	[Tunable]
	private static int kTombMummyMartialArtsMin = 5;

	[TunableComment("The max martial arts skill for a tomb mummy.")]
	[Tunable]
	private static int kTombMummyMartialArtsMax = 10;

	[Tunable]
	[TunableComment("Range: Negative integer. Strength of the fear buff after seeing a mummy inside the sarcophagus.")]
	private static int kFearBuffMoodValueSeenMummy = -30;

	[Tunable]
	[TunableComment("Range: Negative integer. If a Sim has a fear buff with a greater strength than this value, they will not look inside a sarcophagus.")]
	private static int kFearBuffThresholdLookInside = -45;

	[Tunable]
	[TunableComment("The number of Sim minutes the 'zzz' FX will play on the sarcophagus after the mummy returns from eating mummy snacks.")]
	private static float kMummySleepFXDuration = 25f;

	[Tunable]
	[TunableComment("Range: 0-100. Chance of Sim getting Pregnant on TryForBaby.")]
	private static float kBabyMadeChance = 20f;

	[Tunable]
	[TunableComment("Assuming the two Sims can be romantic, if the LTR is >= than this value this, the Sim will be in the Sim Picker for WooHoo.")]
	private static float kWooHooLTRAcceptRegardlessofMood = 80f;

	[TunableComment("Assuming the two Sims can be romantic, if the LTR is >= than this value this, the Sim will be in the Sim Picker for WooHoo if their mood is >= kWooHooMinMood.")]
	[Tunable]
	private static float kWooHooLTRAcceptIfInGoodMood = 60f;

	[Tunable]
	[TunableComment("This is the mood requirement for kWooHooLTRAcceptIfInGoodMood.")]
	private static int kWooHooMinMood = 40;

	private static readonly string[] kWorldBuilderDataKeyRemap = new string[8]
	{
		144840148u.ToString(),
		"ChanceForMummy",
		144840156u.ToString(),
		"SpecificFirstNameIndex",
		144840161u.ToString(),
		"SpecificLastNameIndex",
		144840167u.ToString(),
		"SpecificGenderIsMale"
	};

	public override ViewTuning TuningView => kViewTuning;

	public virtual float SleepEnergyDelta => kSleepEnergyMotiveDelta;

	public static string LocalizeString(bool isFemale, string name, params object[] parameters)
	{
		return Localization.LocalizeString(isFemale, sLocalizationKey + ":" + name, parameters);
	}

	public static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString(isFemale: false, sLocalizationKey + ":" + name, parameters);
	}

	public override void OnCreation()
	{
		base.OnCreation();
		UpdateCreateMummyOnLookIn();
	}

	public override void OnStartup()
	{
		AddComponent<TreasureComponent>(new object[0]);
		AddComponent<TombObjectStaticComponent>(new object[0]);
		AddComponent<AdventureComponent>(new object[0]);
		AddInteraction(LookInside.Singleton);
		AddInteraction(Hide.Singleton);
		AddInteraction(Sleep.Singleton);
		AddInteraction(WooHoo.Singleton);
		AddInteraction(TryForBaby.Singleton);
		AddInteraction(SummonPlayableMummy.Singleton);
		base.OnStartup();
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		buildBuyInteractions.Add(SetMummyChance.Singleton);
		base.AddBuildBuyInteractions(buildBuyInteractions);
	}

	protected override void AddDebugInteractions(List<InteractionDefinition> debugInteractions)
	{
		base.AddDebugInteractions(debugInteractions);
		debugInteractions.Add(DebugCreateTombMummy.Singleton);
		debugInteractions.Add(DEBUGDestroyTombMummy.Singleton);
	}

	public void OnAddTombObjectComponent(ITombObjectComponent tombObjectComponent)
	{
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.ReleaseTombMummy, ActivatedBehaviorCreateTombMummy);
		tombObjectComponent.RegisterTrigger(Trigger.Open);
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		writer.WriteUint32(144840148u, (uint)mChanceForMummy);
		writer.WriteInt32(144840156u, mSpecificFirstNameIndex);
		writer.WriteInt32(144840161u, mSpecificLastNameIndex);
		writer.WriteBool(144840167u, mSpecificGenderIsMale);
		return base.ExportContent(resKeyTable, objIdTable, writer);
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		reader.ReadUint32(144840148u, out var value, 0u);
		if (Enum.IsDefined(typeof(MummyChance), value))
		{
			mChanceForMummy = (MummyChance)value;
		}
		else
		{
			mChanceForMummy = MummyChance.None;
		}
		reader.ReadInt32(144840156u, out mSpecificFirstNameIndex, -1);
		reader.ReadInt32(144840161u, out mSpecificLastNameIndex, -1);
		reader.ReadBool(144840167u, out mSpecificGenderIsMale, defaultValue: true);
		UpdateCreateMummyOnLookIn();
		return base.ImportContent(resKeyTable, objIdTable, reader);
	}

	public void SaveWorldBuilderData()
	{
		WorldBuilderData.Set("Sarcophagus", ObjectId, "ChanceForMummy", mChanceForMummy, MummyChance.None);
		WorldBuilderData.Set("Sarcophagus", ObjectId, "SpecificFirstNameIndex", mSpecificFirstNameIndex, -1);
		WorldBuilderData.Set("Sarcophagus", ObjectId, "SpecificLastNameIndex", mSpecificLastNameIndex, -1);
		WorldBuilderData.Set("Sarcophagus", ObjectId, "SpecificGenderIsMale", mSpecificGenderIsMale, defaultValue: true);
	}

	public void LoadWorldBuilderData()
	{
		WorldBuilderData.SetKeyRemap(kWorldBuilderDataKeyRemap);
		WorldBuilderData.Get("Sarcophagus", ObjectId, "ChanceForMummy", ref mChanceForMummy);
		WorldBuilderData.Get("Sarcophagus", ObjectId, "SpecificFirstNameIndex", ref mSpecificFirstNameIndex);
		WorldBuilderData.Get("Sarcophagus", ObjectId, "SpecificLastNameIndex", ref mSpecificLastNameIndex);
		WorldBuilderData.Get("Sarcophagus", ObjectId, "SpecificGenderIsMale", ref mSpecificGenderIsMale);
		UpdateCreateMummyOnLookIn();
	}

	public override void Dispose()
	{
		CommonCleanup();
		base.Dispose();
	}

	protected override void DoReset(ResetInformation resetInformation)
	{
		CommonCleanup();
		base.DoReset(resetInformation);
	}

	public override bool HandToolAllowUserPickup()
	{
		if (mTombMummy != null)
		{
			return false;
		}
		return base.HandToolAllowUserPickup();
	}

	private void CommonCleanup()
	{
		if (mTombMummyBroadcaster != null)
		{
			mTombMummyBroadcaster.Dispose();
			mTombMummyBroadcaster = null;
		}
		if (mTombMummy != null)
		{
			mTombMummy.Destroy();
			mTombMummy = null;
		}
		if (mMummySleepFXAlarm != AlarmHandle.kInvalidHandle)
		{
			AlarmManager.Global.RemoveAlarm(mMummySleepFXAlarm);
			mMummySleepFXAlarm = AlarmHandle.kInvalidHandle;
		}
		if (mSleepFX != null)
		{
			mSleepFX.Dispose();
			mSleepFX = null;
		}
	}

	public override bool PackForMovingOverride()
	{
		return true;
	}

	private bool RouteToSarcaphagus(Sim sim, Sim simToIgnore)
	{
		if (simToIgnore == null)
		{
			return sim.RouteToSlotAndCheckInUse(this, Slot.RoutingSlot_0);
		}
		Route route = sim.CreateRoute();
		route.AddObjectToIgnoreForRoute(simToIgnore.ObjectId);
		route.PlanToSlot(this, Slot.RoutingSlot_0);
		return sim.DoRoute(route);
	}

	public static List<Sim> GetPotentialLovers(Sim sim)
	{
		List<Sim> list = new List<Sim>();
		foreach (Sim sim2 in sim.LotCurrent.GetSims())
		{
			if (sim.CanGetRomantic(sim2, tryingToWooHoo: true) && DoSimsMeetWooHooRequirements(sim, sim2))
			{
				list.Add(sim2);
			}
		}
		return list;
	}

	public static List<Sim> GetPotentialMates(Sim sim)
	{
		GreyedOutTooltipCallback greyedOutTooltipCallback = null;
		List<Sim> list = new List<Sim>();
		foreach (Sim sim2 in sim.LotCurrent.GetSims())
		{
			if (sim.CanGetRomantic(sim2, tryingToWooHoo: true) && Pregnancy.CanTryForBaby(sim, sim2, ref greyedOutTooltipCallback) && DoSimsMeetWooHooRequirements(sim, sim2))
			{
				list.Add(sim2);
			}
		}
		return list;
	}

	private static bool DoSimsMeetWooHooRequirements(Sim actor, Sim target)
	{
		Relationship relationship = Relationship.Get(actor, target, createIfNone: false);
		if (relationship != null && (relationship.LTR.Liking >= kWooHooLTRAcceptRegardlessofMood || (relationship.LTR.Liking >= kWooHooLTRAcceptIfInGoodMood && target.MoodManager.MoodValue >= kWooHooMinMood && actor.MoodManager.MoodValue >= kWooHooMinMood)))
		{
			return true;
		}
		return false;
	}

	public virtual void PreSleepBehavior(Sim Actor)
	{
	}

	public virtual void PostSleepBehavior(Sim Actor, float minutesSlept, bool fromCleanup)
	{
	}

	private bool DoesSimHaveAllMummyIngredients(Sim sim)
	{
		List<CollectableRelic> mummyIngredients = GetMummyIngredients(sim, setInUse: false);
		return mummyIngredients.Count >= 5;
	}

	private List<CollectableRelic> GetMummyIngredients(Sim sim, bool setInUse)
	{
		List<CollectableRelic> list = new List<CollectableRelic>(5);
		foreach (CollectableRelic item in sim.Inventory.FindAll<CollectableRelic>(checkInUse: true))
		{
			if (item.RelicCollectionType != CollectableRelicType.ConopicJars)
			{
				continue;
			}
			list.Add(item);
			if (list.Count != 5 || !setInUse)
			{
				continue;
			}
			foreach (CollectableRelic item2 in list)
			{
				sim.Inventory.SetInUse(item2);
			}
		}
		return list;
	}

	private void EnableRoutingFootprint(Sim sim)
	{
		EnableFootprintAndPushSims(824351308u, sim);
	}

	private void DisableRoutingFootprint()
	{
		DisableFootprint(824351308u);
	}

	public bool IsTombMummysSarcophagus(Sim mummy)
	{
		return mummy == mTombMummy;
	}

	public bool CanTurnOnUnderstandingGlowNow()
	{
		return true;
	}

	public bool ShouldUnderstandingGlowBePositive()
	{
		return !mCreateMummyOnLookIn;
	}

	public bool ShouldConsumeSandsOfUnderstanding()
	{
		return !mLookedIn;
	}

	public SandsOfUnderstandingComponent.OnGlowCallback GetOnGlowCallback()
	{
		return null;
	}

	public string GetStatusText()
	{
		string text = LocalizeString("NoName");
		if (mSpecificFirstNameIndex != -1 && mSpecificLastNameIndex != -1)
		{
			text = SimDescription.GetLocalizedFullName(GetSpecificLocalizedFirstName(), GetSpecificLocalizedLastName());
		}
		string text2 = LocalizeString("MummyState", mSpecificGenderIsMale ? LocalizeString("Male") : LocalizeString("Female"), text);
		float num = 0f;
		if (mChanceForMummy == MummyChance.Definitely)
		{
			num = 100f;
		}
		else
		{
			num = ((mChanceForMummy != MummyChance.None) ? kLookInsideMummyChance : 0f);
		}
		return text2 + "\n\n" + LocalizeString("MummyChance", num);
	}

	private SimDescription CreateMummyDescription()
	{
		SimUtils.SimCreationSpec simCreationSpec = new SimUtils.SimCreationSpec();
		simCreationSpec.Normalize();
		simCreationSpec.Age = CASAgeGenderFlags.Elder;
		if (mSpecificFirstNameIndex != -1 && mSpecificLastNameIndex != -1)
		{
			simCreationSpec.Gender = (mSpecificGenderIsMale ? CASAgeGenderFlags.Male : CASAgeGenderFlags.Female);
			simCreationSpec.GivenName = GetSpecificLocalizedFirstName();
			simCreationSpec.FamilyName = GetSpecificLocalizedLastName();
		}
		else
		{
			simCreationSpec.FamilyName = SimUtils.GetRandomMummyFamilyName();
			simCreationSpec.GivenName = SimUtils.GetRandomMummyGivenName(simCreationSpec.IsMale);
		}
		return simCreationSpec.Instantiate(WorldName.Egypt, uint.MaxValue);
	}

	private Sim AddPlayableMummyToHousehold(Household household)
	{
		SimDescription simDescription = CreateMummyDescription();
		if (household.CanAddSimDescriptionToHousehold(simDescription))
		{
			simDescription.HomeWorld = household.SimDescriptions[0].HomeWorld;
			household.Add(simDescription);
			return simDescription.Instantiate(Vector3.OutOfWorld);
		}
		simDescription.Dispose();
		return null;
	}

	private void TombMummyCreate()
	{
		SimDescription simDescription = CreateMummyDescription();
		simDescription.Contactable = false;
		Household.NpcHousehold.Add(simDescription);
		mTombMummy = simDescription.Instantiate(Vector3.OutOfWorld);
		mTombMummy.SetHiddenFlags(HiddenFlags.Everything);
		mTombMummy.OccultManager.AddOccultType(OccultTypes.Mummy, addOutfit: true, isReward: false, fromRestore: false);
		mTombMummy.Autonomy.IncrementAutonomyDisabled();
		mTombMummy.Motives.FreezeDecayEverythingExcept();
		Skill skill = mTombMummy.SkillManager.AddElement(SkillNames.Athletic);
		int targetLevel = RandomUtil.GetInt(kTombMummyAthleticSkillMin, kTombMummyAthleticSkillMax);
		skill.ForceSkillLevelUp(targetLevel);
		skill = mTombMummy.SkillManager.AddElement(SkillNames.MartialArts);
		targetLevel = RandomUtil.GetInt(kTombMummyMartialArtsMin, kTombMummyMartialArtsMax);
		skill.ForceSkillLevelUp(targetLevel);
		mTombMummy.CanIndividualSimReact = false;
		mTombMummy.DisablePieMenuOnSim = true;
		mTombMummy.GreetSimOnLot(LotCurrent);
		if (mTombMummy.TraitManager.HasElement(TraitNames.Good))
		{
			mTombMummy.TraitManager.RemoveElement(TraitNames.Good);
			mTombMummy.TraitManager.AddElement(TraitNames.Evil);
		}
		if (TombMummyPushExitSarcophagus(mTombMummy))
		{
			mChanceForMummy = MummyChance.AlreadyCreated;
			UpdateCreateMummyOnLookIn();
		}
		else
		{
			TombMummyDestroy();
		}
	}

	private bool ActivatedBehaviorCreateTombMummy(Sim sim)
	{
		if (InWorld && mChanceForMummy != MummyChance.AlreadyCreated)
		{
			TombMummyCreate();
			return true;
		}
		return false;
	}

	private void TombMummyDestroy()
	{
		if (mTombMummy != null)
		{
			TombMummyRemoveBroadcaster();
			Household.NpcHousehold.Remove(mTombMummy.SimDescription);
			mTombMummy.FadeOut(yield: false, destroyObject: true);
			mTombMummy = null;
			mTombMummysTarget = null;
		}
	}

	private void TombMummyRemoveBroadcaster()
	{
		if (mTombMummyBroadcaster != null)
		{
			mTombMummyBroadcaster.Dispose();
			mTombMummyBroadcaster = null;
		}
	}

	public bool TombMummyPushExitSarcophagus(Sim mummy)
	{
		InteractionInstance entry = MummyExitSarcophagus.Singleton.CreateInstance(this, mummy, new InteractionPriority(InteractionPriorityLevel.MaxDeath), isAutonomous: false, cancellableByPlayer: false);
		mummy.InteractionQueue.CancelAllInteractions();
		return mummy.InteractionQueue.AddNext(entry);
	}

	public bool TombMummyPushWander(Sim mummy)
	{
		InteractionInstance entry = MummyWander.Singleton.CreateInstance(this, mummy, new InteractionPriority(InteractionPriorityLevel.MaxDeath), isAutonomous: false, cancellableByPlayer: false);
		mummy.InteractionQueue.CancelAllInteractions();
		return mummy.InteractionQueue.AddNext(entry);
	}

	public bool TombMummyPushReturnToSarcophagus(Sim mummy, bool playSleepFX)
	{
		InteractionInstance interactionInstance = MummyReturnToSarcophagus.Singleton.CreateInstance(this, mummy, new InteractionPriority(InteractionPriorityLevel.MaxDeath), isAutonomous: false, cancellableByPlayer: false);
		(interactionInstance as MummyReturnToSarcophagus).CreateSleepFXAlarm = playSleepFX;
		mummy.InteractionQueue.CancelAllInteractions();
		return mummy.InteractionQueue.AddNext(interactionInstance);
	}

	public bool TombMummyPushDisintegrate(Sim mummy)
	{
		InteractionInstance entry = MummyDisintegrate.Singleton.CreateInstance(this, mummy, new InteractionPriority(InteractionPriorityLevel.MaxDeath), isAutonomous: false, cancellableByPlayer: false);
		mummy.InteractionQueue.CancelAllInteractions();
		return mummy.InteractionQueue.AddNext(entry);
	}

	public static Sarcophagus FindTombMummysSarcophagus(Sim mummy)
	{
		foreach (Sarcophagus item in mummy.LotCurrent.GetObjectsInRoom<Sarcophagus>(mummy.RoomId))
		{
			if (item.mTombMummy == mummy)
			{
				return item;
			}
		}
		return null;
	}

	private bool IsTombMummyInRoomWithObject(IGameObject obj)
	{
		foreach (Sarcophagus item in obj.LotCurrent.GetObjectsInRoom<Sarcophagus>(obj.RoomId))
		{
			if (item.mTombMummy != null)
			{
				return true;
			}
		}
		return false;
	}

	private void ClearSimFromAllMummyFollows(Sim sim)
	{
		foreach (Sarcophagus item in sim.LotCurrent.GetObjectsInRoom<Sarcophagus>(sim.RoomId))
		{
			if (item.mTombMummysTarget == sim)
			{
				item.mTombMummysTarget = null;
			}
		}
	}

	private static void TombMummyWanderCallback(Sim s, ReactionBroadcaster rb)
	{
		if (s.BuffManager.HasElement(BuffNames.BlessingOfTheSphinx))
		{
			return;
		}
		Sim sim = rb.BroadcastingObject as Sim;
		if ((s.GetHiddenFlags() & HiddenFlags.Everything) != 0 || s.IsSleeping || !(sim.InteractionQueue.RunningInteraction is MummyWander))
		{
			return;
		}
		if (s.SimDescription.IsMummy)
		{
			ThoughtBalloonManager.BalloonData balloonData = new ThoughtBalloonManager.DoubleBalloonData("balloon_hearts", s.GetThoughtBalloonThumbnailKey());
			balloonData.BalloonType = ThoughtBalloonTypes.kSpeechBalloon;
			balloonData.HighAxis = ThoughtBalloonAxis.kLike;
			sim.ThoughtBalloonManager.ShowBalloon(balloonData);
		}
		else if (s.SimDescription.TeenOrAbove)
		{
			Sarcophagus sarcophagus = FindTombMummysSarcophagus(sim);
			if (sarcophagus != null && sarcophagus.mTombMummysTarget == null)
			{
				sarcophagus.mTombMummysTarget = s;
				sim.AddExitReason(ExitReason.Finished);
				sim.InteractionQueue.CancelAllInteractions();
				InteractionInstance entry = MummyFollow.Singleton.CreateInstance(sarcophagus, sim, new InteractionPriority(InteractionPriorityLevel.MaxDeath), isAutonomous: false, cancellableByPlayer: false);
				sim.InteractionQueue.AddNext(entry);
			}
		}
	}

	private static void TombMummyFollowCallback(Sim s, ReactionBroadcaster rb)
	{
		Sim sim = rb.BroadcastingObject as Sim;
		Sarcophagus sarcophagus = FindTombMummysSarcophagus(sim);
		if (sarcophagus != null && sarcophagus.mTombMummysTarget == s)
		{
			if (Lot.AreInSameRoom(sim, s) && Route.IsRouteToObjectUnobstructed(sim.ObjectId, s.Position, sim.SimRoutingComponent.GetRouteOptions(), s.ObjectId, sim.SimDescription.AgeGenderSpecies) == BlockedStatus.Unobstructed && sim.InteractionQueue.AddNext(new SocialInteractionA.Definition("Tomb Mummy Attack", null, null, initialGreet: false).CreateInstance(s, sim, new InteractionPriority(InteractionPriorityLevel.High), isAutonomous: false, cancellableByPlayer: false)))
			{
				sim.AddExitReason(ExitReason.Finished);
			}
			else
			{
				sarcophagus.mTombMummysTarget = null;
			}
		}
	}

	private string GetSpecificLocalizedFirstName()
	{
		string text = (mSpecificGenderIsMale ? "Gameplay/SimNames/Mummy/MaleName:Name" : "Gameplay/SimNames/Mummy/FemaleName:Name");
		text += mSpecificFirstNameIndex;
		return Localization.LocalizeString(text);
	}

	private string GetSpecificLocalizedLastName()
	{
		return Localization.LocalizeString("Gameplay/SimNames/Mummy/FamilyName:Name" + mSpecificLastNameIndex);
	}

	private void UpdateCreateMummyOnLookIn()
	{
		if (mChanceForMummy == MummyChance.Definitely || (mChanceForMummy == MummyChance.Tunable && RandomUtil.RandomChance(kLookInsideMummyChance)))
		{
			mCreateMummyOnLookIn = true;
		}
		else
		{
			mCreateMummyOnLookIn = false;
		}
	}

	private void SleepFXAlarmCallback()
	{
		if (mSleepFX != null)
		{
			mSleepFX.Stop();
			mSleepFX.Dispose();
			mSleepFX = null;
		}
		mMummySleepFXAlarm = AlarmHandle.kInvalidHandle;
	}

	private void CreateSleepFX()
	{
		mSleepFX = VisualEffect.Create("zzz");
		mSleepFX.ParentTo(this, Slot.FXJoint_1);
		mSleepFX.Start();
		mMummySleepFXAlarm = AlarmManager.Global.AddAlarm(kMummySleepFXDuration, TimeUnit.Minutes, SleepFXAlarmCallback, "Tomb Mummy Sleep FX", AlarmType.AlwaysPersisted, this);
	}

	private void TombMummyValidatePosition(Sim mummy)
	{
		if (mummy.LotCurrent != LotCurrent || mummy.RoomId != RoomId)
		{
			mummy.AddExitReason(ExitReason.Finished);
			if (!TombMummyPushReturnToSarcophagus(mummy, playSleepFX: false))
			{
				TombMummyDestroy();
			}
		}
	}

	public bool IsInteractionConsideredIndoors(InteractionInstance instance)
	{
		return instance is ICountsAsIndoorInteraction;
	}
}
