/* Analyst: PC1.67 original managed evidence. Nearest same-lot same-level well or current-world exact named destination; gate slots/occupancy/footprints before confirmation and SetPosition. No world-loader call in this inspected path.
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
using Sims3.Gameplay.Skills;
using Sims3.Gameplay.Tutorial;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;
using Sims3.UI;

namespace Sims3.Gameplay.Objects.TombObjects;

public class DiveWell : GameObject, IHasWorldBuilderData, ISandsOfUnderstandingable, IGivesTombObjectStatus, ICanHasTombObjectComponent, ICanHavePuddlesUnderMe, GameObject.IDoNotDuplicateOnClone, ICanCountAsBeingIndoors, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent
{
	private enum WaterColor : uint
	{
		Aqua,
		Black,
		BrownDirty,
		Crazy,
		DarkBlue,
		DeepRed,
		LightPurple
	}

	private enum WarpWellType : uint
	{
		None,
		ClosestWarpWell,
		NamedWarpWell
	}

	public sealed class SetAsWarpWell : ImmediateInteraction<Sim, DiveWell>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, DiveWell, SetAsWarpWell>
		{
			public WarpWellType WarpWellType;

			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate2;

			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate3;

			public Definition()
			{
			}

			private Definition(WarpWellType warpWellType)
			{
				WarpWellType = warpWellType;
			}

			protected override bool Test(Sim actor, DiveWell target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.InUse)
				{
					greyedOutTooltipCallback = () => DiveWell.LocalizeString("InUseTooltip");
					return false;
				}
				if (target.mWarpWellType == WarpWellType && WarpWellType != WarpWellType.NamedWarpWell)
				{
					greyedOutTooltipCallback = () => DiveWell.LocalizeString("AlreadySelectedTooltip");
					return false;
				}
				return true;
			}

			protected override string GetInteractionName(Sim actor, DiveWell target, InteractionObjectPair iop)
			{
				switch (WarpWellType)
				{
				default:
					return LocalizeString("DontMakeWarpInteractionName");
				case WarpWellType.ClosestWarpWell:
					return LocalizeString("MakeWarpInteractionName");
				case WarpWellType.NamedWarpWell:
					if (target.mWarpWellType == WarpWellType.NamedWarpWell)
					{
						string text = target.mLinkedDiveWellName ?? string.Empty;
						return LocalizeString("ChangeUberWarpWellName", text);
					}
					return LocalizeString("MakeUberWarpWellName");
				}
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, DiveWell target, List<InteractionObjectPair> results)
			{
				foreach (WarpWellType value in Enum.GetValues(typeof(WarpWellType)))
				{
					Definition interaction = new Definition(value);
					InteractionObjectPair item = new InteractionObjectPair(interaction, target);
					results.Add(item);
				}
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/DiveWell/SetAsWarpWell";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/DiveWell/SetAsWarpWell:" + name, parameters);
		}

		protected override bool Run()
		{
			WarpWellType warpWellType = (InteractionDefinition as Definition).WarpWellType;
			bool flag = false;
			string text = null;
			if (warpWellType == WarpWellType.NamedWarpWell)
			{
				text = StringInputDialog.Show(LocalizeString("LinkedWellTitleText"), LocalizeString("LinkedWellPromptText"), Target.mLinkedDiveWellName, numbersOnly: false, 50);
				flag = !string.IsNullOrEmpty(text);
			}
			else
			{
				flag = true;
			}
			if (flag)
			{
				Target.mLinkedDiveWellName = text;
				Target.mWarpWellType = warpWellType;
			}
			return true;
		}
	}

	private sealed class SetName : ImmediateInteraction<Sim, DiveWell>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, DiveWell, SetName>
		{
			protected override bool Test(Sim actor, DiveWell target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override string GetInteractionName(Sim actor, DiveWell target, InteractionObjectPair iop)
			{
				string text = target.mDiveWellName ?? string.Empty;
				return LocalizeString("InteractionName", text);
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/DiveWell/SetName";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/DiveWell/SetName:" + name, parameters);
		}

		protected override bool Run()
		{
			string defaultEntryText = Target.mDiveWellName ?? string.Empty;
			string text = StringInputDialog.Show(LocalizeString("SetNameTitleText"), LocalizeString("SetNamePromptText"), defaultEntryText, numbersOnly: false, 50);
			if (!string.IsNullOrEmpty(text))
			{
				DiveWell[] objects = Queries.GetObjects<DiveWell>();
				foreach (DiveWell diveWell in objects)
				{
					if (diveWell != Target && text == diveWell.mDiveWellName)
					{
						StyledNotification.Format format = new StyledNotification.Format(LocalizeString("DuplicateWarningMessage"), StyledNotification.NotificationStyle.kDebugAlert);
						StyledNotification.Show(format);
						break;
					}
				}
			}
			if (text != string.Empty)
			{
				Target.mDiveWellName = text;
			}
			return true;
		}
	}

	public sealed class SetWaterColor : ImmediateInteraction<Sim, DiveWell>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, DiveWell, SetWaterColor>
		{
			public WaterColor WaterColor;

			public Definition()
			{
			}

			private Definition(WaterColor waterColor)
			{
				WaterColor = waterColor;
			}

			protected override bool Test(Sim actor, DiveWell target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.LotCurrent != null && target.LotCurrent.Household != null && target.LotCurrent.Household.IsActive)
				{
					return true;
				}
				return GameStates.IsBuildBuyLikeState;
			}

			protected override string GetInteractionName(Sim actor, DiveWell target, InteractionObjectPair iop)
			{
				return DiveWell.LocalizeString("WaterColor" + WaterColor);
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, DiveWell target, List<InteractionObjectPair> results)
			{
				foreach (WaterColor value in Enum.GetValues(typeof(WaterColor)))
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

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/DiveWell/SetWaterColor";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/DiveWell/SetWaterColor:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.mWaterColor = (InteractionDefinition as Definition).WaterColor;
			Target.UpdateVisualState();
			return true;
		}
	}

	public sealed class ExtinguishSelf : Interaction<Sim, DiveWell>
	{
		private sealed class Definition : InteractionDefinition<Sim, DiveWell, ExtinguishSelf>, IUsableWhileOnFire, IUsableDuringFire
		{
			protected override bool Test(Sim actor, DiveWell target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override string GetInteractionName(Sim actor, DiveWell target, InteractionObjectPair iop)
			{
				if (IsSimOnFire(actor))
				{
					return LocalizeString("ExtinguishSelfInteractionName");
				}
				return LocalizeString("CleanOffInteractionName");
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/DiveWell/ExtinguishSelf";

		public static readonly InteractionDefinition Singleton = new Definition();

		[Tunable]
		private static float kMinutesToStayUnderWater = 2f;

		private Slot mRoutingSlot;

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/DiveWell/ExtinguishSelf:" + name, parameters);
		}

		public override void Init(ref InteractionInstanceParameters parameters)
		{
			if (IsSimOnFire(parameters.Actor as Sim))
			{
				parameters.Priority = new InteractionPriority(InteractionPriorityLevel.Fire, 10f);
			}
			base.Init(ref parameters);
		}

		public void EnteredWaterCallback(StateMachineClient smc, IEvent evt)
		{
			Actor.SetHiddenFlags(HiddenFlags.Model);
		}

		public void ExitedWaterCallback(StateMachineClient smc, IEvent evt)
		{
			Actor.SetHiddenFlags(HiddenFlags.Nothing);
		}

		private void PlaySplashCallback(StateMachineClient smc, IEvent evt)
		{
			Target.PlaySplashVFX(mRoutingSlot);
		}

		protected override bool Run()
		{
			if (!Actor.RouteToSlotListAndCheckInUse((IGameObject)Target, Target.GetRoutingSlots(), out mRoutingSlot))
			{
				return false;
			}
			if (!Test())
			{
				return false;
			}
			if (!Target.EnableFootprintAndPushSims((uint)mRoutingSlot, Actor))
			{
				Target.DisableFootprint((uint)mRoutingSlot);
				mRoutingSlot = Slot.None;
				return false;
			}
			StandardEntry();
			BeginCommodityUpdates();
			AcquireStateMachine("DiveWell");
			UseAutoParameters(TraitNames.Hydrophobic, TraitNames.Coward);
			SetParameter("IKSuffix", Target.GetIKSuffix(mRoutingSlot));
			SetActorAndEnter("x", Actor, "Enter");
			SetActor("diveWell", Target);
			AddOneShotScriptEventHandler(110u, EnteredWaterCallback);
			AddOneShotScriptEventHandler(112u, PlaySplashCallback);
			if (IsSimOnFire(Actor))
			{
				AnimateSim("Extinguish Self");
			}
			else
			{
				if (ShouldSimFallIntoWell(Actor))
				{
					AnimateSim("Fall In");
				}
				AnimateSim("Dive");
			}
			if (Actor.TraitManager.HasElement(TraitNames.Hydrophobic))
			{
				Actor.BuffManager.AddElementPaused(BuffNames.Hydrophobic, Origin.FromDiveWell);
			}
			Tutorialette.TriggerLesson(Lessons.TombDiveWell, Actor);
			bool flag = Actor.BuffManager.HasAnyElement(BuffNames.Singed, BuffNames.SingedElectricity);
			Actor.BuffManager.RemoveElement(BuffNames.OnFire);
			Actor.BuffManager.RemoveElement(BuffNames.Torched);
			Actor.BuffManager.RemoveElement(BuffNames.Singed);
			Actor.BuffManager.RemoveElement(BuffNames.SingedElectricity);
			Actor.BuffManager.AddElement(BuffNames.Soaked, Origin.FromDiveWell);
			if (flag)
			{
				Actor.SwitchToOutfitWithoutSpin(Sim.ClothesChangeReason.GettingOutOfBath);
			}
			DoTimedLoop(kMinutesToStayUnderWater, ExitReason.None);
			Actor.SetForward(Actor.ForwardVector * -1f);
			AddOneShotScriptEventHandler(111u, ExitedWaterCallback);
			AnimateSim("Exit");
			EndCommodityUpdates(succeeded: true);
			StandardExit();
			return true;
		}

		public override void Cleanup()
		{
			if (StandardEntryCalled)
			{
				Actor.BuffManager.UnpauseBuff(BuffNames.Hydrophobic);
			}
			if (mRoutingSlot != Slot.None)
			{
				Target.DisableFootprint((uint)mRoutingSlot);
				mRoutingSlot = Slot.None;
			}
			base.Cleanup();
		}
	}

	private sealed class Dive : Interaction<Sim, DiveWell>
	{
		private sealed class Definition : InteractionDefinition<Sim, DiveWell, Dive>
		{
			protected override bool Test(Sim actor, DiveWell target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return !IsSimOnFire(actor);
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/DiveWell/Dive";

		private const int kTotalStagesToDive = 5;

		private const int kFirstDiveStage = 4;

		private const string kBubblesFXName = "ep1DiveWellBubbles";

		private VisualEffect mBubblesVFX;

		private float mTotalTimeToReachBottom;

		private int mCurrentStageInDive;

		private Slot mTargetWellSlot;

		private DiveWell mWellToWarpTo;

		private Slot mWarpWellSlot;

		private List<int> mDiveTNSsShownSoFar;

		[Tunable]
		private static float kMinutesToReachBottomOfWellForAthleticLevel0 = 40f;

		[Tunable]
		private static float kMinutesToReachBottomOfWellForAthleticLevel10 = 10f;

		[TunableComment("Range: Minutes.  Diving to the bottom of the well may take this much more or less than the minutes given by level of athletic skill.")]
		[Tunable]
		private static float kMinutesToReachBottomOfWellJitter = 10f;

		[Tunable]
		private static float kTimeHydrophobeTakesToReachBottomOfWellMultiplier = 1.2f;

		[Tunable]
		[TunableComment("Number of TNSs in the localization database that can come up while the sim is diving")]
		private static int kNumberOfDiveProgressTNSs = 3;

		[Tunable]
		private static int kNumberOfReachedBottomTNSs = 3;

		[Tunable]
		private static float kProbabilityOfReceivingATNSWhileDiving = 0.25f;

		[Tunable]
		[TunableComment("Time it will take to move the camera to the sim after warping wells.  Not sure what the range on this value is.")]
		private static float kTimeToFocusOnSimAfterWarping = 3f;

		[Tunable]
		[TunableComment("The fraction of the time it takes for a sim to surface based on how long it took him/her to dive")]
		private static float kFractionOfTimeFromDivingToSurface = 0.5f;

		[Tunable]
		private static float kMinimumMinutesAtBottomOfWellAfterTNS = 10f;

		[Tunable]
		private static float kMaximumMinutesAtBottomOfWellAfterTNS = 40f;

		[Tunable]
		private static float kMinimumMinutesAtBottomOfWellAfterTreasure = 10f;

		[Tunable]
		private static float kMaximumMinutesAtBottomOfWellAfterTreasure = 40f;

		[Tunable]
		[TunableComment("Range: Negative integer. Strength of the fear buff after a hydrophobic/coward sim dives.")]
		private static int kFearBuffMoodValue = -30;

		[Tunable]
		private static float kMinimumMinutesSurfacingToPlayABigGaspAfterSurfacing = 20f;

		[Tunable]
		private static float kMinutesSurfacingAfterWhichBigGaspIsAlwaysPlayedAfterSurfacing = 40f;

		[Tunable]
		private static float kAthleticSkillPointsGainedForSuccessfulDive = 20f;

		[Tunable]
		private static bool kIsSkillMeterVisible = true;

		[TunableComment("Multiplier (float value) to speed up time to reach bottom of well when glowing from Sands of Understanding.  Set to 1 to have no effect, 0.75 to take 75% of the time we'd otherwise take, etc.")]
		[Tunable]
		private static float kSandsOfUnderstandingDiveTimeMultiplier = 0.5f;

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(bool isFemale, string name, params object[] parameters)
		{
			return Localization.LocalizeString(isFemale, "Gameplay/Objects/TombObjects/DiveWell/Dive:" + name, parameters);
		}

		private static string LocalizeString(string name, params object[] parameters)
		{
			return LocalizeString(isFemale: false, name, parameters);
		}

		public void EnteredWaterCallback(StateMachineClient smc, IEvent evt)
		{
			Actor.SetHiddenFlags(HiddenFlags.Model);
		}

		public void ExitedWaterCallback(StateMachineClient smc, IEvent evt)
		{
			Actor.SetHiddenFlags(HiddenFlags.Nothing);
		}

		private void PlaySplashCallback(StateMachineClient smc, IEvent evt)
		{
			Target.PlaySplashVFX(mTargetWellSlot);
		}

		protected override bool Run()
		{
			if (!Actor.RouteToSlotListAndCheckInUse((IGameObject)Target, Target.GetRoutingSlots(), out mTargetWellSlot))
			{
				return false;
			}
			if (!Target.EnableFootprintAndPushSims((uint)mTargetWellSlot, Actor))
			{
				Target.DisableFootprint((uint)mTargetWellSlot);
				mTargetWellSlot = Slot.None;
				return false;
			}
			StandardEntry();
			BeginCommodityUpdates();
			AcquireStateMachine("DiveWell");
			UseAutoParameters(TraitNames.Hydrophobic, TraitNames.Coward);
			SetParameter("IKSuffix", Target.GetIKSuffix(mTargetWellSlot));
			SetActorAndEnter("x", Actor, "Enter");
			SetActor("diveWell", Target);
			if (Actor.TraitManager.HasElement(TraitNames.Hydrophobic))
			{
				Actor.BuffManager.AddElementPaused(BuffNames.Hydrophobic, Origin.FromDiveWell);
			}
			uint skillLevel = Skill.GetSkillLevel(Actor, SkillNames.Athletic);
			int maximumSupportedSkillLevel = SkillManager.GetMaximumSupportedSkillLevel(SkillNames.Athletic);
			float num = MathHelpers.LinearInterpolate(0f, maximumSupportedSkillLevel, kMinutesToReachBottomOfWellForAthleticLevel0, kMinutesToReachBottomOfWellForAthleticLevel10, skillLevel);
			mTotalTimeToReachBottom = Math.Max(0f, RandomUtil.GetFloat(num - kMinutesToReachBottomOfWellJitter, num + kMinutesToReachBottomOfWellJitter));
			if (Actor.TraitManager.HasAnyElement(TraitNames.Hydrophobic, TraitNames.Coward))
			{
				mTotalTimeToReachBottom *= kTimeHydrophobeTakesToReachBottomOfWellMultiplier;
			}
			if (Target.SandsOfUnderstandingComponent != null)
			{
				mTotalTimeToReachBottom *= kSandsOfUnderstandingDiveTimeMultiplier;
			}
			if (Actor.SimDescription.TombStats.IsWellSpelunker)
			{
				mTotalTimeToReachBottom *= TombStatTracking.kWellSpelunkerSpeedUpMultiplier;
			}
			mCurrentStageInDive = -1;
			UpdateDiveProgress(0f);
			AddOneShotScriptEventHandler(110u, EnteredWaterCallback);
			AddOneShotScriptEventHandler(112u, PlaySplashCallback);
			if (ShouldSimFallIntoWell(Actor))
			{
				AnimateSim("Fall In");
			}
			else if (ShouldSimComplainAboutGoingIntoWell(Actor))
			{
				AnimateSim("Complain");
				if (Actor.HasExitReason())
				{
					AnimateSim("Exit");
					StandardExit();
					EndCommodityUpdates(succeeded: false);
					return false;
				}
			}
			AnimateSim("Dive");
			Tutorialette.TriggerLesson(Lessons.TombDiveWell, Actor);
			mBubblesVFX = VisualEffect.Create("ep1DiveWellBubbles");
			mBubblesVFX.ParentTo(Target, Slot.FXJoint_0);
			mBubblesVFX.Start();
			float lastTime = SimClock.ElapsedTime(TimeUnit.Minutes);
			bool flag = DoLoop(ExitReason.Default, DiveLoop, null);
			if (flag)
			{
				Actor.RemoveExitReason(ExitReason.StageComplete);
				if (Actor.TraitManager.HasAnyElement(TraitNames.Hydrophobic, TraitNames.Coward))
				{
					BuffFear.GiveFear(Actor, kFearBuffMoodValue, Origin.FromDiveWell);
				}
				int num2 = RandomUtil.GetInt(kNumberOfReachedBottomTNSs - 1);
				Actor.ShowTNSIfSelectable(LocalizeString(Actor.IsFemale, "ReachedBottomTNS" + num2, Actor), StyledNotification.NotificationStyle.kGameMessagePositive, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
				float duration = RandomUtil.GetFloat(kMinimumMinutesAtBottomOfWellAfterTNS, kMaximumMinutesAtBottomOfWellAfterTNS);
				DoTimedLoop(duration, ExitReason.None);
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
					Target.TreasureComponent.GiveTreasuresToSim(list, Actor, playCollectionBehavior: true);
				}
				duration = RandomUtil.GetFloat(kMinimumMinutesAtBottomOfWellAfterTreasure, kMaximumMinutesAtBottomOfWellAfterTreasure);
				DoTimedLoop(duration, ExitReason.None);
				if (Target.TombObjectComponent.IsTriggerLinkedToAnyActivatedBehavior(Trigger.HiddenSwitch) && Target.TombObjectComponent.ActivateTrigger(Trigger.HiddenSwitch, Actor))
				{
					Actor.ShowTNSIfSelectable(LocalizeString("FindHiddenSwitchTNS"), StyledNotification.NotificationStyle.kGameMessagePositive, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
				}
				if (Target.mWarpWellType != WarpWellType.None)
				{
					mWellToWarpTo = Target.GetDiveWellToWarpTo();
					if (mWellToWarpTo != null)
					{
						if (AttemptToWarpWells())
						{
							if (Actor.Household != null)
							{
								Target.SetWhetherOrNotHouseholdHasBeenToThisDiveWell(Actor.SimDescription.HouseholdMembers, hasBeenToWell: true);
								if (mWellToWarpTo != null)
								{
									mWellToWarpTo.SetWhetherOrNotHouseholdHasBeenToThisDiveWell(Actor.SimDescription.HouseholdMembers, hasBeenToWell: true);
								}
							}
						}
						else
						{
							Actor.ShowTNSIfSelectable(LocalizeString("TunnelBlockedTNS"), StyledNotification.NotificationStyle.kGameMessagePositive, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
						}
					}
				}
			}
			else
			{
				mTotalTimeToReachBottom = SimClock.ElapsedTimeInMinutes(ref lastTime);
			}
			if (mBubblesVFX != null)
			{
				mBubblesVFX.Stop();
				mBubblesVFX.Dispose();
				mBubblesVFX = null;
			}
			bool flag2 = Actor.BuffManager.HasAnyElement(BuffNames.Singed, BuffNames.SingedElectricity);
			Actor.BuffManager.RemoveElement(BuffNames.Singed);
			Actor.BuffManager.RemoveElement(BuffNames.SingedElectricity);
			Actor.BuffManager.AddElement(BuffNames.Soaked, Origin.FromDiveWell);
			mTotalTimeToReachBottom *= kFractionOfTimeFromDivingToSurface;
			DoTimedLoop(mTotalTimeToReachBottom, ExitReason.None);
			if (flag)
			{
				Target.RemoveComponent<SandsOfUnderstandingComponent>();
				Actor.SimDescription.TombStats.IncrementDiveWellsExplored();
				EventTracker.SendEvent(EventTypeId.kExploredDiveWell, Actor, Target);
			}
			if (flag2)
			{
				Actor.SwitchToOutfitWithoutSpin(Sim.ClothesChangeReason.GettingOutOfBath);
			}
			float chance = MathHelpers.LinearInterpolate(kMinimumMinutesSurfacingToPlayABigGaspAfterSurfacing, kMinutesSurfacingAfterWhichBigGaspIsAlwaysPlayedAfterSurfacing, 0f, 1f, mTotalTimeToReachBottom);
			bool paramValue = RandomUtil.RandomChance01(chance);
			SetParameter("BigGasp", paramValue);
			Actor.SetForward(Actor.ForwardVector * -1f);
			AddOneShotScriptEventHandler(111u, ExitedWaterCallback);
			AnimateSim("Exit");
			if (flag)
			{
				Skill skill = Actor.SkillManager.AddElement(SkillNames.Athletic);
				skill.AddPoints(kAthleticSkillPointsGainedForSuccessfulDive, kIsSkillMeterVisible);
			}
			Target.DisableFootprint((uint)mTargetWellSlot);
			mTargetWellSlot = Slot.None;
			EndCommodityUpdates(flag);
			StandardExit();
			return true;
		}

		private bool UpdateDiveProgress(float totalElapsedTime)
		{
			float num = mTotalTimeToReachBottom - totalElapsedTime;
			int num2 = (int)Math.Ceiling(4f * num / mTotalTimeToReachBottom);
			if (num2 >= 5)
			{
				num2 = 4;
			}
			if (num2 < 0)
			{
				num2 = 0;
			}
			if (num2 != mCurrentStageInDive)
			{
				if (num2 != 0 && num2 != 4 && RandomUtil.RandomChance01(kProbabilityOfReceivingATNSWhileDiving))
				{
					if (mDiveTNSsShownSoFar == null)
					{
						mDiveTNSsShownSoFar = new List<int>();
					}
					int num3 = RandomUtil.GetInt(kNumberOfDiveProgressTNSs - 1);
					while (mDiveTNSsShownSoFar.Contains(num3) && mDiveTNSsShownSoFar.Count < kNumberOfDiveProgressTNSs)
					{
						num3 = RandomUtil.GetInt(kNumberOfDiveProgressTNSs - 1);
					}
					Actor.ShowTNSIfSelectable(LocalizeString(Actor.IsFemale, "DiveProgressTNS" + num3, Actor), StyledNotification.NotificationStyle.kGameMessagePositive, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
					mDiveTNSsShownSoFar.Add(num3);
				}
				mCurrentStageInDive = num2;
			}
			return mCurrentStageInDive == 0;
		}

		private void DiveLoop(StateMachineClient smc, LoopData ld)
		{
			if (UpdateDiveProgress(ld.mLifeTime))
			{
				Actor.AddExitReason(ExitReason.StageComplete);
			}
		}

		private bool AttemptToWarpWells()
		{
			if (mWellToWarpTo == null)
			{
				return false;
			}
			if (mWellToWarpTo.InUse)
			{
				return false;
			}
			Slot[] unobstructedRoutingSlots = mWellToWarpTo.GetUnobstructedRoutingSlots(Actor);
			if (unobstructedRoutingSlots.Length > 0)
			{
				mWarpWellSlot = unobstructedRoutingSlots[0];
				if (!mWellToWarpTo.PushSimsFromFootprint((uint)mWarpWellSlot, Actor, null, waitForPushes: true))
				{
					mWarpWellSlot = Slot.None;
					return false;
				}
			}
			else
			{
				Slot[] routingSlots = mWellToWarpTo.GetRoutingSlots();
				foreach (Slot slot in routingSlots)
				{
					if (mWellToWarpTo.PushSimsFromFootprint((uint)slot, Actor, null, waitForPushes: true) && !mWellToWarpTo.IsRoutingSlotObstructed(Actor, slot))
					{
						mWarpWellSlot = slot;
						break;
					}
				}
				if (mWarpWellSlot == Slot.None)
				{
					return false;
				}
			}
			if (!mWellToWarpTo.EnableFootprint((uint)mWarpWellSlot))
			{
				mWellToWarpTo.DisableFootprint((uint)mWarpWellSlot);
				mWarpWellSlot = Slot.None;
				return false;
			}
			if ((Actor.Household == null || !Target.HasHouseholdBeenToThisWell(Actor.SimDescription.HouseholdMembers)) ? TwoButtonDialog.Show(LocalizeString(Actor.IsFemale, "FirstTimePortalChoice", Actor), LocalizeString("FirstTimePortalChoiceYes"), LocalizeString("FirstTimePortalChoiceNo")) : TwoButtonDialog.Show(LocalizeString("PortalChoice"), LocalizeString("PortalChoiceYes"), LocalizeString("PortalChoiceNo")))
			{
				mWellToWarpTo.AddToUseList(Actor);
				Actor.SetPosition(mWellToWarpTo, mWarpWellSlot);
				Actor.SetForward(Slots.GetForwardOfSlot(mWellToWarpTo.ObjectId, mWarpWellSlot));
				SetActor("DiveWell", mWellToWarpTo);
				SetParameter("IKSuffix", mWellToWarpTo.GetIKSuffix(mWarpWellSlot));
				if (!Camera.sCameraFollow.IsSimBeingFollowed(Actor) && Actor.IsActiveSim)
				{
					Camera.FocusOnSim(Actor, kTimeToFocusOnSimAfterWarping);
				}
			}
			else
			{
				mWellToWarpTo.DisableFootprint((uint)mWarpWellSlot);
				mWellToWarpTo = null;
				mWarpWellSlot = Slot.None;
			}
			return true;
		}

		public override void Cleanup()
		{
			base.Cleanup();
			if (StandardEntryCalled)
			{
				Actor.SetHiddenFlags(HiddenFlags.Nothing);
				Actor.BuffManager.UnpauseBuff(BuffNames.Hydrophobic);
			}
			if (mBubblesVFX != null)
			{
				mBubblesVFX.Stop();
				mBubblesVFX.Dispose();
				mBubblesVFX = null;
			}
			if (mTargetWellSlot != Slot.None)
			{
				Target.DisableFootprint((uint)mTargetWellSlot);
				mTargetWellSlot = Slot.None;
			}
			if (mWellToWarpTo != null)
			{
				if (mWellToWarpTo.IsActorUsingMe(Actor))
				{
					mWellToWarpTo.RemoveFromUseList(Actor);
				}
				if (mWarpWellSlot != Slot.None)
				{
					mWellToWarpTo.DisableFootprint((uint)mWarpWellSlot);
				}
				mWarpWellSlot = Slot.None;
				mWellToWarpTo = null;
			}
		}
	}

	private const string sLocalizationKey = "Gameplay/Objects/TombObjects/DiveWell";

	private const uint kWarpWellType = 143308216u;

	private const uint kWaterColor = 144407944u;

	private const uint kDiveWellName = 144797548u;

	private const uint kLinkedDiveWellName = 144797552u;

	private const string kWorldBuilderDataName = "DiveWell";

	private const uint kGetInWaterEvent = 110u;

	private const uint kGetOutOfWaterEvent = 111u;

	private const uint kSplashVFXEvent = 112u;

	private const string kSoundName = "divewell_lp";

	private const string kVFXSplashName = "ep1DiveWellJumpInSplash02";

	[Tunable]
	[TunableComment("Range: Float [0,1]. Base chance of falling in the well.")]
	private static float kFallInChanceBase = 0.05f;

	[Tunable]
	[TunableComment("Range: Float [0,1]. Chance for sims with kFallInTraits to fall in.")]
	private static float kFallInChanceTrait = 0.1f;

	[Tunable]
	[TunableComment("List of traits that makes the sim more likely to fall into the dive well.")]
	private static TraitNames[] kFallInTraits = new TraitNames[2]
	{
		TraitNames.Clumsy,
		TraitNames.Childish
	};

	[Tunable]
	[TunableComment("Range: Float [0,1]. Base chance of complaining before diving.")]
	private static float kComplainChanceBase = 0.05f;

	[TunableComment("Range: Float [0,1]. Chance for sims with kComplainTraits to complain.")]
	[Tunable]
	private static float kComplainChanceTrait = 0.1f;

	[Tunable]
	[TunableComment("List of traits that makes the sim more likely to complain before diving.")]
	private static TraitNames[] kComplainTraits = new TraitNames[2]
	{
		TraitNames.Coward,
		TraitNames.Hydrophobic
	};

	private static readonly string[] kWorldBuilderDataKeyRemap = new string[8]
	{
		143308216u.ToString(),
		"Type",
		144407944u.ToString(),
		"Color",
		144797548u.ToString(),
		"Name",
		144797552u.ToString(),
		"LinkedName"
	};

	private readonly string[] kMaterialStateNames = new string[7] { "waterAqua", "waterBlack", "waterBrownDirty", "waterCrazy", "waterDarkBlue", "waterDeepRed", "waterLightPurple" };

	private WaterColor mWaterColor;

	private WarpWellType mWarpWellType;

	private string mDiveWellName;

	private string mLinkedDiveWellName;

	private ObjectSound mSoundHandle;

	private IDictionary<ulong, bool> mSimsThatHaveDiscoveredThisWarpWell = new Dictionary<ulong, bool>();

	private static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/Objects/TombObjects/DiveWell:" + name, parameters);
	}

	public override void OnCreation()
	{
		base.OnCreation();
		UpdateVisualState();
	}

	public override void OnStartup()
	{
		base.OnStartup();
		AddComponent<TreasureComponent>(new object[0]);
		AddComponent<TombObjectStaticComponent>(new object[0]);
		AddComponent<AdventureComponent>(new object[0]);
		AddInteraction(Dive.Singleton);
		AddInteraction(ExtinguishSelf.Singleton);
		AddInteraction(SetWaterColor.Singleton);
		SetupSound();
	}

	public override void Dispose()
	{
		if (mSoundHandle != null)
		{
			mSoundHandle.Dispose();
			mSoundHandle = null;
		}
		base.Dispose();
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		buildBuyInteractions.Add(SetAsWarpWell.Singleton);
		buildBuyInteractions.Add(SetWaterColor.Singleton);
		buildBuyInteractions.Add(SetName.Singleton);
		base.AddBuildBuyInteractions(buildBuyInteractions);
	}

	protected override void AddDebugInteractions(List<InteractionDefinition> debugInteractions)
	{
		base.AddDebugInteractions(debugInteractions);
	}

	public bool IsInteractionConsideredIndoors(InteractionInstance instance)
	{
		if (instance is Dive || instance is ExtinguishSelf)
		{
			return true;
		}
		return false;
	}

	public void OnAddTombObjectComponent(ITombObjectComponent tombObjectComponent)
	{
		tombObjectComponent.RegisterTrigger(Trigger.HiddenSwitch);
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		writer.WriteUint32(143308216u, (uint)mWarpWellType);
		writer.WriteUint32(144407944u, (uint)mWaterColor);
		writer.WriteString(144797548u, mDiveWellName);
		writer.WriteString(144797552u, mLinkedDiveWellName);
		return base.ExportContent(resKeyTable, objIdTable, writer);
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		reader.ReadUint32(143308216u, out var value, 0u);
		if (Enum.IsDefined(typeof(WarpWellType), value))
		{
			mWarpWellType = (WarpWellType)value;
		}
		else
		{
			mWarpWellType = WarpWellType.None;
		}
		reader.ReadUint32(144407944u, out var value2, 0u);
		if (Enum.IsDefined(typeof(WaterColor), value2))
		{
			mWaterColor = (WaterColor)value2;
		}
		else
		{
			mWaterColor = WaterColor.Aqua;
		}
		reader.ReadString(144797548u, out mDiveWellName, null);
		reader.ReadString(144797552u, out mLinkedDiveWellName, null);
		UpdateVisualState();
		return base.ImportContent(resKeyTable, objIdTable, reader);
	}

	public void SaveWorldBuilderData()
	{
		WorldBuilderData.Set("DiveWell", ObjectId, "Type", mWarpWellType, WarpWellType.None);
		WorldBuilderData.Set("DiveWell", ObjectId, "Color", mWaterColor, WaterColor.Aqua);
		WorldBuilderData.Set("DiveWell", ObjectId, "Name", mDiveWellName, null);
		WorldBuilderData.Set("DiveWell", ObjectId, "LinkedName", mLinkedDiveWellName, null);
		WorldBuilderData.Set("DiveWell", ObjectId, "Version", 1, 0);
	}

	public void LoadWorldBuilderData()
	{
		int value = 0;
		WorldBuilderData.SetKeyRemap(kWorldBuilderDataKeyRemap);
		WorldBuilderData.Get("DiveWell", ObjectId, "Version", ref value);
		if (value >= 1)
		{
			WorldBuilderData.Get("DiveWell", ObjectId, "Type", ref mWarpWellType);
		}
		else if (WorldBuilderData.Get("DiveWell", ObjectId, "Type", defaultValue: false))
		{
			mWarpWellType = WarpWellType.ClosestWarpWell;
		}
		else
		{
			mWarpWellType = WarpWellType.None;
		}
		WorldBuilderData.Get("DiveWell", ObjectId, "Color", ref mWaterColor);
		WorldBuilderData.Get("DiveWell", ObjectId, "Name", ref mDiveWellName);
		WorldBuilderData.Get("DiveWell", ObjectId, "LinkedName", ref mLinkedDiveWellName);
		UpdateVisualState();
	}

	public override bool PackForMovingOverride()
	{
		return true;
	}

	private void SetupSound()
	{
		if (mSoundHandle != null)
		{
			mSoundHandle.Dispose();
			mSoundHandle = null;
		}
		mSoundHandle = new ObjectSound(ObjectId, "divewell_lp");
		mSoundHandle.StartLoop();
	}

	private void SetWhetherOrNotHouseholdHasBeenToThisDiveWell(List<ulong> householdMembers, bool hasBeenToWell)
	{
		foreach (ulong householdMember in householdMembers)
		{
			if (hasBeenToWell)
			{
				mSimsThatHaveDiscoveredThisWarpWell[householdMember] = true;
			}
			else
			{
				mSimsThatHaveDiscoveredThisWarpWell.Remove(householdMember);
			}
		}
	}

	public bool HasHouseholdBeenToThisWell(List<ulong> householdMembers)
	{
		foreach (ulong householdMember in householdMembers)
		{
			if (mSimsThatHaveDiscoveredThisWarpWell.ContainsKey(householdMember))
			{
				return true;
			}
		}
		return false;
	}

	private DiveWell GetClosestWarpWell()
	{
		float num = float.MaxValue;
		DiveWell result = null;
		DiveWell[] objects = LotCurrent.GetObjects<DiveWell>();
		foreach (DiveWell diveWell in objects)
		{
			if (diveWell != this && diveWell.mLevel == mLevel && diveWell.mWarpWellType == WarpWellType.ClosestWarpWell)
			{
				float distanceToObject = GetDistanceToObject(diveWell);
				if (distanceToObject < num)
				{
					num = distanceToObject;
					result = diveWell;
				}
			}
		}
		return result;
	}

	private DiveWell GetNamedWarpWell()
	{
		if (string.IsNullOrEmpty(mLinkedDiveWellName))
		{
			return null;
		}
		List<DiveWell> list = new List<DiveWell>();
		DiveWell[] objects = Queries.GetObjects<DiveWell>();
		foreach (DiveWell diveWell in objects)
		{
			if (diveWell.mDiveWellName == mLinkedDiveWellName)
			{
				list.Add(diveWell);
			}
		}
		if (list.Count == 0)
		{
			return null;
		}
		return RandomUtil.GetRandomObjectFromList(list);
	}

	private DiveWell GetDiveWellToWarpTo()
	{
		if (LotCurrent == null)
		{
			return null;
		}
		return mWarpWellType switch
		{
			WarpWellType.ClosestWarpWell => GetClosestWarpWell(), 
			WarpWellType.NamedWarpWell => GetNamedWarpWell(), 
			_ => null, 
		};
	}

	private void UpdateVisualState()
	{
		SetMaterial(kMaterialStateNames[(uint)mWaterColor]);
	}

	private string GetIKSuffix(Slot slot)
	{
		return slot switch
		{
			Slot.RoutingSlot_1 => "01_", 
			Slot.RoutingSlot_2 => "02_", 
			Slot.RoutingSlot_3 => "03_", 
			Slot.RoutingSlot_4 => "04_", 
			Slot.RoutingSlot_5 => "05_", 
			Slot.RoutingSlot_6 => "06_", 
			Slot.RoutingSlot_7 => "07_", 
			_ => "", 
		};
	}

	private static bool IsSimOnFire(Sim actor)
	{
		return actor.BuffManager.HasAnyElement(BuffNames.OnFire, BuffNames.Torched);
	}

	private static bool ShouldSimFallIntoWell(Sim actor)
	{
		float chance = kFallInChanceBase;
		if (actor.TraitManager.HasAnyElement(kFallInTraits))
		{
			chance = kFallInChanceTrait;
		}
		return RandomUtil.RandomChance01(chance);
	}

	private static bool ShouldSimComplainAboutGoingIntoWell(Sim actor)
	{
		float chance = kComplainChanceBase;
		if (actor.TraitManager.HasAnyElement(kComplainTraits))
		{
			chance = kComplainChanceTrait;
		}
		return RandomUtil.RandomChance01(chance);
	}

	private void PlaySplashVFX(Slot routingSlot)
	{
		VisualEffect.FireOneShotEffect("ep1DiveWellJumpInSplash02", this, routingSlot, VisualEffect.TransitionType.SoftTransition);
	}

	public bool CanTurnOnUnderstandingGlowNow()
	{
		return true;
	}

	public bool ShouldUnderstandingGlowBePositive()
	{
		return true;
	}

	public bool ShouldConsumeSandsOfUnderstanding()
	{
		return true;
	}

	public SandsOfUnderstandingComponent.OnGlowCallback GetOnGlowCallback()
	{
		return null;
	}

	public string GetStatusText()
	{
		string text = LocalizeString("WellType", LocalizeString(mWarpWellType.ToString()));
		if (mWarpWellType == WarpWellType.NamedWarpWell)
		{
			text = text + "\n\n" + LocalizeString("DestinationWell", mLinkedDiveWellName);
		}
		return text;
	}
}
