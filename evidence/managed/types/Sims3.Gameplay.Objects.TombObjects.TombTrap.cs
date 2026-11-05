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
using Sims3.Gameplay.Controllers;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.EventSystem;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Services;
using Sims3.Gameplay.Skills;
using Sims3.Gameplay.Tutorial;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;
using Sims3.SimIFace.CustomContent;
using Sims3.SimIFace.Enums;
using Sims3.SimIFace.RouteDestinations;
using Sims3.UI;
using Sims3.UI.Hud;

namespace Sims3.Gameplay.Objects.TombObjects;

public abstract class TombTrap : GameObject, IBuildBuyListener, ICanHavePuddlesUnderMe, ITombTrap, IHasWorldBuilderData, ISandsOfUnderstandingable, ICanHasTombObjectComponent, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent, IGivesTombObjectStatus
{
	private enum TrapState : uint
	{
		DormantAndHidden,
		ArmedAndHidden,
		ArmedAndVisible,
		FiringAndVisible,
		DisarmedAndVisible
	}

	private sealed class SetCanBeDisarmed : ImmediateInteraction<Sim, TombTrap>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, TombTrap, SetCanBeDisarmed>
		{
			public bool CanBeDisarmed = true;

			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate1;

			public Definition()
			{
			}

			private Definition(bool canBeDisarmed)
			{
				CanBeDisarmed = canBeDisarmed;
			}

			protected override bool Test(Sim actor, TombTrap target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.mCanBeDisarmed == CanBeDisarmed)
				{
					greyedOutTooltipCallback = () => TombTrap.LocalizeString("AlreadySelectedTooltip");
					return false;
				}
				return true;
			}

			protected override string GetInteractionName(Sim actor, TombTrap target, InteractionObjectPair iop)
			{
				if (CanBeDisarmed)
				{
					return LocalizeString("MakeDisarmableInteractionName");
				}
				return LocalizeString("MakeNotDisarmableInteractionName");
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, TombTrap target, List<InteractionObjectPair> results)
			{
				Definition interaction = new Definition(canBeDisarmed: false);
				InteractionObjectPair item = new InteractionObjectPair(interaction, target);
				results.Add(item);
				base.AddInteractions(iop, actor, target, results);
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/TombTrap/SetCanBeDisarmed";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/TombTrap/SetCanBeDisarmed:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.mCanBeDisarmed = (InteractionDefinition as Definition).CanBeDisarmed;
			return true;
		}
	}

	private sealed class SetTrapType : ImmediateInteraction<Sim, TombTrap>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, TombTrap, SetTrapType>
		{
			public TrapType TrapType;

			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate3;

			public Definition()
			{
			}

			private Definition(TrapType trapType)
			{
				TrapType = trapType;
			}

			protected override bool Test(Sim actor, TombTrap target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.mTrapType == TrapType)
				{
					greyedOutTooltipCallback = () => TombTrap.LocalizeString("AlreadySelectedTooltip");
					return false;
				}
				return true;
			}

			protected override string GetInteractionName(Sim actor, TombTrap target, InteractionObjectPair iop)
			{
				return TombTrap.LocalizeString("TrapType" + TrapType);
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, TombTrap target, List<InteractionObjectPair> results)
			{
				foreach (TrapType value in Enum.GetValues(typeof(TrapType)))
				{
					Definition interaction = new Definition(value);
					InteractionObjectPair item = new InteractionObjectPair(interaction, target);
					results.Add(item);
				}
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { LocalizeString("PathName") };
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/TombTrap/SetTrapType";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/TombTrap/SetTrapType:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.mTrapType = (InteractionDefinition as Definition).TrapType;
			Target.RefreshState();
			return true;
		}
	}

	private sealed class SetTrapState : ImmediateInteraction<Sim, TombTrap>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, TombTrap, SetTrapState>
		{
			public TrapState TrapState = TrapState.DisarmedAndVisible;

			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate5;

			public Definition()
			{
			}

			private Definition(TrapState trapState)
			{
				TrapState = trapState;
			}

			protected override bool Test(Sim actor, TombTrap target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.mTrapState == TrapState)
				{
					greyedOutTooltipCallback = () => TombTrap.LocalizeString("AlreadySelectedTooltip");
					return false;
				}
				return true;
			}

			protected override string GetInteractionName(Sim actor, TombTrap target, InteractionObjectPair iop)
			{
				return TombTrap.LocalizeString("TrapState" + TrapState);
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, TombTrap target, List<InteractionObjectPair> results)
			{
				foreach (TrapState value in Enum.GetValues(typeof(TrapState)))
				{
					Definition interaction = new Definition(value);
					InteractionObjectPair item = new InteractionObjectPair(interaction, target);
					results.Add(item);
				}
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { LocalizeString("PathName") };
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/TombTrap/SetTrapState";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/TombTrap/SetTrapState:" + name, parameters);
		}

		protected override bool Run()
		{
			TrapState mTrapState = Target.mTrapState;
			Target.mTrapState = (InteractionDefinition as Definition).TrapState;
			Target.EnterState(mTrapState, Target.mTrapState);
			return true;
		}
	}

	private sealed class SetTrapFireRate : ImmediateInteraction<Sim, TombTrap>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, TombTrap, SetTrapFireRate>
		{
			public int FireRateIndex;

			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate7;

			public Definition()
			{
			}

			private Definition(int fireRateIndex)
			{
				FireRateIndex = fireRateIndex;
			}

			protected override bool Test(Sim actor, TombTrap target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.mFireRateIndex == FireRateIndex)
				{
					greyedOutTooltipCallback = () => TombTrap.LocalizeString("AlreadySelectedTooltip");
					return false;
				}
				return true;
			}

			protected override string GetInteractionName(Sim actor, TombTrap target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName", kFireRateMinutesOn[FireRateIndex], kFireRateMinutesOff[FireRateIndex]);
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, TombTrap target, List<InteractionObjectPair> results)
			{
				for (int i = 0; i < kFireRateMinutesOn.Length; i++)
				{
					Definition interaction = new Definition(i);
					InteractionObjectPair item = new InteractionObjectPair(interaction, target);
					results.Add(item);
				}
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { LocalizeString("PathName") };
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/TombTrap/SetTrapFireRate";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/TombTrap/SetTrapFireRate:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.mFireRateIndex = (InteractionDefinition as Definition).FireRateIndex;
			Target.RefreshState();
			return true;
		}
	}

	private sealed class SetTrapFireTimeForFireOnce : ImmediateInteraction<Sim, TombTrap>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, TombTrap, SetTrapFireTimeForFireOnce>
		{
			protected override bool Test(Sim actor, TombTrap target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override string GetInteractionName(Sim actor, TombTrap target, InteractionObjectPair iop)
			{
				return LocalizeString("InteractionName", target.mMinutesToFireOnceFor);
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/TombTrap/SetTrapFireTimeForFireOnce";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/TombTrap/SetTrapFireTimeForFireOnce:" + name, parameters);
		}

		protected override bool Run()
		{
			string s = StringInputDialog.Show(LocalizeString("InteractionName", Target.mMinutesToFireOnceFor), LocalizeString("PromptText"), Target.mMinutesToFireOnceFor.ToString(), numbersOnly: true);
			if (float.TryParse(s, out var result) && result > 0f)
			{
				Target.mMinutesToFireOnceFor = result;
			}
			return true;
		}
	}

	private sealed class GetCaughtByTrap : Interaction<Sim, TombTrap>, IOutfitChangeInteraction, IInteractionInstance
	{
		private sealed class Definition : InteractionDefinition<Sim, TombTrap, GetCaughtByTrap>
		{
			protected override bool Test(Sim actor, TombTrap target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		private Sim.SwitchOutfitHelper mSwitchOutfitHelper;

		public Sim.SwitchOutfitHelper SwitchOutfitHelper
		{
			get
			{
				return mSwitchOutfitHelper;
			}
			set
			{
				if (mSwitchOutfitHelper != value)
				{
					if (mSwitchOutfitHelper != null)
					{
						mSwitchOutfitHelper.Dispose();
					}
					mSwitchOutfitHelper = value;
				}
			}
		}

		private void TrapTriggeredCallback(StateMachineClient smc, IEvent evt)
		{
			Target.Appear(Actor);
			Target.Flare(Actor);
			if (Target.mTrapType == TrapType.Electricity)
			{
				Target.StartElectricitySingeEffects();
			}
		}

		private void HitByTrapCallback(StateMachineClient smc, IEvent evt)
		{
			Audio.StartObjectSound(Target.ObjectId, "trap_trapped", loop: false);
			Target.HitSim(Actor);
		}

		private void RegisterCallbacks()
		{
			AddOneShotScriptEventHandler(301u, TrapTriggeredCallback);
			AddOneShotScriptEventHandler(501u, HitByTrapCallback);
			AddOneShotScriptEventHandler(601u, HitByTrapCallback);
			AddOneShotScriptEventHandler(701u, HitByTrapCallback);
			AddOneShotScriptEventHandler(401u, HitByTrapCallback);
			if (mSwitchOutfitHelper != null)
			{
				mSwitchOutfitHelper.AddScriptEventHandler(this);
			}
		}

		private Slot FindClosestRoutingSlotToPoint(Vector3 pos)
		{
			Slot result = Slot.None;
			Slot[] crossRoutingSlots = Target.CrossRoutingSlots;
			float num = float.MaxValue;
			Slot[] array = crossRoutingSlots;
			foreach (Slot slot in array)
			{
				Vector3 positionOfSlot = Target.GetPositionOfSlot(slot);
				float num2 = (positionOfSlot - pos).LengthSqr();
				if (num2 < num)
				{
					num = num2;
					result = slot;
				}
			}
			return result;
		}

		private bool RouteToConeNearPoint(Vector3 pos)
		{
			Route route = Actor.CreateRoute();
			RadialRangeDestination radialRangeDestination = new RadialRangeDestination();
			radialRangeDestination.mCenterPoint = pos;
			radialRangeDestination.mConeVector = pos - Target.Position;
			radialRangeDestination.mfMinRadius = kMinimumDistanceToRunOffOfTrap;
			radialRangeDestination.mfMaxRadius = kMaximumDistanceToRunOffOfTrap;
			radialRangeDestination.mfConeAngle = (float)Math.PI / 2f;
			radialRangeDestination.ScoreFunctionWeights[1] = 1f;
			radialRangeDestination.mfPreferredSpacing = 0.2f;
			radialRangeDestination.mTargetObject = Actor;
			route.AddDestination(radialRangeDestination);
			route.AddObjectToIgnoreForRoute(Target.ObjectId);
			route.SetOption(Route.RouteOption.ForcePhysicsBasedRaycast, value: true);
			route.Plan();
			return Actor.DoRoute(route);
		}

		protected override bool Run()
		{
			bool paramValue = false;
			if (Target.mTrapType == TrapType.Water && Actor.BuffManager.HasAnyElement(BuffNames.Singed, BuffNames.SingedElectricity))
			{
				mSwitchOutfitHelper = new Sim.SwitchOutfitHelper(Actor, Sim.ClothesChangeReason.Force, OutfitCategories.Everyday);
				mSwitchOutfitHelper.Start();
				paramValue = true;
			}
			bool flag = Target.mTrapState == TrapState.ArmedAndHidden;
			if (flag)
			{
				Audio.StartObjectSound(Target.ObjectId, "trap_foreshadow", loop: false);
			}
			else if (Target.mTrapType == TrapType.Electricity)
			{
				Target.StartElectricitySingeEffects();
			}
			EnterStateMachine("TombTrap", "Enter", "x");
			SetActor("trap", Target);
			SetParameter("isFloorTrap", Target.IsFloorTrap);
			SetParameter("trapType", Target.mTrapType);
			SetParameter("shouldChangeClothes", paramValue);
			RegisterCallbacks();
			if (flag)
			{
				AnimateSim("Get caught by trap");
			}
			else
			{
				AnimateSim("Get caught by trap while standing");
			}
			if (Target.mTrapType == TrapType.Electricity)
			{
				AnimateSim("Electrocuted While Pathing");
				if (Actor.SimDescription.IsRobot)
				{
					Actor.BuffManager.AddElement(BuffNames.Energized, Origin.FromTombTrap);
				}
				else
				{
					BuffSinged.SingeViaInteraction(this, Origin.FromTombTrap);
				}
			}
			AnimateSim("Exit");
			Target.StopElectricitySingeEffects();
			Vector3 pos = Actor.Position - Actor.ForwardVector * 2f;
			Slot slot = FindClosestRoutingSlotToPoint(pos);
			if (slot != Slot.None)
			{
				pos = Target.GetPositionOfSlot(slot);
			}
			RequestWalkStyle(Sim.WalkStyle.Run);
			if (!RouteToConeNearPoint(pos))
			{
				Actor.Wander(kMinimumDistanceToWanderOffOfTrap, kMaximumDistanceToWanderOffOfTrap, limitOutdoors: true, RouteDistancePreference.PreferNearestToRouteOrigin, doRoutFail: true);
			}
			return true;
		}

		public override void Cleanup()
		{
			base.Cleanup();
			Target.StopElectricitySingeEffects();
		}
	}

	private sealed class Disarm : Interaction<Sim, TombTrap>
	{
		private sealed class Definition : InteractionDefinition<Sim, TombTrap, Disarm>
		{
			protected override bool Test(Sim actor, TombTrap target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return target.mTrapState == TrapState.ArmedAndVisible;
			}
		}

		private enum Outcome
		{
			Fail,
			Success,
			CantBeDisarmed
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/TombTrap/Disarm";

		private float mTimeToSuccesfullyDisarm;

		private float mTimeBeforeStoppingDisarm;

		public static readonly InteractionDefinition Singleton = new Definition();

		[Tunable]
		private static float kMinimumMinutesToDisarmTrap = 5f;

		[Tunable]
		private static float kMaximumMinutesToDisarmTrap = 10f;

		[Tunable]
		[TunableComment("Range: Sim Minutes.  This the amount of time it takes a sim to find out a trap cannot be disarmed.")]
		private static float kMinutesToFindTrapDisarmable = 3f;

		[Tunable]
		private static float kChanceToFailDisarmingForHandinessLevel0 = 0.5f;

		[Tunable]
		private static float kChanceToFailDisarmingForHandinessLevel10 = 0.01f;

		[Tunable]
		[TunableComment("Multiplier (float value) to lower failure chance when disarming trap when glowing from Sands of Understanding.  Set to 1 to have no effect, 0.75 to decrease chance of failure by 25%, etc.")]
		private static float kSandsOfUnderstandingFailureChanceMultiplier = 0.5f;

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/TombTrap/Disarm:" + name, parameters);
		}

		private void DisarmTrap(StateMachineClient smc, IEvent evt)
		{
			Target.DisarmTrap();
			Target.TombObjectComponent.ActivateTrigger(Trigger.HiddenSwitch, Actor);
			Actor.SimDescription.TombStats.IncrementTrapsDisarmed();
			EventTracker.SendEvent(EventTypeId.kDisarmedTrap, Actor, Target);
		}

		private void FlareTrap(StateMachineClient smc, IEvent evt)
		{
			Audio.StartObjectSound(Target.ObjectId, "trap_dis_failure", loop: false);
			Target.Flare(Actor);
			BuffFear.GiveFear(Actor, Target.FearBuffMoodValue, Origin.FromTombTrap);
		}

		private void RegisterCallbacks(bool makeChanges)
		{
			if (makeChanges)
			{
				AddOneShotScriptEventHandler(302u, DisarmTrap);
				AddOneShotScriptEventHandler(303u, FlareTrap);
			}
		}

		protected override bool Run()
		{
			Tutorialette.TriggerLesson(Lessons.TombFloorWallObstacle, Actor);
			if (Actor.BuffManager.HasElement(BuffNames.Fear))
			{
				Actor.ShowTNSIfSelectable(Localization.LocalizeString(Actor.IsFemale, "Gameplay/Objects/TombObjects/TombTrap:FearRefuseTNS", Actor), StyledNotification.NotificationStyle.kGameMessageNegative, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
				Actor.PlaySoloAnimation("a_fearModdlet_refuse_x", yield: true);
				return false;
			}
			Slot[] disarmAndInspectRoutingSlots = Target.DisarmAndInspectRoutingSlots;
			if (!Actor.RouteToSlotListAndCheckInUse((IGameObject)Target, disarmAndInspectRoutingSlots, out Slot slot))
			{
				return false;
			}
			if (!Test())
			{
				return false;
			}
			StandardEntry();
			BeginCommodityUpdates();
			EnterStateMachine("TombTrap", "Enter", "x");
			SetActor("trap", Target);
			SetParameter("isFloorTrap", Target.IsFloorTrap);
			SetParameter("trapType", Target.mTrapType);
			SetParameter("isMirrored", Target.ShouldPlayMirroredAnimations(slot));
			SetParameter("IKsuffix", Target.GetIKSuffix(slot));
			AnimateSim("Disarm Trap");
			mTimeToSuccesfullyDisarm = RandomUtil.GetFloat(kMinimumMinutesToDisarmTrap, kMaximumMinutesToDisarmTrap);
			if (Actor.SimDescription.TombStats.IsHazmatSim)
			{
				mTimeBeforeStoppingDisarm *= TombStatTracking.kHazmatSimSetOffTrapMultiplier;
			}
			Outcome outcome;
			if (Target.mCanBeDisarmed && Target.mTrapType != TrapType.None)
			{
				Skill.GetSkillLevel(Actor, SkillNames.Handiness);
				int maximumSupportedSkillLevel = SkillManager.GetMaximumSupportedSkillLevel(SkillNames.Handiness);
				float num = MathHelpers.LinearInterpolate(0f, maximumSupportedSkillLevel, kChanceToFailDisarmingForHandinessLevel0, kChanceToFailDisarmingForHandinessLevel10, 2f);
				if (Target.SandsOfUnderstandingComponent != null)
				{
					num *= kSandsOfUnderstandingFailureChanceMultiplier;
				}
				if (RandomUtil.RandomChance01(num))
				{
					outcome = Outcome.Fail;
					mTimeBeforeStoppingDisarm = RandomUtil.GetFloat(kMinimumMinutesToDisarmTrap, mTimeToSuccesfullyDisarm);
				}
				else
				{
					outcome = Outcome.Success;
					mTimeBeforeStoppingDisarm = mTimeToSuccesfullyDisarm;
				}
			}
			else
			{
				outcome = Outcome.CantBeDisarmed;
				mTimeBeforeStoppingDisarm = kMinutesToFindTrapDisarmable;
			}
			ProgressMeter.ShowProgressMeter(Actor, 0f, ProgressMeter.GlowType.Weak);
			bool flag = DoLoop(ExitReason.Default, LoopDel, null);
			ProgressMeter.HideProgressMeter(Actor, flag && outcome == Outcome.Success);
			SetParameter("success", !flag || outcome != Outcome.Fail);
			RegisterCallbacks(flag && outcome != Outcome.CantBeDisarmed);
			AnimateSim("Exit");
			if (flag)
			{
				switch (outcome)
				{
				case Outcome.CantBeDisarmed:
					Actor.ShowTNSIfSelectable(LocalizeString("CannotDisarmTNS"), StyledNotification.NotificationStyle.kGameMessagePositive, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
					break;
				case Outcome.Success:
					Target.RemoveComponent<SandsOfUnderstandingComponent>();
					break;
				}
			}
			EndCommodityUpdates(flag);
			StandardExit();
			return flag;
		}

		private void LoopDel(StateMachineClient smc, LoopData ld)
		{
			ProgressMeter.UpdateProgressMeter(Actor, ld.mLifeTime / mTimeToSuccesfullyDisarm, ProgressMeter.GlowType.Weak);
			if (ld.mLifeTime >= mTimeBeforeStoppingDisarm)
			{
				Actor.AddExitReason(ExitReason.Finished);
			}
		}
	}

	private sealed class Inspect : Interaction<Sim, TombTrap>
	{
		private sealed class Definition : InteractionDefinition<Sim, TombTrap, Inspect>
		{
			protected override bool Test(Sim actor, TombTrap target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return target.IsArmed();
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/TombTrap/Inspect";

		public static readonly InteractionDefinition Singleton = new Definition();

		[Tunable]
		private static float kMinimumMinutesToInspectHiddenTrap = 20f;

		[Tunable]
		private static float kMaximumMinutesToInspectHiddenTrap = 40f;

		[Tunable]
		private static float kMinimumMinutesToInspectVisibleTrap = 20f;

		[Tunable]
		private static float kMaximumMinutesToInspectVisibleTrap = 40f;

		private static readonly ulong kIconQuestionMarkHash = ResourceUtils.HashString64("misc_question_mark");

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/TombTrap/Inspect:" + name, parameters);
		}

		public override ThumbnailKey GetIconKey()
		{
			return new ThumbnailKey(new ResourceKey(kIconQuestionMarkHash, 796721156u, 0u), ThumbnailSize.Medium);
		}

		protected override bool Run()
		{
			Slot[] disarmAndInspectRoutingSlots = Target.DisarmAndInspectRoutingSlots;
			if (!Actor.RouteToSlotListAndCheckInUse((IGameObject)Target, disarmAndInspectRoutingSlots, out Slot slot))
			{
				return false;
			}
			if (!Test())
			{
				return false;
			}
			StandardEntry();
			BeginCommodityUpdates();
			EnterStateMachine("TombTrap", "Enter", "x");
			SetActor("trap", Target);
			SetParameter("isFloorTrap", Target.IsFloorTrap);
			SetParameter("isTrapVisibleWhileInspecting", Target.IsVisible());
			SetParameter("trapType", Target.mTrapType);
			SetParameter("isMirrored", Target.ShouldPlayMirroredAnimations(slot));
			SetParameter("IKsuffix", Target.GetIKSuffix(slot));
			AnimateSim("Inspect Trap");
			bool flag = false;
			float minValue;
			float maxValue;
			if (Target.IsVisible())
			{
				minValue = kMinimumMinutesToInspectVisibleTrap;
				maxValue = kMaximumMinutesToInspectVisibleTrap;
			}
			else
			{
				minValue = kMinimumMinutesToInspectHiddenTrap;
				maxValue = kMaximumMinutesToInspectHiddenTrap;
			}
			float duration = RandomUtil.GetFloat(minValue, maxValue);
			flag = DoTimedLoop(duration, ExitReason.Default);
			SetParameter("success", flag);
			AnimateSim("Exit");
			if (!Target.IsVisible() && flag)
			{
				Target.Appear(Actor);
			}
			if (flag)
			{
				string text = null;
				text = ((Target.mTrapType != TrapType.None) ? LocalizeString("InspectTNS", TombTrap.LocalizeString("TrapType" + Target.mTrapType)) : LocalizeString("NoTrapInspectTNS"));
				Actor.ShowTNSIfSelectable(text, StyledNotification.NotificationStyle.kGameMessagePositive, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
				Target.mbInspected = true;
			}
			Tutorialette.TriggerLesson(Lessons.TombFloorWallObstacle, Actor);
			EndCommodityUpdates(flag);
			StandardExit();
			return true;
		}
	}

	private sealed class AttemptToCross : Interaction<Sim, TombTrap>, IOutfitChangeInteraction, IInteractionInstance
	{
		private sealed class Definition : InteractionDefinition<Sim, TombTrap, AttemptToCross>
		{
			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate9;

			protected override bool Test(Sim actor, TombTrap target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (!target.IsVisible() || target.mTrapState == TrapState.DisarmedAndVisible)
				{
					return false;
				}
				if (target.GetCrossableRoutingSlots(actor).Length == 0)
				{
					greyedOutTooltipCallback = () => LocalizeString("NoAvailableSlotsTooltip");
					return false;
				}
				return true;
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/TombTrap/AttemptToCross";

		public static readonly InteractionDefinition Singleton = new Definition();

		[Tunable]
		private static float kChanceToTriggerArmedTrapForMartialArtsLevel0 = 0.75f;

		[Tunable]
		private static float kChanceToTriggerArmedTrapForMartialArtsLevel10 = 0.25f;

		[Tunable]
		private static float kChanceToTriggerFiringTrapForMartialArtsLevel0 = 0.75f;

		[Tunable]
		private static float kChanceToTriggerFiringTrapForMartialArtsLevel10 = 0.25f;

		private Sim.SwitchOutfitHelper mSwitchOutfitHelper;

		private Slot mRoutingSlot;

		public Sim.SwitchOutfitHelper SwitchOutfitHelper
		{
			get
			{
				return mSwitchOutfitHelper;
			}
			set
			{
				if (mSwitchOutfitHelper != value)
				{
					if (mSwitchOutfitHelper != null)
					{
						mSwitchOutfitHelper.Dispose();
					}
					mSwitchOutfitHelper = value;
				}
			}
		}

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/TombTrap/AttemptToCross:" + name, parameters);
		}

		private void TrapTriggeredCallback(StateMachineClient smc, IEvent evt)
		{
			Audio.StartObjectSound(Target.ObjectId, "trap_triggered", loop: false);
			Target.Flare(Actor);
			if (Target.mTrapType == TrapType.Electricity)
			{
				Target.StartElectricitySingeEffects();
			}
		}

		private void HitByTrapCallback(StateMachineClient smc, IEvent evt)
		{
			Audio.StartObjectSound(Target.ObjectId, "trap_failure", loop: false);
			Target.HitSim(Actor);
		}

		private void RegisterCallbacks()
		{
			AddOneShotScriptEventHandler(301u, TrapTriggeredCallback);
			AddOneShotScriptEventHandler(501u, HitByTrapCallback);
			AddOneShotScriptEventHandler(601u, HitByTrapCallback);
			AddOneShotScriptEventHandler(701u, HitByTrapCallback);
			AddOneShotScriptEventHandler(401u, HitByTrapCallback);
			if (mSwitchOutfitHelper != null)
			{
				mSwitchOutfitHelper.AddScriptEventHandler(this);
			}
		}

		protected override bool Run()
		{
			Tutorialette.TriggerLesson(Lessons.TombFloorWallObstacle, Actor);
			if (Actor.BuffManager.HasElement(BuffNames.Fear))
			{
				Actor.ShowTNSIfSelectable(Localization.LocalizeString(Actor.IsFemale, "Gameplay/Objects/TombObjects/TombTrap:FearRefuseTNS", Actor), StyledNotification.NotificationStyle.kGameMessageNegative, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
				Actor.PlaySoloAnimation("a_fearModdlet_refuse_x", yield: true);
				return false;
			}
			bool flag = false;
			if (Target.mTrapType == TrapType.Water && Actor.BuffManager.HasAnyElement(BuffNames.Singed, BuffNames.SingedElectricity))
			{
				mSwitchOutfitHelper = new Sim.SwitchOutfitHelper(Actor, Sim.ClothesChangeReason.Force, OutfitCategories.Everyday);
				mSwitchOutfitHelper.Start();
				flag = true;
			}
			Slot[] crossableRoutingSlots = Target.GetCrossableRoutingSlots(Actor);
			if (!Actor.RouteToSlotListAndCheckInUse((IGameObject)Target, crossableRoutingSlots, out int slotIndex))
			{
				return false;
			}
			if (!Test())
			{
				return false;
			}
			mRoutingSlot = crossableRoutingSlots[slotIndex];
			if (!Target.EnableFootprintAndPushSims((uint)mRoutingSlot, Actor))
			{
				Target.DisableFootprint((uint)mRoutingSlot);
				mRoutingSlot = Slot.None;
				return false;
			}
			Slot oppositeSlot = Target.GetOppositeSlot(mRoutingSlot);
			if (!Target.EnableFootprintAndPushSims((uint)oppositeSlot, Actor))
			{
				Target.DisableFootprint((uint)mRoutingSlot);
				Target.DisableFootprint((uint)oppositeSlot);
				mRoutingSlot = Slot.None;
				return false;
			}
			EnterStateMachine("TombTrap", "Enter", "x");
			SetActor("trap", Target);
			SetParameter("isFloorTrap", Target.IsFloorTrap);
			SetParameter("trapType", Target.mTrapType);
			SetParameter("isMirrored", Target.ShouldPlayMirroredAnimations(crossableRoutingSlots[slotIndex]));
			SetParameter("isTrapFiringWhileCrossing", Target.mTrapState == TrapState.FiringAndVisible);
			RegisterCallbacks();
			float minValue = 0f;
			float maxValue = 0f;
			if (Target.mTrapState == TrapState.ArmedAndVisible && Target.mTrapType != TrapType.None)
			{
				minValue = kChanceToTriggerArmedTrapForMartialArtsLevel0;
				maxValue = kChanceToTriggerArmedTrapForMartialArtsLevel10;
			}
			else if (Target.mTrapState == TrapState.FiringAndVisible && Target.mFireEffects != null && Target.mFireEffects.HasEffectStarted())
			{
				minValue = kChanceToTriggerFiringTrapForMartialArtsLevel0;
				maxValue = kChanceToTriggerFiringTrapForMartialArtsLevel10;
			}
			float num = 0f;
			uint skillLevel = Skill.GetSkillLevel(Actor, SkillNames.MartialArts);
			int maximumSupportedSkillLevel = SkillManager.GetMaximumSupportedSkillLevel(SkillNames.MartialArts);
			num = MathHelpers.LinearInterpolate(0f, maximumSupportedSkillLevel, minValue, maxValue, skillLevel);
			bool flag2 = Target.mTrapType == TrapType.Fire && Actor.BuffManager.HasElement(BuffNames.Soaked);
			if (flag2)
			{
				num = 0f;
			}
			bool flag3 = !RandomUtil.RandomChance01(num);
			SetParameter("shouldChangeClothes", flag && !flag3);
			SetParameter("success", flag3);
			AnimateSim("Attempt To Cross Trap");
			if (Target.mTrapType == TrapType.Electricity && !flag3)
			{
				AnimateSim("Electrocuted While Crossing");
				if (Actor.SimDescription.IsRobot)
				{
					Actor.BuffManager.AddElement(BuffNames.Energized, Origin.FromTombTrap);
				}
				else
				{
					BuffSinged.SingeViaInteraction(this, Origin.FromTombTrap);
				}
				Target.StopElectricitySingeEffects();
			}
			if (!flag3 && Target.ShouldSimGetAngryAtTrap(Actor))
			{
				AnimateSim("Yell At Trap");
			}
			if (flag2)
			{
				Actor.BuffManager.RemoveElement(BuffNames.Soaked);
			}
			if (flag3)
			{
				Audio.StartObjectSound(Target.ObjectId, "trap_success", loop: false);
				EventTracker.SendEvent(EventTypeId.kDodgedTrap, Actor, Target);
				Target.DisarmTrap();
				Target.Flare(Actor);
			}
			AnimateSim("Exit");
			return true;
		}

		public override void Cleanup()
		{
			base.Cleanup();
			if (mRoutingSlot != Slot.None)
			{
				Slot oppositeSlot = Target.GetOppositeSlot(mRoutingSlot);
				Target.DisableFootprint((uint)mRoutingSlot);
				Target.DisableFootprint((uint)oppositeSlot);
			}
			Target.StopElectricitySingeEffects();
			SwitchOutfitHelper = null;
		}
	}

	private sealed class JumpInSteamTrap : Interaction<Sim, TombTrap>, IOutfitChangeInteraction, IInteractionInstance
	{
		private sealed class Definition : InteractionDefinition<Sim, TombTrap, JumpInSteamTrap>, IUsableWhileOnFire, IUsableDuringFire
		{
			protected override bool Test(Sim a, TombTrap target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.mTrapType != TrapType.Water || !target.mbInspected || (target.mTrapState != TrapState.ArmedAndVisible && target.mTrapState != TrapState.FiringAndVisible))
				{
					return false;
				}
				if (a.BuffManager.HasElement(BuffNames.Soaked))
				{
					greyedOutTooltipCallback = () => LocalizeString(a.IsFemale, "AlreadySoakedGreyedOutTooltip", a);
					return false;
				}
				return true;
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/TombTrap/JumpInSteamTrap";

		public static readonly InteractionDefinition Singleton = new Definition();

		private Sim.SwitchOutfitHelper mSwitchOutfitHelper;

		public Sim.SwitchOutfitHelper SwitchOutfitHelper
		{
			get
			{
				return mSwitchOutfitHelper;
			}
			set
			{
				if (mSwitchOutfitHelper != value)
				{
					if (mSwitchOutfitHelper != null)
					{
						mSwitchOutfitHelper.Dispose();
					}
					mSwitchOutfitHelper = value;
				}
			}
		}

		private static string LocalizeString(bool bIsFemale, string name, params object[] parameters)
		{
			return Localization.LocalizeString(bIsFemale, "Gameplay/Objects/TombObjects/TombTrap/JumpInSteamTrap:" + name, parameters);
		}

		public override void Init(ref InteractionInstanceParameters parameters)
		{
			if (FirefighterSituation.IsSimOnFire(parameters.Actor))
			{
				parameters.Priority = new InteractionPriority(InteractionPriorityLevel.Fire, 10f);
			}
			base.Init(ref parameters);
		}

		protected override bool Run()
		{
			bool paramValue = false;
			if (Actor.BuffManager.HasAnyElement(BuffNames.Singed, BuffNames.SingedElectricity))
			{
				mSwitchOutfitHelper = new Sim.SwitchOutfitHelper(Actor, Sim.ClothesChangeReason.Force, OutfitCategories.Everyday);
				mSwitchOutfitHelper.Start();
				paramValue = true;
			}
			if (!Actor.RouteToSlotListAndCheckInUse((IGameObject)Target, Target.CrossRoutingSlots, out Slot slot))
			{
				return false;
			}
			if (!Test())
			{
				return false;
			}
			StandardEntry();
			EnterStateMachine("TombTrap", "Enter", "x");
			SetActor("trap", Target);
			SetParameter("isFloorTrap", Target.IsFloorTrap);
			SetParameter("trapType", Target.mTrapType);
			SetParameter("isMirrored", Target.ShouldPlayMirroredAnimations(slot));
			SetParameter("IKsuffix", Target.GetIKSuffix(slot));
			SetParameter("shouldChangeClothes", paramValue);
			BeginCommodityUpdates();
			AddOneShotScriptEventHandler(301u, JumpedIn);
			if (mSwitchOutfitHelper != null)
			{
				mSwitchOutfitHelper.AddScriptEventHandler(this);
			}
			AnimateSim("Jump In");
			EndCommodityUpdates(succeeded: true);
			AnimateSim("Exit");
			StandardExit();
			return true;
		}

		private void JumpedIn(StateMachineClient smc, IEvent evt)
		{
			Target.Flare(Actor);
			FirefighterSituation.PutFireOnSimOut(Actor);
			Actor.BuffManager.RemoveElement(BuffNames.Singed);
			Actor.BuffManager.RemoveElement(BuffNames.SingedElectricity);
			Actor.BuffManager.AddElement(BuffNames.Soaked, Origin.FromTombTrap);
		}

		public override void Cleanup()
		{
			base.Cleanup();
			SwitchOutfitHelper = null;
		}
	}

	public class WarmSelfTrap : Interaction<Sim, TombTrap>
	{
		private sealed class Definition : InteractionDefinition<Sim, TombTrap, WarmSelfTrap>
		{
			protected override bool Test(Sim a, TombTrap target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.mTrapType != TrapType.Fire || target.mTrapState != TrapState.FiringAndVisible)
				{
					return false;
				}
				return true;
			}
		}

		[TunableComment("Time it takes a daredevil sim in minutes doing the warm self interaction to get the cozy fire buff.")]
		[Tunable]
		private static float kTimeToGetCozyFireBuff = 10f;

		public static readonly InteractionDefinition Singleton = new Definition();

		public override void ConfigureInteraction()
		{
			TimedStage timedStage = new TimedStage(Localization.LocalizeString("Gameplay/Objects/Fireplaces/Fireplace:WarmUntilCozy"), kTimeToGetCozyFireBuff, showCompletionTime: false, selectable: true, visibleProgress: false);
			Stages = new List<Stage>(new Stage[1] { timedStage });
		}

		protected StateMachineClient GetStateMachine(WarmSelfTrap interaction, string entryState)
		{
			Sim instanceActor = interaction.InstanceActor;
			StateMachineClient stateMachineClient = StateMachineClient.Acquire(instanceActor, "TombTrap");
			stateMachineClient.SetActor("x", instanceActor);
			stateMachineClient.EnterState("x", entryState);
			return stateMachineClient;
		}

		protected override bool Run()
		{
			if (!Actor.RouteToSlotListAndCheckInUse((IGameObject)Target, Target.CrossRoutingSlots, out Slot _))
			{
				return false;
			}
			if (Target.mTrapType != TrapType.Fire || Target.mTrapState != TrapState.FiringAndVisible)
			{
				return false;
			}
			StandardEntry();
			StateMachineClient stateMachine = GetStateMachine(this, "Enter");
			StartStages();
			BeginCommodityUpdates();
			stateMachine.RequestState("x", "Loop Warm Self");
			bool flag = DoLoop(ExitReason.Default);
			EndCommodityUpdates(flag);
			stateMachine.RequestState("x", "Exit");
			if (Actor.HasExitReason(ExitReason.StageComplete))
			{
				if (Actor.SimDescription.IsMatureMermaid)
				{
					Actor.BuffManager.AddElement(BuffNames.DryingUp, Origin.FromWarmFire);
				}
				else
				{
					Actor.BuffManager.AddElement(BuffNames.Warmed, Origin.FromWarmFire);
				}
				Actor.BuffManager.RemoveElement(BuffNames.Soaked);
			}
			StandardExit();
			return flag;
		}
	}

	private const string sLocalizationKey = "Gameplay/Objects/TombObjects/TombTrap";

	private const uint kCanBeDisarmed = 143841495u;

	private const uint kTrapType = 143841499u;

	private const uint kTrapState = 143841501u;

	private const uint kFireRateIndex = 143841504u;

	private const uint kMinutesToFireOnceFor = 145388229u;

	private const string kWorldBuilderDataName = "TombTrap";

	private const uint kTrapRevealedEvent = 101u;

	private const uint kTrapTriggeredEvent = 301u;

	private const uint kTrapDisarmedEvent = 302u;

	private const uint kTrapFlaredEvent = 303u;

	private const uint kHitByElectricityBegin = 401u;

	private const uint kHitByElectricityEnd = 402u;

	private const uint kHitByDartsEvent = 501u;

	private const uint kHitByFireEvent = 601u;

	private const uint kHitBySteamEvent = 701u;

	private const string kDisarmFailureSoundName = "trap_dis_failure";

	private const string kDisarmSuccessSoundName = "trap_dis_success";

	private const string kSuccessCrossingSoundName = "trap_success";

	private const string kFailureCrossingSoundName = "trap_failure";

	private const string kTrapForeshadowSoundName = "trap_foreshadow";

	private const string kFireSoundName = "trap_set_to_firing";

	private const string kVisibleTrapTriggeredSoundName = "trap_triggered";

	private const string kHiddenTrapHitSoundName = "trap_trapped";

	private static InteractionDefinition[] sInteractionDefinitions = new InteractionDefinition[3]
	{
		Disarm.Singleton,
		Inspect.Singleton,
		AttemptToCross.Singleton
	};

	private static readonly string[] kWorldBuilderDataKeyRemap = new string[10]
	{
		143841495u.ToString(),
		"CanBeDisarmed",
		143841499u.ToString(),
		"TrapType",
		143841501u.ToString(),
		"TrapState",
		143841504u.ToString(),
		"FireRateIndex",
		145388229u.ToString(),
		"MinutesToFireOnceFor"
	};

	private readonly string[] kConstantEffectNames = new string[5] { null, "ep1TrapFireConstant", "ep1TrapDartsConstant", "ep1TrapElectricConstant", "ep1TrapSteamConstant" };

	private readonly string[] kBurstEffectNames = new string[5] { null, "ep1TrapFireBurst", "ep1TrapDartsBurst", "ep1TrapElectricBurst", "ep1TrapSteamBurst" };

	private string kTrapRevealEffectName = "ep1TrapReveal";

	private string kTrapCoveredWithPuddleEffectName = "ep1PuddleSteam";

	[TunableComment("Range: Sim Minutes.  Amount of time for the trap to stay firing.  If this is 0, the trap will fire non-stop.")]
	[Tunable]
	private static float[] kFireRateMinutesOn = new float[2] { 1f, 3f };

	[Tunable]
	[TunableComment("Range: Sim Minutes.  Amount of time for the trap to be off for in between firing.")]
	private static float[] kFireRateMinutesOff = new float[2] { 0f, 5f };

	[Tunable]
	[TunableComment("Range: Sim Minutes.  Amount of time a constantly firing trap will check for changes (e.g. puddles on top of it, etc.)")]
	private static float kMinutesPerCheckConstantFiringTrap = 5f;

	[Tunable]
	private static float kChanceWaterTrapCreatesPuddle = 0.75f;

	[TunableComment("Range: Meters.  Minimum distance a sim will run off the trap if they get caught by one.")]
	[Tunable]
	private static float kMinimumDistanceToRunOffOfTrap = 0f;

	[TunableComment("Range: Meters.  Maximum distance a sim will run off the trap if they get caught by one.")]
	[Tunable]
	private static float kMaximumDistanceToRunOffOfTrap = 2f;

	[TunableComment("Range: Meters.  Minimum distance a sim will wander off the trap if they get stuck on one.")]
	[Tunable]
	private static float kMinimumDistanceToWanderOffOfTrap = 2f;

	[Tunable]
	[TunableComment("Range: Meters.  Maximum distance a sim will wander off the trap if they get stuck on one.")]
	private static float kMaximumDistanceToWanderOffOfTrap = 5f;

	[Tunable]
	private static float kChanceSimYellsAtTrapBase = 0.3f;

	[TunableComment("Chance for sims with kComplainTraits to complain.")]
	[Tunable]
	private static float kChanceSimYellsAtTrapTrait = 0.5f;

	[TunableComment("List of traits that makes the sim more likely to yell at the trap.")]
	[Tunable]
	private static TraitNames[] kSimYellsAtTrapTraits = new TraitNames[3]
	{
		TraitNames.NoSenseOfHumor,
		TraitNames.MeanSpirited,
		TraitNames.HotHeaded
	};

	[Tunable]
	[TunableComment("Mood value for the fear buff per trap type.  The order is (None, Fire, Darts, Electricity, Water)")]
	private static int[] kFearBuffMoodValues = new int[5] { 0, -20, -10, -15, -5 };

	[Tunable]
	private static float kMinimumMinutesToCreatePuddle = 50f;

	private bool mCanBeDisarmed;

	private TrapType mTrapType;

	private TrapState mTrapState = TrapState.ArmedAndVisible;

	private TrapState mPreviousTrapState = TrapState.ArmedAndVisible;

	private VisualEffect mFireEffects;

	private DateAndTime mDateAndTimeLastPuddleCreated = SimClock.StartTime;

	private VisualEffect mElectrictySingeEffects;

	private AlarmHandle mFiringAlarm = AlarmHandle.kInvalidHandle;

	private Lot mLotWithTriggerVolume;

	private int mFireRateIndex;

	private bool mbInspected;

	private float mMinutesToFireOnceFor = 10f;

	private AlarmHandle mTurnOffAlarm = AlarmHandle.kInvalidHandle;

	protected abstract bool IsFloorTrap { get; }

	protected abstract Slot[] DisarmAndInspectRoutingSlots { get; }

	protected abstract Slot[] CrossRoutingSlots { get; }

	protected abstract uint PlacementFootprintHash { get; }

	protected abstract uint RoutingFootprintHash { get; }

	public uint StatueCheckFootprintHash => PlacementFootprintHash;

	protected abstract string NormalMaterialState { get; }

	protected abstract string DisarmEffectName { get; }

	private int FearBuffMoodValue
	{
		get
		{
			if (kFearBuffMoodValues == null || (long)kFearBuffMoodValues.Length <= (long)mTrapType)
			{
				return 0;
			}
			return kFearBuffMoodValues[(uint)mTrapType];
		}
	}

	private Pair<float, float> FireRate
	{
		get
		{
			if (kFireRateMinutesOff.Length != kFireRateMinutesOn.Length)
			{
				return new Pair<float, float>(1f, 1f);
			}
			if (mFireRateIndex > kFireRateMinutesOn.Length || mFireRateIndex < 0)
			{
				return new Pair<float, float>(1f, 1f);
			}
			return new Pair<float, float>(kFireRateMinutesOn[mFireRateIndex], kFireRateMinutesOff[mFireRateIndex]);
		}
	}

	private static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/Objects/TombObjects/TombTrap:" + name, parameters);
	}

	public TombTrap()
	{
	}

	public override void OnStartup()
	{
		base.OnStartup();
		AddComponent<TombObjectStaticComponent>(new object[0]);
		AddComponent<AdventureComponent>(new object[0]);
		AddInteraction(JumpInSteamTrap.Singleton);
		AddInteraction(WarmSelfTrap.Singleton);
		RefreshState();
		UpdateVisualState();
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		buildBuyInteractions.Add(SetCanBeDisarmed.Singleton);
		buildBuyInteractions.Add(SetTrapType.Singleton);
		buildBuyInteractions.Add(SetTrapState.Singleton);
		buildBuyInteractions.Add(SetTrapFireRate.Singleton);
		buildBuyInteractions.Add(SetTrapFireTimeForFireOnce.Singleton);
		base.AddBuildBuyInteractions(buildBuyInteractions);
	}

	public override List<InteractionObjectPair> GetAllInteractionsForActor(IActor s)
	{
		List<InteractionObjectPair> list = BuildInteractions(s, base.GetAllInteractionsForActor(s), sInteractionDefinitions);
		if (!IsVisible() && IsFloorTrap)
		{
			List<InteractionObjectPair> allInteractionsForActor = Terrain.Singleton.GetAllInteractionsForActor(s);
			allInteractionsForActor.AddRange(list);
			return allInteractionsForActor;
		}
		return list;
	}

	public override bool HasAnyInteraction(IActor actor, ref InteractionInstanceParameters parameters)
	{
		if (TestInteractions(actor, ref parameters, sInteractionDefinitions))
		{
			return true;
		}
		return base.HasAnyInteraction(actor, ref parameters);
	}

	public override void Dispose()
	{
		base.Dispose();
		if (mFiringAlarm != AlarmHandle.kInvalidHandle)
		{
			RemoveAlarm(mFiringAlarm);
		}
		CleanupBroadcaster();
		StopFireEffects();
	}

	public override bool HandToolAllowIntersection(IGameObject objectToIntersect, Matrix44 testMatrix, bool bThisObjectShifted)
	{
		if (objectToIntersect is BuffExhausted.PassOut.Jig)
		{
			return true;
		}
		return base.HandToolAllowIntersection(objectToIntersect, testMatrix, bThisObjectShifted);
	}

	public void OnAddTombObjectComponent(ITombObjectComponent tombObjectComponent)
	{
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.Appear, Appear);
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.Deactivate, DeactivateTrap);
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.Arm, ArmTrap);
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.Disarm, DisarmTrapBehavior);
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.SetToFire, ActivateTrap);
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.FireOnce, FireOnceBriefly);
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.SetToDormant, SetToDormant);
		tombObjectComponent.RegisterTrigger(Trigger.HiddenSwitch);
		tombObjectComponent.RegisterTrigger(Trigger.TurnOn);
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		writer.WriteBool(143841495u, mCanBeDisarmed);
		writer.WriteUint32(143841499u, (uint)mTrapType);
		writer.WriteUint32(143841501u, (uint)mTrapState);
		writer.WriteInt32(143841504u, mFireRateIndex);
		writer.WriteFloat(145388229u, mMinutesToFireOnceFor);
		return base.ExportContent(resKeyTable, objIdTable, writer);
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		reader.ReadBool(143841495u, out mCanBeDisarmed, defaultValue: true);
		reader.ReadUint32(143841499u, out var value, 0u);
		if (Enum.IsDefined(typeof(TrapType), value))
		{
			mTrapType = (TrapType)value;
		}
		reader.ReadUint32(143841501u, out var value2, 2u);
		if (Enum.IsDefined(typeof(TrapState), value2))
		{
			mTrapState = (TrapState)value2;
		}
		reader.ReadInt32(143841504u, out mFireRateIndex, 0);
		reader.ReadFloat(145388229u, out mMinutesToFireOnceFor, 10f);
		EnterState(mTrapState);
		UpdateVisualState();
		return base.ImportContent(resKeyTable, objIdTable, reader);
	}

	public void SaveWorldBuilderData()
	{
		WorldBuilderData.Set("TombTrap", ObjectId, "CanBeDisarmed", mCanBeDisarmed, defaultValue: false);
		WorldBuilderData.Set("TombTrap", ObjectId, "TrapType", mTrapType, TrapType.None);
		WorldBuilderData.Set("TombTrap", ObjectId, "TrapState", mTrapState, TrapState.ArmedAndVisible);
		WorldBuilderData.Set("TombTrap", ObjectId, "FireRateIndex", mFireRateIndex, 0);
		WorldBuilderData.Set("TombTrap", ObjectId, "MinutesToFireOnceFor", mMinutesToFireOnceFor, 10f);
	}

	public void LoadWorldBuilderData()
	{
		WorldBuilderData.SetKeyRemap(kWorldBuilderDataKeyRemap);
		WorldBuilderData.Get("TombTrap", ObjectId, "CanBeDisarmed", ref mCanBeDisarmed);
		WorldBuilderData.Get("TombTrap", ObjectId, "TrapType", ref mTrapType);
		WorldBuilderData.Get("TombTrap", ObjectId, "TrapState", ref mTrapState);
		WorldBuilderData.Get("TombTrap", ObjectId, "FireRateIndex", ref mFireRateIndex);
		WorldBuilderData.Get("TombTrap", ObjectId, "MinutesToFireOnceFor", ref mMinutesToFireOnceFor);
		UpdateVisualState();
		EnterState(TrapState.DormantAndHidden, mTrapState);
	}

	public void OnEnterBuildBuyMode()
	{
		UpdateVisualState();
	}

	public void OnExitBuildBuyMode()
	{
		UpdateVisualState();
	}

	public string GetStatusText()
	{
		return LocalizeString("TrapStatus", LocalizeString(mTrapType.ToString()), LocalizeString("TrapState" + mTrapState));
	}

	public bool CanTurnOnUnderstandingGlowNow()
	{
		return true;
	}

	public bool ShouldUnderstandingGlowBePositive()
	{
		return false;
	}

	public bool ShouldConsumeSandsOfUnderstanding()
	{
		return !IsVisible();
	}

	public SandsOfUnderstandingComponent.OnGlowCallback GetOnGlowCallback()
	{
		return OnGlowCallback;
	}

	private void OnGlowCallback()
	{
		Appear(null);
	}

	protected abstract bool ShouldPlayMirroredAnimations(Slot slot);

	protected abstract Slot GetOppositeSlot(Slot slot);

	protected abstract string GetIKSuffix(Slot slot);

	private bool IsVisible()
	{
		if (mTrapState != TrapState.ArmedAndVisible && mTrapState != TrapState.DisarmedAndVisible)
		{
			return mTrapState == TrapState.FiringAndVisible;
		}
		return true;
	}

	private void UpdateVisualState()
	{
		bool flag = GameStates.NextInWorldStateId == InWorldState.SubState.BuildMode || GameStates.NextInWorldStateId == InWorldState.SubState.BuyMode;
		SetOpacity(1f, 0f);
		SetHiddenFlags(HiddenFlags.Nothing);
		if (IsVisible() || flag)
		{
			if (mTrapState == TrapState.DisarmedAndVisible)
			{
				SetGeometryState("trapDamaged");
				SetMaterial("trapDamaged");
				DisableFootprint(RoutingFootprintHash);
				DisableFootprint(PlacementFootprintHash);
			}
			else
			{
				SetGeometryState("trapVisible");
				SetMaterial(NormalMaterialState);
				EnableFootprint(RoutingFootprintHash);
				if (IsFloorTrap)
				{
					DisableFootprint(PlacementFootprintHash);
				}
				else
				{
					EnableFootprint(PlacementFootprintHash);
				}
			}
		}
		else
		{
			if (mTrapState == TrapState.DormantAndHidden)
			{
				SetOpacity(0f, 2f);
			}
			SetGeometryState("trapInvisible");
			SetMaterial(NormalMaterialState);
			DisableFootprint(RoutingFootprintHash);
			DisableFootprint(PlacementFootprintHash);
		}
		if (flag)
		{
			EnableFootprint(PlacementFootprintHash);
			if (!IsVisible())
			{
				SetOpacity(0.5f, 0f);
			}
		}
	}

	private bool CanTrapChangeInAnyMajorWay()
	{
		foreach (Sim sim in LotCurrent.GetSims())
		{
			if (sim.SimDescription.ToddlerOrBelow && World.ObjectFootprintContainsPoint(ObjectId, RoutingFootprintHash, sim.PositionOnFloor))
			{
				return false;
			}
		}
		return true;
	}

	private void EnterState(TrapState newTrapState)
	{
		EnterState(TrapState.DormantAndHidden, newTrapState, null, doPrevCheck: false);
	}

	private void EnterState(TrapState previousTrapState, TrapState newTrapState)
	{
		EnterState(previousTrapState, newTrapState, null, doPrevCheck: true);
	}

	private void EnterState(TrapState previousTrapState, TrapState newTrapState, Sim sim)
	{
		EnterState(previousTrapState, newTrapState, sim, doPrevCheck: true);
	}

	private void EnterState(TrapState previousTrapState, TrapState newTrapState, Sim sim, bool doPrevCheck)
	{
		if ((doPrevCheck && previousTrapState == newTrapState) || !CanTrapChangeInAnyMajorWay())
		{
			return;
		}
		mPreviousTrapState = previousTrapState;
		mTrapState = newTrapState;
		RemoveAlarm(mTurnOffAlarm);
		mTurnOffAlarm = AlarmHandle.kInvalidHandle;
		TombRoomManager.UpdateTombMusic();
		UpdateVisualState();
		switch (previousTrapState)
		{
		case TrapState.ArmedAndHidden:
			CleanupBroadcaster();
			break;
		case TrapState.ArmedAndVisible:
			CleanupBroadcaster();
			break;
		case TrapState.FiringAndVisible:
			EndFiringConstantly();
			CleanupBroadcaster();
			break;
		}
		switch (newTrapState)
		{
		case TrapState.ArmedAndHidden:
			if (mTrapType != TrapType.None)
			{
				SetupBroadcaster();
			}
			break;
		case TrapState.ArmedAndVisible:
			if (mTrapType != TrapType.None)
			{
				SetupBroadcaster();
			}
			break;
		case TrapState.FiringAndVisible:
			Audio.StartObjectSound(ObjectId, "trap_set_to_firing", loop: false);
			TombObjectComponent.ActivateTrigger(Trigger.TurnOn, sim);
			CheckForSimsOnTrap();
			SetupBroadcaster();
			BeginFiringConstantly();
			break;
		case TrapState.DisarmedAndVisible:
			Audio.StartObjectSound(ObjectId, "trap_dis_success", loop: false);
			VisualEffect.FireOneShotEffect(DisarmEffectName, this, Slot.FXJoint_0, VisualEffect.TransitionType.SoftTransition);
			break;
		}
		if (IsArmed())
		{
			PushableStatue.CheckForPushableStatueEffects(this, sim);
		}
	}

	private void RefreshState()
	{
		EnterState(mTrapState, mPreviousTrapState);
		EnterState(mTrapState, mPreviousTrapState);
	}

	private bool Appear(Sim sim)
	{
		if (!IsVisible())
		{
			if (mTrapState == TrapState.DormantAndHidden)
			{
				PushableStatue.CheckForPushableStatueEffects(this, sim);
			}
			FadeIn();
			VisualEffect.FireOneShotEffect(kTrapRevealEffectName, this, Slot.FXJoint_0, VisualEffect.TransitionType.SoftTransition);
			EnterState(mTrapState, TrapState.ArmedAndVisible);
			return true;
		}
		return false;
	}

	private void StartElectricitySingeEffects()
	{
		string text = kConstantEffectNames[3];
		if (mElectrictySingeEffects == null && !string.IsNullOrEmpty(text))
		{
			mElectrictySingeEffects = VisualEffect.Create(text);
			mElectrictySingeEffects.ParentTo(this, Slot.FXJoint_0);
		}
		if (mElectrictySingeEffects != null)
		{
			mElectrictySingeEffects.Start();
		}
	}

	private void StopElectricitySingeEffects()
	{
		if (mElectrictySingeEffects != null)
		{
			mElectrictySingeEffects.Stop();
			mElectrictySingeEffects.Dispose();
			mElectrictySingeEffects = null;
		}
	}

	private void ProcessFiringSideEffects()
	{
		switch (mTrapType)
		{
		case TrapType.Water:
		{
			float num = SimClock.ElapsedTime(TimeUnit.Minutes, mDateAndTimeLastPuddleCreated);
			if (num > kMinimumMinutesToCreatePuddle && RandomUtil.RandomChance01(kChanceWaterTrapCreatesPuddle))
			{
				PuddleManager.AddPuddle(Position);
				mDateAndTimeLastPuddleCreated = SimClock.CurrentTime();
			}
			break;
		}
		case TrapType.Fire:
		case TrapType.Electricity:
			if (IsPuddleCoveringTrap())
			{
				DisarmTrap();
				VisualEffect.FireOneShotEffect(kTrapCoveredWithPuddleEffectName, this, Slot.FXJoint_0, VisualEffect.TransitionType.SoftTransition);
			}
			break;
		}
		mbInspected = true;
	}

	private void StopFireEffects()
	{
		if (mFireEffects != null)
		{
			mFireEffects.Stop();
			mFireEffects.Dispose();
			mFireEffects = null;
		}
	}

	private void BeginFiringConstantly()
	{
		FireConstantly_BeginFirePhase();
	}

	private void EndFiringConstantly()
	{
		StopFireEffects();
		RemoveAlarm(mFiringAlarm);
		mFiringAlarm = AlarmHandle.kInvalidHandle;
	}

	private void FireConstantly_BeginFirePhase()
	{
		string text = kConstantEffectNames[(uint)mTrapType];
		if (mFireEffects == null && !string.IsNullOrEmpty(text))
		{
			mFireEffects = VisualEffect.Create(text);
			mFireEffects.ParentTo(this, Slot.FXJoint_0);
		}
		if (mFireEffects != null)
		{
			mFireEffects.Start();
		}
		if (FireRate.First > 0f)
		{
			mFiringAlarm = AddAlarm(FireRate.First, TimeUnit.Minutes, FireConstantly_BeginPausePhase, "TombTrap: FireConstantly", AlarmType.DeleteOnReset);
		}
		else
		{
			mFiringAlarm = AddAlarm(kMinutesPerCheckConstantFiringTrap, TimeUnit.Minutes, FireConstantly_BeginFirePhase, "TombTrap: FireConstantly", AlarmType.DeleteOnReset);
		}
		ProcessFiringSideEffects();
	}

	private void FireConstantly_BeginPausePhase()
	{
		StopFireEffects();
		mFiringAlarm = AddAlarm(FireRate.Second, TimeUnit.Minutes, FireConstantly_BeginFirePhase, "TombTrap: FireConstantly", AlarmType.DeleteOnReset);
	}

	private void Flare()
	{
		Flare(null);
	}

	private void Flare(Sim actor)
	{
		if (CanTrapChangeInAnyMajorWay())
		{
			string text = kBurstEffectNames[(uint)mTrapType];
			if (!string.IsNullOrEmpty(text))
			{
				VisualEffect.FireOneShotEffect(text, this, Slot.FXJoint_0, VisualEffect.TransitionType.SoftTransition);
			}
			TombObjectComponent.ActivateTrigger(Trigger.TurnOn, actor);
			ProcessFiringSideEffects();
		}
	}

	private void HitSim(Sim actor)
	{
		switch (mTrapType)
		{
		case TrapType.Darts:
			actor.BuffManager.AddElement(BuffNames.KnockedOut, Origin.FromTombTrap);
			BuffFear.GiveFear(actor, FearBuffMoodValue, Origin.FromTombTrap);
			break;
		case TrapType.Electricity:
			if (actor.BuffManager.HasAnyElement(BuffNames.Singed, BuffNames.SingedElectricity))
			{
				actor.BuffManager.AddElement(BuffNames.KnockedOut, Origin.FromTombTrap);
			}
			else
			{
				actor.BuffManager.AddElement(BuffNames.SingedElectricity, Origin.FromTombTrap);
			}
			BuffFear.GiveFear(actor, FearBuffMoodValue, Origin.FromTombTrap);
			break;
		case TrapType.Fire:
			actor.BuffManager.AddElement(BuffNames.Torched, Origin.FromTombTrap);
			BuffFear.GiveFear(actor, FearBuffMoodValue, Origin.FromTombTrap);
			break;
		case TrapType.Water:
			actor.BuffManager.RemoveElement(BuffNames.Singed);
			actor.BuffManager.RemoveElement(BuffNames.SingedElectricity);
			actor.BuffManager.AddElement(BuffNames.Soaked, Origin.FromTombTrap);
			break;
		case TrapType.None:
			break;
		}
	}

	private void SetupBroadcaster()
	{
		if (mLotWithTriggerVolume != null)
		{
			CleanupBroadcaster();
		}
		if (!LotCurrent.IsWorldLot)
		{
			LotCurrent.AddTriggerVolumeCallback(this, RoutingFootprintHash, OnEnterTrapRegion);
			mLotWithTriggerVolume = LotCurrent;
		}
	}

	private void CleanupBroadcaster()
	{
		if (mLotWithTriggerVolume != null)
		{
			mLotWithTriggerVolume.RemoveTriggerVolumeCallback(this, OnEnterTrapRegion);
			mLotWithTriggerVolume = null;
		}
	}

	private void CheckForSimsOnTrap()
	{
		List<Sim> list = new List<Sim>(LotCurrent.GetSims());
		foreach (Sim item in list)
		{
			if (World.ObjectFootprintContainsPoint(ObjectId, RoutingFootprintHash, item.PositionOnFloor))
			{
				OnEnterTrapRegion(item);
			}
		}
	}

	private bool RouteInterruptCallback(Sim sim, Route interruptedPath)
	{
		return true;
	}

	private void OnEnterTrapRegion(Sim s)
	{
		if (s.SimDescription.ChildOrBelow || s.CarryingChildPosture != null || !CanTrapChangeInAnyMajorWay() || (s.InteractionQueue != null && s.InteractionQueue.RunningInteraction is AttemptToCross attemptToCross && attemptToCross.Target == this) || !InWorld || s.InteractionQueue.HasInteractionOfType(GetCaughtByTrap.Singleton))
		{
			return;
		}
		if (s.SimDescription.IsTombMummy)
		{
			if (mTrapType != TrapType.Fire)
			{
				return;
			}
			if (mTrapState == TrapState.ArmedAndHidden)
			{
				Appear(s);
				Flare(s);
			}
			Sarcophagus sarcophagus = Sarcophagus.FindTombMummysSarcophagus(s);
			if (sarcophagus != null)
			{
				if (s.IsRouting)
				{
					s.RequestRouteInterruptAction(RouteInterruptCallback, StopMode.kStop_Emergency);
				}
				sarcophagus.TombMummyPushDisintegrate(s);
				s.AddExitReason(ExitReason.Finished);
			}
		}
		else
		{
			if (s.IsRouting)
			{
				s.RequestRouteInterruptAction(RouteInterruptCallback, StopMode.kStop_Emergency);
			}
			s.InteractionQueue.AddNext(GetCaughtByTrap.Singleton.CreateInstance(this, s, new InteractionPriority(InteractionPriorityLevel.Fire, 7f), isAutonomous: false, cancellableByPlayer: false));
		}
	}

	private Slot[] GetCrossableRoutingSlots(Sim actor)
	{
		Slot[] crossRoutingSlots = CrossRoutingSlots;
		List<Slot> list = new List<Slot>();
		Slot[] array = crossRoutingSlots;
		foreach (Slot slot in array)
		{
			Slot oppositeSlot = GetOppositeSlot(slot);
			if (IsRoutingSlotObstructed(actor, slot) || IsRoutingSlotObstructed(actor, oppositeSlot))
			{
				continue;
			}
			Vector3 positionOfSlot = GetPositionOfSlot(slot);
			if (World.TestObjectPlacement(actor.ObjectId, TestObjectPlacementBooleans.TemporaryPlacement | TestObjectPlacementBooleans.AllowInFrontOfDoors, positionOfSlot))
			{
				positionOfSlot = GetPositionOfSlot(oppositeSlot);
				if (World.TestObjectPlacement(actor.ObjectId, TestObjectPlacementBooleans.TemporaryPlacement | TestObjectPlacementBooleans.AllowInFrontOfDoors, positionOfSlot))
				{
					list.Add(slot);
				}
			}
		}
		return list.ToArray();
	}

	private bool IsPuddleCoveringTrap()
	{
		BoundingBox boundingBox = BoundingBox;
		Vector3 vector = boundingBox.max - boundingBox.min;
		Vector3[] array = new Vector3[4]
		{
			new Vector3(vector.x * 0.5f, 0f, 0f),
			new Vector3(vector.x * -0.5f, 0f, 0f),
			new Vector3(0f, 0f, vector.z * 0.5f),
			new Vector3(0f, 0f, vector.z * -0.5f)
		};
		Vector3[] array2 = array;
		foreach (Vector3 vector2 in array2)
		{
			Vector3 worldPos = Position + vector2;
			LotLocation location = LotLocation.Invalid;
			World.GetLotLocation(worldPos, ref location);
			if (World.HasPuddle(LotCurrent.LotId, location))
			{
				return true;
			}
		}
		return false;
	}

	private bool ShouldSimGetAngryAtTrap(Sim sim)
	{
		if (mTrapType == TrapType.None)
		{
			return false;
		}
		float chance = kChanceSimYellsAtTrapBase;
		if (sim.TraitManager.HasAnyElement(kSimYellsAtTrapTraits))
		{
			chance = kChanceSimYellsAtTrapTrait;
		}
		return RandomUtil.RandomChance01(chance);
	}

	public bool IsArmed()
	{
		if (mTrapState != TrapState.ArmedAndHidden)
		{
			return mTrapState == TrapState.ArmedAndVisible;
		}
		return true;
	}

	public bool CoverByStatue(Sim sim)
	{
		if (IsFloorTrap)
		{
			if (mTrapState != TrapState.FiringAndVisible && mTrapState != TrapState.DisarmedAndVisible)
			{
				Flare(sim);
			}
			return DisarmTrap();
		}
		if (IsArmed())
		{
			return ActivateTrap(sim);
		}
		return false;
	}

	private bool ArmTrap(Sim sim)
	{
		if (mTrapState == TrapState.DormantAndHidden)
		{
			EnterState(TrapState.DormantAndHidden, TrapState.ArmedAndHidden);
			return true;
		}
		return false;
	}

	private bool DisarmTrapBehavior(Sim sim)
	{
		if (DisarmTrap())
		{
			Flare(sim);
			return true;
		}
		return false;
	}

	private bool DisarmTrap()
	{
		if (mTrapState != TrapState.DisarmedAndVisible)
		{
			EnterState(mTrapState, TrapState.DisarmedAndVisible);
			return true;
		}
		return false;
	}

	private bool ActivateTrap(Sim sim)
	{
		if (mTrapState != TrapState.FiringAndVisible && mTrapState != TrapState.DisarmedAndVisible)
		{
			EnterState(mTrapState, TrapState.FiringAndVisible, sim);
			return true;
		}
		return false;
	}

	private bool DeactivateTrap(Sim sim)
	{
		if (mTrapState == TrapState.FiringAndVisible)
		{
			EnterState(mTrapState, TrapState.ArmedAndVisible, sim);
			return true;
		}
		return false;
	}

	private bool SetToDormant(Sim sim)
	{
		if (mTrapState != TrapState.DormantAndHidden)
		{
			EnterState(mTrapState, TrapState.DormantAndHidden, sim);
			return true;
		}
		return false;
	}

	private bool FireOnceBriefly(Sim sim)
	{
		if (mTrapState != TrapState.DisarmedAndVisible)
		{
			EnterState(mTrapState, TrapState.FiringAndVisible, sim);
			mTurnOffAlarm = AddAlarm(mMinutesToFireOnceFor, TimeUnit.Minutes, TurnOffFromFireOnceBriefly, "TombTrap: Turn off from firing alarm", AlarmType.DeleteOnReset);
			return true;
		}
		return false;
	}

	private void TurnOffFromFireOnceBriefly()
	{
		EnterState(mTrapState, mPreviousTrapState);
	}
}
