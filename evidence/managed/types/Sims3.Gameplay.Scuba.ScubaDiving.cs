/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System.Collections.Generic;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.CAS;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.Objects;
using Sims3.Gameplay.Objects.Vehicles;
using Sims3.Gameplay.Pools;
using Sims3.Gameplay.Services;
using Sims3.Gameplay.Skills;
using Sims3.Gameplay.Socializing;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;
using Sims3.SimIFace.Enums;

namespace Sims3.Gameplay.Scuba;

public class ScubaDiving : Posture
{
	public const int kDiveLotFloorLevel = 0;

	public const int kDiveLotSurfaceLevel = 1;

	public const string kDiveOutfitSuffix = "ep10diveoutfit01";

	public const string kRetroDiveOutfitSuffix = "ep10diveoutfit02";

	public const string kScubaDiveOutfitName = "ScubaDiveOutfit";

	public const string kBubbleVFXName = "ep10ScubaBubbles";

	private static readonly string sLocalizationKey = "Gameplay/Scuba/ScubaDiving:";

	[Tunable]
	[TunableComment("The amount of time, in Sim Minutes, the sim can scuba dive,  per dive level (0 - 10)")]
	private static float[] kDiveTimePerLevel = new float[11]
	{
		45f, 60f, 90f, 120f, 150f, 180f, 210f, 240f, 270f, 300f,
		330f
	};

	[TunableComment("The amount of time, in Sim Minutes, the sim must wait before diving again, per dive level")]
	[Tunable]
	private static float[] kWaitToDiveTimePerLevel = new float[11]
	{
		60f, 55f, 50f, 45f, 40f, 35f, 30f, 25f, 20f, 15f,
		10f
	};

	[Tunable]
	[TunableComment("The amount of skill to give the Sim per minute.")]
	private static float kScubaSkillPerMinute = 10f;

	[Tunable]
	[TunableComment("Unit: Sim minute; The amount of time to idle in the EndScubaDive interaction. default: 10")]
	public static float kScubaEndScubaDiveIdleTime = 10f;

	private Sim mSim;

	private Ocean mContainer;

	private AlarmHandle mSkillUpdateAlarm = AlarmHandle.kInvalidHandle;

	private DateAndTime timeDiving = DateAndTime.Invalid;

	private VisualEffect mBubbleEffects;

	public override IGameObject Container => mContainer;

	public override string Name => Localization.LocalizeString("Gameplay/Actors/Postures:ScubaDiving");

	public override bool PerformIdleLogic => true;

	public static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString(sLocalizationKey + name, parameters);
	}

	public static string LocalizeString(bool isFemale, string name, params object[] parameters)
	{
		return Localization.LocalizeString(isFemale, sLocalizationKey + name, parameters);
	}

	private ScubaDiving()
	{
	}

	public ScubaDiving(StateMachineClient smc, Ocean container, Sim sim)
		: base(smc)
	{
		mContainer = container;
		mSim = sim;
		if (!mContainer.IsActorUsingMe(mSim))
		{
			mContainer.AddToUseList(mSim);
		}
		if (sim.SimDescription.IsMatureMermaid)
		{
			sim.RequestWalkStyle(Sim.WalkStyle.MermaidDive);
		}
		else
		{
			Skill skill = sim.SkillManager.AddElement(SkillNames.ScubaDiving);
			if (!sim.TraitManager.HasElement(TraitNames.LungsOfSteel) && !(sim.Service is GrimReaper))
			{
				sim.BuffManager.AddElement(BuffNames.BreathingComfortably, kDiveTimePerLevel[skill.SkillLevel], Origin.FromScubaDiving);
			}
			sim.SkillManager.StartSkillGain(SkillNames.ScubaDiving, kScubaSkillPerMinute);
			sim.RequestWalkStyle(Sim.WalkStyle.ScubaDive);
		}
		Animation.EnableScubaDivingMode(sim.ObjectId, sim.SimDescription.IsMatureMermaid);
		mSim.Motives.CreateMotive(CommodityKind.BeAtDiveLot);
		ActiveTopic.AddToSim(sim, "Scuba Topic");
		timeDiving = SimClock.CurrentTime();
	}

	public static bool ScubaHitTest(Sim sim, GameObjectHit hit)
	{
		Vector3 mPoint = hit.mPoint;
		Lot lotAtPoint = LotManager.GetLotAtPoint(mPoint);
		if (hit.mType == GameObjectHitType.WaterSea && lotAtPoint != null && World.IsCameraRoutable(mPoint.x, mPoint.z))
		{
			return ScubaTest(sim, lotAtPoint);
		}
		return false;
	}

	public static bool ScubaHitTestTooltips(Sim sim, GameObjectHit hit, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
	{
		Lot lotAtPoint = LotManager.GetLotAtPoint(hit.mPoint);
		if (lotAtPoint != null)
		{
			return ScubaTestTooltips(sim, lotAtPoint, ref greyedOutTooltipCallback);
		}
		return false;
	}

	public static bool ScubaTest(Sim sim, Lot lot)
	{
		if (sim == null || lot == null)
		{
			return false;
		}
		if (!sim.IsHuman)
		{
			return false;
		}
		if (!lot.IsDivingLot)
		{
			return false;
		}
		SimDescription simDescription = sim.SimDescription;
		if (simDescription.ChildOrBelow || simDescription.IsVisuallyPregnant)
		{
			return false;
		}
		return true;
	}

	public static bool ScubaTestTooltips(Sim sim, Lot lot, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
	{
		SimDescription simDescription = sim.SimDescription;
		bool isFemale = simDescription.IsFemale;
		if (sim.SimDescription.IsMummy)
		{
			greyedOutTooltipCallback = InteractionInstance.CreateTooltipCallback(Localization.LocalizeString(isFemale, OccultMummy.kMummyCannotDoThisKey));
			return false;
		}
		if (sim.BuffManager.HasElement(BuffNames.Repressurizing))
		{
			greyedOutTooltipCallback = InteractionInstance.CreateTooltipCallback(Localization.LocalizeString(isFemale, "Gameplay/Scuba/ScubaDiving:NeedToRepressurize"));
			return false;
		}
		if (!sim.IsNPC)
		{
			Skill element = simDescription.SkillManager.GetElement(SkillNames.ScubaDiving);
			if (element == null || lot.RequiredDivingLevel > element.SkillLevel)
			{
				greyedOutTooltipCallback = InteractionInstance.CreateTooltipCallback(Localization.LocalizeString(isFemale, "Gameplay/Scuba/ScubaDiving:LevelNotHighEnough"));
				return false;
			}
		}
		return true;
	}

	public static bool PutOnRetroScubaOutfit(Sim actor)
	{
		SimDescription simDescription = actor.SimDescription;
		string text = "a";
		text += (simDescription.IsFemale ? "f" : "m");
		text += "ep10diveoutfit02";
		return actor.SwitchToOutfitWithSwimmingSpin("ScubaDiveOutfitretro", text, OutfitCategories.Swimwear);
	}

	public static bool PutOnScubaOutfit(Sim actor)
	{
		SimDescription simDescription = actor.SimDescription;
		string text = "a";
		text += (simDescription.IsFemale ? "f" : "m");
		text += "ep10diveoutfit01";
		return actor.SwitchToOutfitWithSwimmingSpin("ScubaDiveOutfit", text, OutfitCategories.Swimwear);
	}

	public static string SharedGetInteractionName(string menuPath, bool retro, Sim actor)
	{
		if (menuPath == "")
		{
			if (actor.SimDescription.IsMatureMermaid)
			{
				return LocalizeString(actor.IsFemale, "MermaidDive");
			}
			return Localization.LocalizeString(actor.IsFemale, "Gameplay/Actors/Sim/ScubaDive:InteractionName");
		}
		if (retro)
		{
			return Localization.LocalizeString(actor.IsFemale, "Gameplay/Actors/Sim/ScubaDive:RetroInteractionName");
		}
		return Localization.LocalizeString(actor.IsFemale, "Gameplay/Actors/Sim/ScubaDive:RegularInteractionName");
	}

	protected override void PopulateInteractions()
	{
		AddInteraction(EndScubaDive.Singleton, mSim);
		AddInteraction(OccultMermaid.SummonShark.Singleton, mSim);
	}

	public override ScriptPosture GetSacsPostureParameter()
	{
		return ScriptPosture.ScubaDiving;
	}

	public override void Shoo(bool yield, List<Sim> shooedSims)
	{
	}

	public override bool AllowsReactionOverlay()
	{
		return true;
	}

	public override bool AllowsNormalSocials()
	{
		return true;
	}

	public override bool AllowsRouting()
	{
		return true;
	}

	public override float Satisfaction(CommodityKind condition, IGameObject target)
	{
		switch (condition)
		{
		case CommodityKind.PreferIfCurrentPosture:
			if (mSim.Posture is ScubaDiving)
			{
				return 1f;
			}
			break;
		case CommodityKind.ScubaDiving:
			return 1f;
		}
		return 0f;
	}

	public override bool Satisfies(PreconditionOptions options, IGameObject target, CommodityKind requiredCheck)
	{
		if (options == null && requiredCheck == CommodityKind.None)
		{
			return StandingSatisfaction(target);
		}
		return base.Satisfies(options, target, requiredCheck);
	}

	public override InteractionInstance GetStandingTransition()
	{
		InteractionInstance headInteraction = mSim.InteractionQueue.GetHeadInteraction();
		if (headInteraction != null && StandingSatisfaction(headInteraction.Target))
		{
			return null;
		}
		return EndScubaDive.Singleton.CreateInstance(mSim, mSim, mSim.InheritedPriority(), isAutonomous: false, cancellableByPlayer: true);
	}

	private bool StandingSatisfaction(IGameObject target)
	{
		if (target is Vehicle)
		{
			return false;
		}
		InteractionInstance headInteraction = mSim.InteractionQueue.GetHeadInteraction();
		if (NextInteractionIsSelfInteraction(headInteraction))
		{
			if (SelfInteractionCanHappenWhileDiving(headInteraction))
			{
				return true;
			}
			return false;
		}
		return false;
	}

	private bool NextInteractionIsSelfInteraction(InteractionInstance interaction)
	{
		if (interaction == null)
		{
			return false;
		}
		IGameObject target = interaction.Target;
		if (target == mSim || mSim.Inventory.Contains(target))
		{
			return true;
		}
		return false;
	}

	private static bool SelfInteractionCanHappenWhileDiving(InteractionInstance interaction)
	{
		if (!(interaction is Urnstone.KillSim) && !(interaction is Sim.DEBUG_KillSim))
		{
			return interaction is SimRoutingComponent.BePushed;
		}
		return true;
	}

	public override Posture OnReset(IGameObject objectBeingReset)
	{
		Reset();
		Vector3 positionOnShoreLine = mContainer.GetPositionOnShoreLine(mSim.Position);
		if (positionOnShoreLine != Vector3.Invalid)
		{
			mSim.SetPosition(positionOnShoreLine);
		}
		if (CurrentStateMachine != null)
		{
			CurrentStateMachine.Dispose();
			CurrentStateMachine = null;
		}
		if (OccultMermaid.IsMatureMermaidAndWearingTail(mSim))
		{
			OccultMermaid.TakeOffTailWithoutSpin(mSim);
		}
		return null;
	}

	public override BridgeOrigin Idle()
	{
		CurrentStateMachine.RequestState(yield: true, "x", "Idle");
		return new BridgeOrigin(CurrentStateMachine, "x", "InScuba");
	}

	public override void OnExitPosture()
	{
		Reset();
		ScubaDivingSkill scubaDivingSkill = mSim.SkillManager.GetElement(SkillNames.ScubaDiving) as ScubaDivingSkill;
		if (!mSim.SimDescription.IsMatureMermaid)
		{
			mSim.BuffManager.AddElement(BuffNames.Repressurizing, kWaitToDiveTimePerLevel[scubaDivingSkill.SkillLevel], Origin.FromScubaDiving);
			mSim.SkillManager.StopSkillGain(SkillNames.ScubaDiving, kScubaSkillPerMinute);
		}
		scubaDivingSkill.HoursDiving += SimClock.ElapsedTime(TimeUnit.Hours, timeDiving);
		timeDiving = DateAndTime.Invalid;
		ActiveTopic.RemoveTopicFromSim(mSim, "Scuba Topic");
		mSim.Motives.RemoveMotive(CommodityKind.BreatheFreely);
		mSim.Motives.RemoveMotive(CommodityKind.BeAtDiveLot);
		base.OnExitPosture();
	}

	private void Reset()
	{
		if (mContainer.IsActorUsingMe(mSim))
		{
			mContainer.RemoveFromUseList(mSim);
		}
		if (mSim.SimDescription.IsMatureMermaid)
		{
			mSim.UnrequestWalkStyle(Sim.WalkStyle.MermaidDive);
		}
		else
		{
			mSim.UnrequestWalkStyle(Sim.WalkStyle.ScubaDive);
		}
		Animation.DisableScubaDivingMode(mSim.ObjectId, mSim.SimDescription.IsMatureMermaid);
		BuffManager buffManager = mSim.BuffManager;
		buffManager.RemoveElement(BuffNames.BreathingComfortably);
		buffManager.RemoveElement(BuffNames.BreathingShallowly);
		buffManager.RemoveElement(BuffNames.GaspingForAir);
		StopBubbleEffects();
	}

	public void StartBubbleEffects()
	{
		if (mBubbleEffects == null && !mSim.SimDescription.IsMermaid)
		{
			mBubbleEffects = VisualEffect.Create("ep10ScubaBubbles");
			mBubbleEffects.ParentTo(mSim, Sim.ContainmentSlots.Mouth);
			mBubbleEffects.Start();
		}
	}

	public void StopBubbleEffects()
	{
		if (mBubbleEffects != null)
		{
			mBubbleEffects.Stop();
			mBubbleEffects.Dispose();
			mBubbleEffects = null;
		}
	}
}
