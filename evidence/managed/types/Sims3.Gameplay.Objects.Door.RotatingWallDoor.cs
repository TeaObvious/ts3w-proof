/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.EventSystem;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Objects.TombObjects;
using Sims3.Gameplay.Skills;
using Sims3.Gameplay.Tutorial;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;
using Sims3.UI;

namespace Sims3.Gameplay.Objects.Door;

public class RotatingWallDoor : SecretDoor, IBuildBuyListener, ISandsOfUnderstandingable, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent
{
	private sealed class Inspect : Interaction<Sim, RotatingWallDoor>
	{
		private sealed class Definition : InteractionDefinition<Sim, RotatingWallDoor, Inspect>
		{
			protected override bool Test(Sim a, RotatingWallDoor target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.IsDiscoverable)
				{
					return !target.IsDiscovered;
				}
				return false;
			}
		}

		[TunableComment("Range:  0 - 10  Description:  A set of logic skill levels that define the other tunable")]
		[Tunable]
		private static int[] kLogicSkillBoundaries = new int[5] { 0, 3, 5, 7, 10 };

		[Tunable]
		[TunableComment("Range:  0.0 - 1.0  Description:  For each logic skill level defined, the chance the Sim will fail")]
		private static float[] kChancesOfFailure = new float[5] { 0.8f, 0.7f, 0.3f, 0f, 0f };

		[Tunable]
		[TunableComment("Range:  0.0 - 1.0  Description:  For each logic skill level defined, given a failure, the chance it will be epic")]
		private static float[] kChancesOfEpicFailure = new float[5] { 0.5f, 0.3f, 0f, 0f, 0f };

		[Tunable]
		[TunableComment("Range:  0+  Description:  For each logic skill level defined, the normal time it will take the Sim, in Sim minutes, to end the inspection")]
		private static float[] kAverageInspectionTimes = new float[5] { 19f, 15f, 10f, 7f, 4f };

		[TunableComment("Range:  0 - 1.0 Description:  The percentage by which the average inspection time can skew")]
		[Tunable]
		private static float kAverageInspectionTimeSkew = 0.25f;

		public static readonly InteractionDefinition Singleton = new Definition();

		private static readonly ulong kIconQuestionMarkHash = ResourceUtils.HashString64("misc_question_mark");

		public override ThumbnailKey GetIconKey()
		{
			return new ThumbnailKey(new ResourceKey(kIconQuestionMarkHash, 796721156u, 0u), ThumbnailSize.Medium);
		}

		protected override bool Run()
		{
			if (!Target.RouteToSecretDoor(Actor, out var ikSuffix))
			{
				return false;
			}
			int num = 0;
			int skillLevel = Actor.SkillManager.GetSkillLevel(SkillNames.Logic);
			for (int i = 0; i < kLogicSkillBoundaries.Length && skillLevel >= kLogicSkillBoundaries[i]; i++)
			{
				num = i;
			}
			bool flag = RandomUtil.RandomChance01(kChancesOfFailure[num]);
			bool flag2 = flag && RandomUtil.RandomChance01(kChancesOfEpicFailure[num]);
			float duration = RandomUtil.RandomFloatGaussianDistributionWithSkew(kAverageInspectionTimes[num], kAverageInspectionTimeSkew);
			StandardEntry();
			BeginCommodityUpdates();
			Target.EnableFootprintAndPushSims(kOpeningFootprint, Actor);
			EnterStateMachine("doorRotatingWall", "Enter", "x");
			SetActor("rotatingWall", Target);
			if (!string.IsNullOrEmpty(ikSuffix))
			{
				SetParameter("ikSuffix", ikSuffix);
			}
			AnimateSim("LoopInspect");
			bool flag3 = DoTimedLoop(duration);
			if (flag3)
			{
				if (flag)
				{
					AnimateSim(flag2 ? "FailInspect" : "CancelInspect");
				}
				else
				{
					AnimateSim("SucceedInspect");
					if (!Target.IsDiscovered)
					{
						EventTracker.SendEvent(EventTypeId.kFoundHiddenDoor, Actor, Target);
						Target.UnHide();
					}
					Target.ShowInspectTns(Actor);
					Target.mHasBeenInspected = true;
					if (Target.mIsAutoOpenAfterInspect && !Target.IsLocked)
					{
						Actor.Wander(1f, 2f, limitOutdoors: false, RouteDistancePreference.PreferNearestToRouteOrigin, doRoutFail: false);
						Target.Open();
					}
				}
				Tutorialette.TriggerLesson(Lessons.TombHiddenDoor, Actor);
			}
			else
			{
				AnimateSim("CancelInspect");
			}
			AnimateSim("ExitClosed");
			EndCommodityUpdates(flag3);
			StandardExit();
			return flag3;
		}

		public override void Cleanup()
		{
			base.Cleanup();
			if (StandardEntryCalled)
			{
				Target.DisableFootprint(kOpeningFootprint);
			}
		}
	}

	private sealed class ReInspect : ImmediateInteraction<Sim, RotatingWallDoor>
	{
		private sealed class Definition : ImmediateInteractionDefinition<Sim, RotatingWallDoor, ReInspect>
		{
			protected override string GetInteractionName(Sim actor, RotatingWallDoor target, InteractionObjectPair iop)
			{
				if (target.mHasBeenInspected)
				{
					return Localization.LocalizeString("Gameplay/Objects/Door/RotatingWallDoor/ReInspect:InteractionName");
				}
				return Localization.LocalizeString("Gameplay/Objects/Door/RotatingWallDoor/Inspect:InteractionName");
			}

			protected override bool Test(Sim a, RotatingWallDoor target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.IsDiscovered && target.IsLocked)
				{
					return !target.IsOpen;
				}
				return false;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Target.ShowInspectTns(Actor);
			Target.mHasBeenInspected = true;
			return true;
		}
	}

	private sealed class PushOpen : Interaction<Sim, RotatingWallDoor>
	{
		private sealed class Definition : InteractionDefinition<Sim, RotatingWallDoor, PushOpen>
		{
			protected override bool Test(Sim a, RotatingWallDoor target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.IsDiscovered && !target.IsLocked && !target.IsOpen)
				{
					return !target.IsMoving;
				}
				return false;
			}
		}

		[TunableComment("Range:  0+  Description:  The delta from the min skill level after which the medium speed is used")]
		[Tunable]
		private static int kAthleticSkillDeltaForMediumSpeed = 3;

		[Tunable]
		[TunableComment("Range:  0+  Description:  How long it normally takes for Sims athletic>min, athletic>min+deltamedium, athletic>recommended to open the door, in Sim minutes")]
		private static float[] kAverageOpeningTime = new float[3] { 25f, 13f, 4f };

		[Tunable]
		[TunableComment("Range:  0 - 1.0  Description:  The percentage by which the average opening time can skew")]
		private static float kAverageOpeningTimeSkew = 0.25f;

		[TunableComment("Range:  0 - 1.0  Description:  This percentage of the time necessary to open the door will be in the first loop")]
		[Tunable]
		private static float kOpeningTimeFirstLoopRatio = 0.7f;

		[Tunable]
		[TunableComment("Range:  0 - 1.0  Description:  The chance of a failure, provided the athletic skill level is below the recommended level")]
		private static float kChanceOfFailure = 0.7f;

		[Tunable]
		[TunableComment("Range:  0 - 1.0  Description:  Given a failure, the chance that it will be epic")]
		private static float kChanceOfEpicFailure = 0.3f;

		[TunableComment("Range:  0 - 1.0  Description:  The chance of a very funny failure")]
		[Tunable]
		private static float kChanceOfFunnyFailure = 0.1f;

		[Tunable]
		[TunableComment("Multiplier (float value) to reduce time to push open the rotating wall door when glowing from Sands of Understanding.  Set to 1 to have no effect, 0.5 to speed up by 50%, etc.")]
		private static float kSandsOfUnderstandingOpenTimeMultiplier = 0.5f;

		[TunableComment("Range:  0+  Description:  The Athletic gain per Sim minute")]
		[Tunable]
		private static float kAthleticSkillGainRate = 2f;

		[TunableComment("Range:  true/false  Description:  True, to show the skill meter, false otherwise")]
		[Tunable]
		private static bool kIsSkillMeterVisible = true;

		private float mTimeToOpen;

		private float mTimeToOpenThisStage;

		private float mTimeSpentOpening;

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			if (!Target.RouteToSecretDoor(Actor, out var ikSuffix) || !Test())
			{
				return false;
			}
			StandardEntry();
			BeginCommodityUpdates();
			Target.OnStartMoving();
			Target.EnableFootprintAndPushSims(kOpeningFootprint, Actor);
			EnterStateMachine("doorRotatingWall", "Enter", "x");
			SetActor("rotatingWall", Target);
			if (!string.IsNullOrEmpty(ikSuffix))
			{
				SetParameter("ikSuffix", ikSuffix);
			}
			AddOneShotScriptEventHandler(104u, OnPushedOpen);
			AddOneShotScriptEventHandler(105u, OnHandStuckInDoor);
			int skillLevel = Actor.SkillManager.GetSkillLevel(SkillNames.Athletic);
			bool flag = RandomUtil.RandomChance01(kChanceOfFunnyFailure);
			bool flag2 = false;
			bool flag3 = false;
			if (skillLevel < Target.AthleticSkillRecommended)
			{
				flag2 = RandomUtil.RandomChance01(kChanceOfFailure);
				if (flag2)
				{
					flag3 = RandomUtil.RandomChance01(kChanceOfEpicFailure);
				}
			}
			mTimeToOpen = kAverageOpeningTime[0];
			if (skillLevel >= Target.AthleticSkillMinimum + kAthleticSkillDeltaForMediumSpeed)
			{
				mTimeToOpen = kAverageOpeningTime[1];
			}
			if (skillLevel >= Target.AthleticSkillRecommended)
			{
				mTimeToOpen = kAverageOpeningTime[2];
			}
			mTimeToOpen = RandomUtil.RandomFloatGaussianDistributionWithSkew(mTimeToOpen, kAverageOpeningTimeSkew);
			if (Target.SandsOfUnderstandingComponent != null)
			{
				mTimeToOpen *= kSandsOfUnderstandingOpenTimeMultiplier;
			}
			ProgressMeter.ShowProgressMeter(Actor, 0f, ProgressMeter.GlowType.Weak);
			float lastTime = SimClock.ElapsedTime(TimeUnit.Minutes);
			AnimateSim("LoopClosed");
			mTimeToOpenThisStage = mTimeToOpen * kOpeningTimeFirstLoopRatio;
			bool flag4 = DoLoop(ExitReason.Default, Open, mCurrentStateMachine);
			if (!flag4 || (skillLevel < Target.AthleticSkillMinimum && !flag))
			{
				AnimateSim("ExitClosed");
			}
			else if (flag)
			{
				AnimateSim("FunnyFailOpen");
				AnimateSim("ExitOpen");
				Target.OnWalkedThrough(Actor);
			}
			else
			{
				AnimateSim("LoopHalfOpen");
				Actor.RemoveExitReason(ExitReason.StageComplete);
				mTimeToOpenThisStage = mTimeToOpen * (1f - kOpeningTimeFirstLoopRatio);
				flag4 = DoLoop(ExitReason.Default, Open, mCurrentStateMachine);
				if (!flag4)
				{
					AnimateSim("CancelOpen");
					AnimateSim("ExitClosed");
				}
				else if (flag2)
				{
					if (flag3)
					{
						AnimateSim("EpicFailOpen");
					}
					else
					{
						AnimateSim("FailOpen");
					}
					AnimateSim("ExitClosed");
				}
				else
				{
					AnimateSim("ExitOpen");
					Target.OnWalkedThrough(Actor);
				}
			}
			Target.OnDoneMoving();
			ProgressMeter.HideProgressMeter(Actor, Target.IsOpen);
			Skill skill = Actor.SkillManager.AddElement(SkillNames.Athletic);
			float num = SimClock.ElapsedTimeInMinutes(ref lastTime);
			skill.AddPoints(num * kAthleticSkillGainRate, kIsSkillMeterVisible);
			EndCommodityUpdates(flag4);
			StandardExit();
			return flag4;
		}

		public override void Cleanup()
		{
			base.Cleanup();
			if (StandardEntryCalled)
			{
				Target.DisableFootprint(kOpeningFootprint);
			}
		}

		private void Open(StateMachineClient smc, LoopData ld)
		{
			mTimeSpentOpening += ld.mDeltaTime;
			ProgressMeter.UpdateProgressMeter(Actor, MathUtils.Clamp(mTimeSpentOpening / mTimeToOpen, 0f, 1f), ProgressMeter.GlowType.Weak);
			if (ld.mLifeTime >= mTimeToOpenThisStage)
			{
				Actor.AddExitReason(ExitReason.StageComplete);
			}
		}

		private void OnPushedOpen(StateMachineClient smc, IEvent evt)
		{
			Target.RemoveComponent<SandsOfUnderstandingComponent>();
			Target.SetOpen();
			if (Target.IsAutoshut)
			{
				Target.CloseWhenAble();
			}
		}

		private void OnHandStuckInDoor(StateMachineClient smc, IEvent evt)
		{
			Actor.BuffManager.AddElement(BuffNames.HurtHand, Origin.FromRotatingWallDoor);
			TraitFunctions.TraitReactionToDanger(Actor, ReactionSpeed.NowOrLater);
		}
	}

	private sealed class SetAthleticSkillRequirements : ImmediateInteraction<IActor, RotatingWallDoor>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<IActor, RotatingWallDoor, SetAthleticSkillRequirements>
		{
			private bool mIsMinimum;

			private int mSkillLevel;

			public bool IsMinimum => mIsMinimum;

			public int SkillLevel => mSkillLevel;

			public Definition()
			{
			}

			private Definition(bool isMinimum, int skillLevel)
			{
				mIsMinimum = isMinimum;
				mSkillLevel = skillLevel;
			}

			protected override void AddInteractions(InteractionObjectPair iop, IActor actor, RotatingWallDoor target, List<InteractionObjectPair> results)
			{
				Skill staticSkill = SkillManager.GetStaticSkill(SkillNames.Athletic);
				for (int i = -1; i <= staticSkill.MaxSkillLevel; i++)
				{
					results.Add(new InteractionObjectPair(new Definition(isMinimum: true, i), target));
					results.Add(new InteractionObjectPair(new Definition(isMinimum: false, i), target));
				}
			}

			protected override string GetInteractionName(IActor a, RotatingWallDoor target, InteractionObjectPair interaction)
			{
				string text = mSkillLevel.ToString();
				if ((mIsMinimum && target.AthleticSkillMinimum == mSkillLevel) || (!mIsMinimum && target.AthleticSkillRecommended == mSkillLevel))
				{
					text = "*" + text + "*";
				}
				return text;
			}

			public override string[] GetPath(bool isFemale)
			{
				if (mIsMinimum)
				{
					return new string[1] { LocalizeString("SetAthleticSkillMinimum") + Localization.Ellipsis };
				}
				return new string[1] { LocalizeString("SetAthleticSkillRecommended") + Localization.Ellipsis };
			}

			protected override bool Test(IActor a, RotatingWallDoor target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Definition definition = InteractionDefinition as Definition;
			if (definition.IsMinimum)
			{
				Target.AthleticSkillMinimum = definition.SkillLevel;
			}
			else
			{
				Target.AthleticSkillRecommended = definition.SkillLevel;
			}
			return true;
		}
	}

	private sealed class ToggleAutoOpen : ImmediateInteraction<IActor, RotatingWallDoor>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<IActor, RotatingWallDoor, ToggleAutoOpen>
		{
			protected override string GetInteractionName(IActor a, RotatingWallDoor target, InteractionObjectPair interaction)
			{
				if (target.mIsAutoOpenAfterInspect)
				{
					return LocalizeString("DisableAutoOpen");
				}
				return LocalizeString("EnableAutoOpen");
			}

			protected override bool Test(IActor a, RotatingWallDoor target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Target.mIsAutoOpenAfterInspect = !Target.mIsAutoOpenAfterInspect;
			return true;
		}
	}

	private const string kLocalizationKey = "Gameplay/Objects/Door/RotatingWallDoor";

	private const uint kRotatingWallDoorAthleticSkillRecommended = 147007425u;

	private const uint kRotatingWallDoorAthleticSkillMinimum = 147007426u;

	private const uint kRotatingWallDoorIsAutoOpenAfterInspect = 147007427u;

	private static readonly uint kOpenFootprint = ResourceUtils.HashString32("openPathing");

	private static readonly uint kOpeningFootprint = ResourceUtils.HashString32("openingPathing");

	private static InteractionDefinition[] sInteractionDefinitions = new InteractionDefinition[4]
	{
		Inspect.Singleton,
		ReInspect.Singleton,
		PushOpen.Singleton,
		EnterDoor.Singleton
	};

	[Tunable]
	[TunableComment("Range:  0-10  Description:  The default minimum required athletic skill on newly created doors")]
	private static int kDefaultMinimumAthleticSkill = 4;

	[TunableComment("Range:  0-10  Description:  The default recommended athletic skill on newly created doors")]
	[Tunable]
	private static int kDefaultRecommendedAthleticSkill = 7;

	private bool mIsAutoOpenAfterInspect;

	private bool mHasBeenInspected;

	private int mAthleticSkillRecommended;

	private int mAthleticSkillMinimum;

	private StateMachineClient mPoseStateMachine;

	public int AthleticSkillRecommended
	{
		get
		{
			return mAthleticSkillRecommended;
		}
		set
		{
			mAthleticSkillRecommended = value;
		}
	}

	public int AthleticSkillMinimum
	{
		get
		{
			return mAthleticSkillMinimum;
		}
		set
		{
			mAthleticSkillMinimum = value;
		}
	}

	public override float PortalCost => 2f;

	public override string StateMachineName => "doorRotatingWall";

	public override string StateMachineActorName => "rotatingWall";

	public override string OpenGeoState => "unlocked";

	public override string ClosedGeoState
	{
		get
		{
			if (!IsLocked)
			{
				return "unlocked";
			}
			return "locked";
		}
	}

	protected override bool CanOpen => false;

	protected override bool CanAutoshut => IsDiscovered;

	private static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/Objects/Door/RotatingWallDoor:" + name, parameters);
	}

	private static string LocalizeString(bool isFemale, string name, params object[] parameters)
	{
		return Localization.LocalizeString(isFemale, "Gameplay/Objects/Door/RotatingWallDoor:" + name, parameters);
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		buildBuyInteractions.Add(ToggleAutoOpen.Singleton);
		buildBuyInteractions.Add(SetAthleticSkillRequirements.Singleton);
		base.AddBuildBuyInteractions(buildBuyInteractions);
	}

	protected override void AddDebugInteractions(List<InteractionDefinition> debugInteractions)
	{
		debugInteractions.Add(ToggleAutoOpen.Singleton);
		debugInteractions.Add(SetAthleticSkillRequirements.Singleton);
		base.AddDebugInteractions(debugInteractions);
	}

	public override void OnCreation()
	{
		base.OnCreation();
		mAthleticSkillMinimum = kDefaultMinimumAthleticSkill;
		mAthleticSkillRecommended = kDefaultRecommendedAthleticSkill;
		SetVisibilityStates(visible: true);
	}

	public override void OnStartup()
	{
		UpdateVisualState();
		base.OnStartup();
	}

	public override void OnLoad()
	{
		base.OnLoad();
		SetVisibilityStates();
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		bool result = base.ImportContent(resKeyTable, objIdTable, reader);
		reader.ReadInt32(147007425u, out mAthleticSkillRecommended, -1);
		reader.ReadInt32(147007426u, out mAthleticSkillMinimum, -1);
		reader.ReadBool(147007427u, out mIsAutoOpenAfterInspect, defaultValue: false);
		SetVisibilityStates();
		UpdateVisualState();
		return result;
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		bool result = base.ExportContent(resKeyTable, objIdTable, writer);
		writer.WriteInt32(147007425u, mAthleticSkillRecommended);
		writer.WriteInt32(147007426u, mAthleticSkillMinimum);
		writer.WriteBool(147007427u, mIsAutoOpenAfterInspect);
		return result;
	}

	public override void LoadWorldBuilderData()
	{
		base.LoadWorldBuilderData();
		WorldBuilderData.Get("SecretDoor", ObjectId, "mAthleticSkillRecommended", ref mAthleticSkillRecommended);
		WorldBuilderData.Get("SecretDoor", ObjectId, "mAthleticSkillMinimum", ref mAthleticSkillMinimum);
		WorldBuilderData.Get("SecretDoor", ObjectId, "mIsAutoOpenAfterInspect", ref mIsAutoOpenAfterInspect);
		SetVisibilityStates();
	}

	public override void SaveWorldBuilderData()
	{
		base.SaveWorldBuilderData();
		WorldBuilderData.Set("SecretDoor", ObjectId, "mAthleticSkillRecommended", mAthleticSkillRecommended, 0);
		WorldBuilderData.Set("SecretDoor", ObjectId, "mAthleticSkillMinimum", mAthleticSkillMinimum, 0);
		WorldBuilderData.Set("SecretDoor", ObjectId, "mIsAutoOpenAfterInspect", mIsAutoOpenAfterInspect, defaultValue: false);
	}

	public override void Dispose()
	{
		if (mPoseStateMachine != null)
		{
			mPoseStateMachine.Dispose();
			mPoseStateMachine = null;
		}
		base.Dispose();
	}

	protected override void DoReset(ResetInformation resetInformation)
	{
		base.DoReset(resetInformation);
		mPoseStateMachine = null;
		UpdateVisualState();
	}

	public override List<InteractionObjectPair> GetAllInteractionsForActor(IActor s)
	{
		return BuildInteractions(s, base.GetAllInteractionsForActor(s), sInteractionDefinitions);
	}

	public override bool HasAnyInteraction(IActor actor, ref InteractionInstanceParameters parameters)
	{
		if (TestInteractions(actor, ref parameters, sInteractionDefinitions))
		{
			return true;
		}
		return base.HasAnyInteraction(actor, ref parameters);
	}

	private void ShowInspectTns(Sim actor)
	{
		if (!IsLocked)
		{
			actor.ShowTNSIfSelectable(LocalizeString(actor.IsFemale, "Discovered", actor), StyledNotification.NotificationStyle.kGameMessagePositive, ObjectGuid.InvalidObjectGuid, actor.ObjectId);
		}
		else if (TombObjectComponent.IsActivatedBehaviorLinkedFromObjectType<KeystonePanel>(new ActivatedBehavior[1] { ActivatedBehavior.Unlock }))
		{
			actor.ShowTNSIfSelectable(LocalizeString("LockedByKeystonePanel"), StyledNotification.NotificationStyle.kGameMessagePositive, ObjectGuid.InvalidObjectGuid, actor.ObjectId);
		}
		else
		{
			actor.ShowTNSIfSelectable(LocalizeString("LockedByTrigger"), StyledNotification.NotificationStyle.kGameMessagePositive, ObjectGuid.InvalidObjectGuid, actor.ObjectId);
		}
	}

	protected override bool ShouldClose()
	{
		if (!ShouldOpenOrClose())
		{
			return false;
		}
		return base.ShouldClose();
	}

	protected override bool ShouldOpen()
	{
		if (!ShouldOpenOrClose())
		{
			return false;
		}
		return base.ShouldOpen();
	}

	private bool ShouldOpenOrClose()
	{
		List<Sim> list = new List<Sim>();
		list.Add(mSimCausingAutoshut);
		if (!EnableFootprintAndPushSims(kOpeningFootprint, null, list, waitForPushes: true))
		{
			DisableFootprint(kOpeningFootprint);
			return false;
		}
		return true;
	}

	protected override void OnStartMoving()
	{
		if (!IsOpen)
		{
			World.SetWallCutoutStateForObject(ObjectId, bEnable: true);
		}
		World.DoorLockStateChanged(ObjectId, bLocked: true);
	}

	protected override void OnDoneMoving()
	{
		base.OnDoneMoving();
		if (!IsOpen)
		{
			World.SetWallCutoutStateForObject(ObjectId, bEnable: false);
		}
		World.DoorLockStateChanged(ObjectId, IsVisibleInTombRoom());
	}

	protected override void OnClose()
	{
		base.OnClose();
		if (ObjectId.ObjectFromId<IGameObject>() != null)
		{
			DisableFootprint(kOpeningFootprint);
			DisableFootprint(kOpenFootprint);
		}
	}

	protected override void OnOpen()
	{
		base.OnOpen();
		if (ObjectId.ObjectFromId<IGameObject>() != null)
		{
			DisableFootprint(kOpeningFootprint);
			EnableFootprint(kOpenFootprint);
		}
	}

	public void OnEnterBuildBuyMode()
	{
		SetVisibilityForBuildMode();
	}

	public void OnExitBuildBuyMode()
	{
		SetVisibilityStates();
	}

	protected override void OnLockChanged(tLock previousLockType)
	{
		if (!IsOpen)
		{
			SetGeometryState(ClosedGeoState);
		}
		base.OnLockChanged(previousLockType);
	}

	protected override bool OnHideBehavior(Sim sim)
	{
		if (base.OnHideBehavior(sim))
		{
			if (GameStates.IsBuildBuyLikeState)
			{
				SetVisibilityForBuildMode();
			}
			else
			{
				SetVisibilityStates();
			}
			return true;
		}
		return false;
	}

	protected override bool OnUnhideBehavior(Sim sim)
	{
		if (base.OnUnhideBehavior(sim))
		{
			if (!Sims3.SimIFace.Environment.HasEditInGameModeSwitch && ConnectsToRoom((sim ?? PlumbBob.SelectedActor).RoomId))
			{
				EventTracker.SendEvent(EventTypeId.kFoundHiddenDoor, sim ?? PlumbBob.SelectedActor, this);
			}
			SetVisibilityStates(IsDiscovered, fade: true);
			return true;
		}
		return false;
	}

	public override void OnHandToolPlacement()
	{
		if (GameStates.IsBuildBuyLikeState)
		{
			SetVisibilityForBuildMode();
		}
	}

	private void SetVisibilityStates()
	{
		SetVisibilityStates(IsDiscovered);
	}

	private void SetVisibilityStates(bool visible)
	{
		SetVisibilityStates(visible, fade: false);
	}

	private void SetVisibilityStates(bool visible, bool fade)
	{
		if (visible)
		{
			if (GetHiddenFlags() != HiddenFlags.Nothing)
			{
				if (fade)
				{
					SetOpacity(0f, 0f);
				}
				SetHiddenFlags(HiddenFlags.Nothing);
				if (fade)
				{
					FadeIn(yield: true, 2f);
				}
			}
			else
			{
				SetOpacity(1f, 0f);
			}
		}
		else
		{
			SetHiddenFlags(HiddenFlags.Model);
			World.SetWallCutoutStateForObject(ObjectId, bEnable: false);
		}
	}

	private void SetVisibilityForBuildMode()
	{
		if (!IsDiscovered)
		{
			SetHiddenFlags(HiddenFlags.Nothing);
			SetOpacity(0.5f, 0f);
			World.SetWallCutoutStateForObject(ObjectId, bEnable: true);
		}
		else
		{
			SetVisibilityStates();
		}
	}

	private void UpdateVisualState()
	{
		if (Sims3.SimIFace.Objects.IsValid(ObjectId))
		{
			bool flag = false;
			if (mPoseStateMachine == null)
			{
				mPoseStateMachine = StateMachineClient.Acquire(ObjectId, "doorRotatingWall", AnimationPriority.kAPDefault, allowYield: false);
				mPoseStateMachine.SetActor("rotatingWall", this);
				mPoseStateMachine.EnterState("rotatingWall", "Closed");
				flag = true;
			}
			if (IsOpen)
			{
				mPoseStateMachine.RequestState(yield: false, "rotatingWall", "Open Pose");
				mPoseStateMachine.RequestState(yield: false, "rotatingWall", "Open");
			}
			else if (!flag)
			{
				mPoseStateMachine.RequestState(yield: false, "rotatingWall", "Closed");
			}
		}
	}

	public bool CanTurnOnUnderstandingGlowNow()
	{
		return !IsOpen;
	}

	public bool ShouldUnderstandingGlowBePositive()
	{
		return true;
	}

	public bool ShouldConsumeSandsOfUnderstanding()
	{
		return !IsOpen;
	}

	public SandsOfUnderstandingComponent.OnGlowCallback GetOnGlowCallback()
	{
		return OnGlowCallback;
	}

	private void OnGlowCallback()
	{
		UnHide();
	}
}
