/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System;
using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Objects.TombObjects.AdventureRewards;
using Sims3.Gameplay.Skills;
using Sims3.Gameplay.Tutorial;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;
using Sims3.UI;

namespace Sims3.Gameplay.Objects.TombObjects;

public abstract class RubblePile : GameObject, ISandsOfUnderstandingable, IHasWorldBuilderData, ICanHasTombObjectComponent, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent
{
	private sealed class Clear : Interaction<Sim, RubblePile>
	{
		private sealed class Definition : InteractionDefinition<Sim, RubblePile, Clear>
		{
			protected override bool Test(Sim actor, RubblePile target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return !target.IsClear;
			}
		}

		[Tunable]
		[TunableComment("Range:  0.0 - 1.0  Description:  The chance that a metal effect/sound will play on each hit")]
		private static float kChanceOfMetalSparks = 0.2f;

		[Tunable]
		[TunableComment("Range:  0.0 - 1.0  Description:  The chance that the Sim will be exasperated, given the necessary conditions")]
		private static float kChanceOfBeingExasperated = 0.1f;

		[Tunable]
		[TunableComment("Range:  -100 - 100  Description:  The mood threshold under which the Sim might be exasperated")]
		private static int kMoodThresholdForBeingExasperated = -20;

		[TunableComment("Range:  0+  Description:  The amount of rubble piles cleared by this Sim after which he might be exasperated")]
		[Tunable]
		private static int kCountThresholdForBeingExasperated = 0;

		[Tunable]
		[TunableComment("Range:  0+  Description:  The Athletic gain per Sim minute")]
		private static float kAthleticSkillGainRate = 2f;

		[Tunable]
		[TunableComment("Range:  true/false  Description:  True, to show the skill meter, false otherwise")]
		private static bool kIsSkillMeterVisible = true;

		public static readonly InteractionDefinition Singleton = new Definition();

		private float mLoopDeltaTime;

		private IGameObject mPanguAxe;

		private ObjectGuid mPanguAxePropId;

		public override void Cleanup()
		{
			if (mPanguAxe != null)
			{
				Actor.Inventory.SetNotInUse(mPanguAxe);
				Simulator.DestroyObject(mPanguAxePropId);
				mPanguAxe = null;
			}
		}

		protected override bool Run()
		{
			if (!Target.RouteToRubblePile(Actor))
			{
				if (Actor.HasExitReason(ExitReason.RouteFailed))
				{
					Actor.ShowTNSIfSelectable(LocalizeString(Actor.IsFemale, "RouteFail", Actor), StyledNotification.NotificationStyle.kGameMessageNegative, Actor.ObjectId);
				}
				return false;
			}
			bool flag = false;
			mPanguAxe = Actor.Inventory.Find<PanguAxe>();
			if (mPanguAxe != null && Actor.Inventory.GetInUse(mPanguAxe))
			{
				mPanguAxe = null;
			}
			if (mPanguAxe != null)
			{
				mPanguAxePropId = GlobalFunctions.CreateProp("PanguAxeProp", Vector3.OutOfWorld, 0, Vector3.UnitZ);
				World.ObjectSetOpacity(mPanguAxePropId, 0f, 0f);
				Actor.Inventory.SetInUse(mPanguAxe);
				flag = true;
			}
			StandardEntry();
			BeginCommodityUpdates();
			EnterStateMachine(flag ? "giantBoulder" : "rubblePile", "Enter", "x");
			if (flag)
			{
				AddPersistentScriptEventHandler(101u, OnPanguAxeFade);
				AddPersistentScriptEventHandler(103u, OnPanguAxeFade);
				AddPersistentScriptEventHandler(1001u, OnHitRubblePile);
				mCurrentStateMachine.SetPropActor("axe", mPanguAxePropId);
			}
			else
			{
				AddPersistentScriptEventHandler(101u, OnHitRubblePile);
				if ((Actor.MoodManager.MoodValue < kMoodThresholdForBeingExasperated || Actor.SimDescription.TombStats.NumberOfRubblePilesCleared > kCountThresholdForBeingExasperated || Actor.BuffManager.HasElement(BuffNames.Exhausted)) && RandomUtil.RandomChance01(kChanceOfBeingExasperated))
				{
					AnimateSim("Exasperated");
				}
			}
			float lastTime = SimClock.ElapsedTime(TimeUnit.Minutes);
			AnimateSim(flag ? "Smash" : "Clear Rubble");
			Tutorialette.TriggerLesson(Lessons.TombRubblePile, Actor);
			ProgressMeter.ShowProgressMeter(Actor, Target.GetProgress(), ProgressMeter.GlowType.Weak);
			bool flag2 = DoLoop(ExitReason.Default, LoopDel, null);
			ProgressMeter.HideProgressMeter(Actor, flag2);
			AnimateSim("Exit");
			Skill skill = Actor.SkillManager.AddElement(SkillNames.Athletic);
			float num = SimClock.ElapsedTimeInMinutes(ref lastTime);
			skill.AddPoints(num * kAthleticSkillGainRate, kIsSkillMeterVisible);
			EndCommodityUpdates(flag2);
			StandardExit();
			return flag2;
		}

		private void OnPanguAxeFade(StateMachineClient smc, IEvent evt)
		{
			switch (evt.EventId)
			{
			case 101u:
				World.ObjectSetOpacity(mPanguAxePropId, 1f, 1.5f);
				break;
			case 103u:
				World.ObjectSetOpacity(mPanguAxePropId, 0f, 1.5f);
				break;
			case 102u:
				break;
			}
		}

		private void OnHitRubblePile(StateMachineClient smc, IEvent evt)
		{
			VisualEffect.FireOneShotEffect(Target.LoopVfxName, Actor, Sim.FXJoints.LeftHand, VisualEffect.TransitionType.SoftTransition);
			if (RandomUtil.RandomChance01(kChanceOfMetalSparks))
			{
				VisualEffect.FireOneShotEffect("ep1RubbleDigSparks", Actor, Sim.FXJoints.LeftHand, VisualEffect.TransitionType.SoftTransition);
			}
			float num = Target.UpdateProgress(mLoopDeltaTime, Actor, mPanguAxe != null);
			mLoopDeltaTime = 0f;
			ProgressMeter.UpdateProgressMeter(Actor, Target.GetProgress(), ProgressMeter.GlowType.Weak);
			if (num == 1f)
			{
				Actor.AddExitReason(ExitReason.Finished);
				Actor.SimDescription.TombStats.IncrementNumRubblePilesCleared();
				Target.RemoveComponent<SandsOfUnderstandingComponent>();
			}
		}

		private void LoopDel(StateMachineClient smc, LoopData ld)
		{
			mLoopDeltaTime += ld.mDeltaTime;
		}
	}

	private sealed class SetRemainingTimeToClear : ImmediateInteraction<IActor, RubblePile>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<IActor, RubblePile, SetRemainingTimeToClear>
		{
			protected override string GetInteractionName(IActor a, RubblePile target, InteractionObjectPair interaction)
			{
				return LocalizeString("SetRemainingTime") + Localization.Ellipsis;
			}

			protected override bool Test(IActor a, RubblePile target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Target.SetPercentageClear(ParserFunctions.ParseFloat(StringInputDialog.Show(LocalizeString("SetRemainingTime"), LocalizeString("SetRemainingTimeDialogText", Target.mTotalTimeToClear), Target.GetPercentageClear().ToString()), Target.GetPercentageClear()));
			return true;
		}
	}

	private const string kLocalizationKey = "Gameplay/Objects/TombObjects/RubblePile";

	private const string kSystemName = "RubblePile";

	private const uint kRubblePileTotalTime = 3529947901u;

	private const uint kRubblePileRemainingTime = 3529947902u;

	private const uint kRubblePilePercentageClear = 3529947903u;

	[Tunable]
	[TunableComment("Range:  0+  Description:  Multiplier for no athletic skill")]
	private static float kAthleticSkillMultiplierMin = 1f;

	[Tunable]
	[TunableComment("Range:  0+  Description:  Multiplier for max athletic skill")]
	private static float kAthleticSkillMultiplierMax = 2f;

	private float mTimeRemainingToClear;

	private float mTotalTimeToClear;

	private float mPercentageClear;

	protected abstract string[] GeometryStateNames { get; }

	protected abstract string[] TransitionVfxNames { get; }

	protected abstract string LoopVfxName { get; }

	private int NumberOfRubbleStates => GeometryStateNames.Length;

	private int CurrentRubbleState => (int)Math.Ceiling((float)(NumberOfRubbleStates - 1) * (mTimeRemainingToClear / mTotalTimeToClear));

	private bool IsClear => GetPercentageClear() >= 1f;

	protected abstract float MaximumMinutesToClearRubblePile { get; }

	protected abstract float MinimumMinutesToClearRubblePile { get; }

	protected abstract float SandsOfUnderstandingSpeedUpMultiplier { get; }

	private static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/Objects/TombObjects/RubblePile:" + name, parameters);
	}

	private static string LocalizeString(bool isFemale, string name, params object[] parameters)
	{
		return Localization.LocalizeString(isFemale, "Gameplay/Objects/TombObjects/RubblePile:" + name, parameters);
	}

	public RubblePile()
	{
		mPercentageClear = -1f;
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		buildBuyInteractions.Add(SetRemainingTimeToClear.Singleton);
		base.AddBuildBuyInteractions(buildBuyInteractions);
	}

	public void OnAddTombObjectComponent(ITombObjectComponent tombObjectComponent)
	{
		tombObjectComponent.RegisterTrigger(Trigger.RubbleCleared);
	}

	public override void OnStartup()
	{
		AddComponent<TombObjectStaticComponent>(new object[0]);
		AddComponent<AdventureComponent>(new object[0]);
		if (mTimeRemainingToClear == mTotalTimeToClear)
		{
			mTotalTimeToClear = PickTotalTimeToClear();
			mTimeRemainingToClear = mTotalTimeToClear;
			SetRubbleState();
		}
		AddInteraction(Clear.Singleton);
	}

	public void LoadWorldBuilderData()
	{
		WorldBuilderData.Get("RubblePile", ObjectId, "mPercentageClear", ref mPercentageClear);
		if (mPercentageClear >= 0f)
		{
			SetPercentageClear(mPercentageClear);
		}
	}

	public void SaveWorldBuilderData()
	{
		WorldBuilderData.Set("RubblePile", ObjectId, "mPercentageClear", mPercentageClear, 0f);
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		bool flag = base.ImportContent(resKeyTable, objIdTable, reader);
		flag &= reader.ReadFloat(3529947901u, out mTotalTimeToClear, 1f);
		reader.ReadFloat(3529947902u, out mTimeRemainingToClear, mTotalTimeToClear);
		reader.ReadFloat(3529947903u, out mPercentageClear, -1f);
		SetRubbleState();
		return flag;
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		bool flag = base.ExportContent(resKeyTable, objIdTable, writer);
		flag &= writer.WriteFloat(3529947901u, mTotalTimeToClear);
		flag &= writer.WriteFloat(3529947902u, mTimeRemainingToClear);
		writer.WriteFloat(3529947903u, mPercentageClear);
		return flag;
	}

	public bool CanTurnOnUnderstandingGlowNow()
	{
		return !IsClear;
	}

	public bool ShouldUnderstandingGlowBePositive()
	{
		return true;
	}

	public bool ShouldConsumeSandsOfUnderstanding()
	{
		return !IsClear;
	}

	public SandsOfUnderstandingComponent.OnGlowCallback GetOnGlowCallback()
	{
		return null;
	}

	public bool RouteToRubblePile(Sim actor)
	{
		if (!actor.RouteToSlot(this, GetRoutingSlots(), Slot.RoutingSlot_0, out var _))
		{
			return false;
		}
		if (InUse && !IsActorUsingMe(actor))
		{
			actor.AddExitReason(ExitReason.ObjectInUse);
			return false;
		}
		return true;
	}

	private float PickTotalTimeToClear()
	{
		return RandomUtil.GetFloat(MinimumMinutesToClearRubblePile, MaximumMinutesToClearRubblePile);
	}

	private void SetRubbleState()
	{
		SetRubbleState(null);
	}

	private void SetRubbleState(Sim actor)
	{
		if (CurrentRubbleState == 0)
		{
			SetHiddenFlags(HiddenFlags.Footprint);
			TombObjectComponent.ActivateTrigger(Trigger.RubbleCleared, actor);
		}
		else
		{
			SetHiddenFlags(HiddenFlags.Nothing);
		}
		SetModel(GeometryStateNames[CurrentRubbleState]);
	}

	private float GetPercentageClear()
	{
		if (mTimeRemainingToClear <= 0f)
		{
			return 1f;
		}
		if (mTotalTimeToClear <= 0f)
		{
			return 1f;
		}
		return 1f - mTimeRemainingToClear / mTotalTimeToClear;
	}

	private float GetProgress()
	{
		if (mPercentageClear >= 0f)
		{
			float num = mPercentageClear * mTotalTimeToClear;
			return (mTotalTimeToClear - mTimeRemainingToClear - num) / (mTotalTimeToClear - num);
		}
		return GetPercentageClear();
	}

	private void SetPercentageClear(float percentage)
	{
		if (!(percentage < 0f) && !(percentage > 1f))
		{
			mPercentageClear = percentage;
			mTimeRemainingToClear = (1f - mPercentageClear) * mTotalTimeToClear;
			SetRubbleState();
		}
	}

	private float UpdateProgress(float deltaTime, Sim actor, bool forceComplete)
	{
		if (forceComplete)
		{
			deltaTime = mTimeRemainingToClear;
		}
		else
		{
			if (SandsOfUnderstandingComponent != null)
			{
				deltaTime *= SandsOfUnderstandingSpeedUpMultiplier;
			}
			if (actor.SimDescription.TombStats.IsRubbleExcavator)
			{
				deltaTime *= 1f / TombStatTracking.kRubbleExcavatorRewardSpeedUpMultiplier;
			}
			deltaTime *= MathHelpers.LinearInterpolate(0f, SkillManager.GetStaticSkill(SkillNames.Athletic).MaxSkillLevel, kAthleticSkillMultiplierMin, kAthleticSkillMultiplierMax, Skill.GetSkillLevel(actor, SkillNames.Athletic));
		}
		int currentRubbleState = CurrentRubbleState;
		mTimeRemainingToClear = Math.Max(0f, mTimeRemainingToClear - deltaTime);
		if (CurrentRubbleState != currentRubbleState)
		{
			VisualEffect.FireOneShotEffect(TransitionVfxNames[CurrentRubbleState], this, Slot.FXJoint_0, VisualEffect.TransitionType.SoftTransition);
			SetRubbleState(actor);
		}
		return GetPercentageClear();
	}
}
