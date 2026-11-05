/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System.Collections.Generic;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Tutorial;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;
using Sims3.UI;

namespace Sims3.Gameplay.Objects.TombObjects;

public abstract class SmallHole : HideableTombObject, ISandsOfUnderstandingable, ICanHasTombObjectComponent, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent
{
	private sealed class Inspect : Interaction<Sim, SmallHole>
	{
		private sealed class Definition : InteractionDefinition<Sim, SmallHole, Inspect>
		{
			protected override bool Test(Sim actor, SmallHole target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return target.mIsVisible;
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/SmallHole/Inspect";

		public static readonly InteractionDefinition Singleton = new Definition();

		[Tunable]
		public static float kMinimumMinutesUntilPullingHandOutOfHole = 5f;

		[Tunable]
		public static float kMaximumMinutesUntilPullingHandOutOfHole = 15f;

		[Tunable]
		public static float kChanceOfFailingAndGettingBugsOnHand = 0.25f;

		[Tunable]
		[TunableComment("Range: Negative integer. Strength of the fear buff after a sim gets bugs on his hand.")]
		public static int kFearBuffMoodValue = -30;

		[TunableComment("Range: Negative integer. If a Sim has a fear buff with a greater strength than this value, they will not inspect small holes.")]
		[Tunable]
		private static int kFearBuffThresholdInspect = -45;

		private List<IGameObject> mTreasures;

		private static string LocalizeString(string name, params object[] parameters)
		{
			return LocalizeString(bIsFemale: false, name, parameters);
		}

		private static string LocalizeString(bool bIsFemale, string name, params object[] parameters)
		{
			return Localization.LocalizeString(bIsFemale, "Gameplay/Objects/TombObjects/SmallHole/Inspect:" + name, parameters);
		}

		public override void Cleanup()
		{
			base.Cleanup();
			if (mTreasures != null)
			{
				Target.TreasureComponent.GiveTreasuresToSim(mTreasures, Actor, playCollectionBehavior: false);
				mTreasures = null;
			}
		}

		protected override bool Run()
		{
			if (!BuffFear.CanSimDoFearGatingAction(Actor, kFearBuffThresholdInspect))
			{
				Actor.ShowTNSIfSelectable(Localization.LocalizeString(Actor.IsFemale, "Gameplay/Objects/TombObjects/FloorSwitch:FearRefuseTNS", Actor), StyledNotification.NotificationStyle.kGameMessageNegative, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
				Actor.PlaySoloAnimation("a_fearModdlet_refuse_x", yield: true);
				return false;
			}
			if (!Actor.RouteToSlotListAndCheckInUse((IGameObject)Target, Target.RoutingSlots, out int slotIndex))
			{
				return false;
			}
			bool flag = Target.SandsOfUnderstandingComponent != null;
			if (Target.SandsOfUnderstandingComponent != null)
			{
				Target.RemoveComponent<SandsOfUnderstandingComponent>();
			}
			StandardEntry();
			BeginCommodityUpdates();
			AcquireStateMachine("SmallHole");
			SetParameter("x:Brave", Actor.HasTrait(TraitNames.Brave));
			SetActorAndEnter("x", Actor, "Enter");
			SetActor("SmallHole", Target);
			Target.SetStateMachineParams(mCurrentStateMachine, slotIndex);
			AnimateSim("Inspect");
			Tutorialette.TriggerLesson(Lessons.TombHoleInWall, Actor);
			float duration = RandomUtil.GetFloat(kMinimumMinutesUntilPullingHandOutOfHole, kMaximumMinutesUntilPullingHandOutOfHole);
			bool flag2 = DoTimedLoop(duration, ExitReason.Default);
			EndCommodityUpdates(flag2);
			if (!flag2)
			{
				AnimateSim("Exit - Nothing");
			}
			else
			{
				bool flag3 = Target.TombObjectComponent.IsTriggerLinkedToAnyActivatedBehavior(Trigger.HiddenSwitch);
				bool flag4 = false;
				mTreasures = new List<IGameObject>();
				if (Target.TreasureComponent.HasAdventureTreasure())
				{
					mTreasures.AddRange(Target.TreasureComponent.GetAdventureTreasure(Actor));
				}
				if (Target.TreasureComponent.NumberOfTreasuresGivenThisVisit < 1)
				{
					mTreasures.AddRange(Target.TreasureComponent.GetStandardTreasure(Actor));
				}
				flag4 = mTreasures.Count > 0;
				Actor.SimDescription.TombStats.IncrementHolesInspected();
				if (!flag && RandomUtil.RandomChance01(kChanceOfFailingAndGettingBugsOnHand))
				{
					AnimateSim("Bugs On Hand");
					if (!Actor.HasTrait(TraitNames.Brave))
					{
						BuffFear.GiveFear(Actor, kFearBuffMoodValue, Origin.FromBugsOnHand);
					}
					AnimateSim("Inspect");
					if (flag3 || flag4)
					{
						duration = RandomUtil.GetFloat(kMinimumMinutesUntilPullingHandOutOfHole, kMaximumMinutesUntilPullingHandOutOfHole) / 3f;
						flag2 = DoTimedLoop(duration, ExitReason.Default);
					}
				}
				bool flag5 = Target.TombObjectComponent.ActivateTrigger(Trigger.HiddenSwitch, Actor);
				if (!flag3 && !flag4)
				{
					Actor.ShowTNSIfSelectable(LocalizeString("HoleEmpty"), StyledNotification.NotificationStyle.kGameMessagePositive, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
					AnimateSim("Exit - Nothing");
				}
				else if (flag3)
				{
					if (flag5)
					{
						Actor.ShowTNSIfSelectable(LocalizeString(Actor.IsFemale, "HiddenSwitchTNS", Actor), StyledNotification.NotificationStyle.kGameMessagePositive, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
					}
					if (flag4)
					{
						CancellableByPlayer = false;
						duration = RandomUtil.GetFloat(kMinimumMinutesUntilPullingHandOutOfHole, kMaximumMinutesUntilPullingHandOutOfHole);
						duration /= 2f;
						DoTimedLoop(duration, ExitReason.Default);
						Target.TreasureComponent.GiveTreasuresToSim(mTreasures, Actor, playCollectionBehavior: true);
						mTreasures = null;
						AnimateSim("Exit - Found Treasure");
					}
					else
					{
						AnimateSim("Exit - Found Switch");
					}
				}
				else
				{
					Target.TreasureComponent.GiveTreasuresToSim(mTreasures, Actor, playCollectionBehavior: true);
					mTreasures = null;
					AnimateSim("Exit - Found Treasure");
				}
			}
			StandardExit();
			return true;
		}
	}

	private const string kShowEffect = "ep1SmallHoleReveal";

	private static Slot kEffectSlot = Slots.Hash("_FX_0_holeFX");

	protected abstract Slot[] RoutingSlots { get; }

	protected override string AppearDisappearEffectName => "ep1SmallHoleReveal";

	protected override Vector3 AppearDisappearEffectPosition => GetSlotPosition(kEffectSlot);

	public SmallHole()
	{
	}

	public override void OnStartup()
	{
		base.OnStartup();
		AddComponent<TreasureComponent>(new object[0]);
		AddComponent<AdventureComponent>(new object[0]);
		AddInteraction(Inspect.Singleton);
	}

	public override void OnAddTombObjectComponent(ITombObjectComponent tombObjectComponent)
	{
		base.OnAddTombObjectComponent(tombObjectComponent);
		tombObjectComponent.RegisterTrigger(Trigger.HiddenSwitch);
	}

	protected abstract void SetStateMachineParams(StateMachineClient smc, int chosenSlot);

	public bool CanTurnOnUnderstandingGlowNow()
	{
		return mIsVisible;
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
}
