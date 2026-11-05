/* Analyst: PC1.67 original managed evidence. Pressed state is int32 occupancy count, not bool. Temporary iff StepOff has links. StepOn only0to1; StepOff on last release/force. Original reader supports legacy CurrentlyPressed bool and current count.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System.Collections.Generic;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Tutorial;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;
using Sims3.UI;

namespace Sims3.Gameplay.Objects.TombObjects;

public class FloorSwitch : HideableTombObject, ISandsOfUnderstandingable, ICanHasTombObjectComponent, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent
{
	private sealed class StandOn : Interaction<Sim, FloorSwitch>
	{
		private sealed class Definition : InteractionDefinition<Sim, FloorSwitch, StandOn>
		{
			protected override bool Test(Sim actor, FloorSwitch target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (!target.CurrentlyPressed)
				{
					return target.mIsVisible;
				}
				return false;
			}
		}

		private bool mCurrentlySteppingOnSwitch;

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			if (!BuffFear.CanSimDoFearGatingAction(Actor, kFearBuffThresholdStandOnSwitch))
			{
				Actor.ShowTNSIfSelectable(Localization.LocalizeString(Actor.IsFemale, "Gameplay/Objects/TombObjects/FloorSwitch:FearRefuseTNS", Actor), StyledNotification.NotificationStyle.kGameMessageNegative, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
				Actor.PlaySoloAnimation("a_fearModdlet_refuse_x", yield: true);
				return false;
			}
			if (!Actor.RouteToSlotAndCheckInUse(Target, Slot.RoutingSlot_0) || !Target.mIsVisible)
			{
				return false;
			}
			StandardEntry();
			EnterStateMachine("FloorSwitch", "Enter", "x", "floorSwitch");
			float chance = kJumpOnChanceBase;
			if (Actor.TraitManager.HasAnyElement(kJumpOnTraits))
			{
				chance = kJumpOnChanceTrait;
			}
			SetParameter("JumpOn", RandomUtil.RandomChance01(chance));
			AddPersistentScriptEventHandler(110u, ToggleVFX);
			AnimateSim("Stay Standing On Switch");
			Tutorialette.TriggerLesson(Lessons.TombFloorPlate, Actor);
			if (Target.IsTemporary)
			{
				DoLoop(ExitReason.Default);
			}
			AnimateSim("Exit");
			StandardExit();
			return true;
		}

		private void ToggleVFX(StateMachineClient smc, IEvent evt)
		{
			if (!mCurrentlySteppingOnSwitch)
			{
				Actor.SimDescription.TombStats.IncrementSwitchesStoodUpon();
				Target.PushSwitch(Actor);
				SetPriority(InteractionPriorityLevel.Autonomous, 0f);
			}
			else
			{
				Target.ReleaseSwitch(Actor);
			}
			mCurrentlySteppingOnSwitch = !mCurrentlySteppingOnSwitch;
		}

		public override void Cleanup()
		{
			if (mCurrentStateMachine != null)
			{
				mCurrentStateMachine.RemoveEventHandler(ToggleVFX);
			}
			if (mCurrentlySteppingOnSwitch)
			{
				Target.ReleaseSwitch(Actor);
				mCurrentlySteppingOnSwitch = false;
			}
		}
	}

	private sealed class ToggleVisualStyle : ImmediateInteraction<Sim, FloorSwitch>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, FloorSwitch, ToggleVisualStyle>
		{
			public override string GetInteractionName(ref InteractionInstanceParameters parameters)
			{
				return LocalizeString("InteractionName");
			}

			protected override bool Test(Sim a, FloorSwitch target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/FloorSwitch/ToggleVisualStyle";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/FloorSwitch/ToggleVisualStyle:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.mbUseAlternateModel = !Target.mbUseAlternateModel;
			Target.UpdateVisualState();
			return true;
		}
	}

	private const string kSwitchGlowVFXName = "ep1FloorSwitchGlow";

	private const string kSwitchShowVFXName = "ep1FloorSwitchReveal";

	private const string kModelDefault = "switchFloor";

	private const string kModelAlternate = "switchFloorStatue";

	private const string kMaterialStateOffDefault = "switchFloorOff";

	private const string kMaterialStateOnDefault = "switchFloorOn";

	private const string kMaterialStateOffAlternate = "switchFloorStatueOff";

	private const string kMaterialStateOnAlternate = "switchFloorStatueOn";

	private const string kSoundStepOnDefault = "floor_switch_on";

	private const string kSoundStepOff = "floor_switch_off";

	private const string kSoundStepOnAlternate = "floor_switch_on_statue";

	private const string kSoundAppear = "floor_switch_appear";

	private const string kSoundDisappear = "floor_switch_disappear";

	private const uint kCurrentlyPressed = 142619494u;

	private const uint kNumPresses = 147274329u;

	private const uint kUseAlternateModel = 146845013u;

	private const string kWorldBuilderDataName = "FloorSwitch";

	public static uint kPlacementFootprint = ResourceUtils.HashString32("switchFloor_ftp_placementShape");

	[Tunable]
	[TunableComment("Range: 3 floats [0,1]. RGB color the VFX and model will be when this switch is a temporarily-activated switch.")]
	private static float[] kColorTemporary = new float[3] { 1f, 0f, 0f };

	[TunableComment("Range: 3 floats [0,1]. RGB color the VFX and model will be when this switch is a permanently-activated switch.")]
	[Tunable]
	private static float[] kColorPermanent = new float[3] { 0f, 1f, 0f };

	[TunableComment("Range: 0, or positive float. Transition time (in real seconds?) of object tint. Set to 0 for instant switch.")]
	[Tunable]
	private static float kTintTransitionTime = 0.5f;

	[Tunable]
	[TunableComment("Range: Negative integer. If a Sim has a fear buff with a greater strength than this value, they will not stand on floor switches.")]
	private static int kFearBuffThresholdStandOnSwitch = -45;

	[TunableComment("Range: Float [0,1]. Base chance of jumping on switch.")]
	[Tunable]
	private static float kJumpOnChanceBase = 0.05f;

	[Tunable]
	[TunableComment("Range: Float [0,1]. Chance for sims with kJumpOnTraits to jump on the switch.")]
	private static float kJumpOnChanceTrait = 0.1f;

	[Tunable]
	[TunableComment("List of traits that makes the sim more likely to jump on the floor switch.")]
	private static TraitNames[] kJumpOnTraits = new TraitNames[2]
	{
		TraitNames.HotHeaded,
		TraitNames.Childish
	};

	private int mNumPresses;

	private VisualEffect mSwitchActiveVFX;

	private bool mbUseAlternateModel;

	private static readonly string[] kWorldBuilderDataKeyRemap = new string[2]
	{
		146845013u.ToString(),
		"UseAlternateModel"
	};

	private bool CurrentlyPressed => mNumPresses > 0;

	protected override string AppearDisappearEffectName => "ep1FloorSwitchReveal";

	protected override Vector3 AppearDisappearEffectPosition => Position;

	private bool IsTemporary
	{
		get
		{
			if (TombObjectComponent != null)
			{
				return TombObjectComponent.IsTriggerLinkedToAnyActivatedBehavior(Trigger.StepOff);
			}
			return false;
		}
	}

	public override void OnStartup()
	{
		base.OnStartup();
		DisableFootprint(kPlacementFootprint);
		if (mSwitchActiveVFX != null)
		{
			if (IsTemporary)
			{
				mSwitchActiveVFX.SetEffectColorScale(kColorTemporary[0], kColorTemporary[1], kColorTemporary[2]);
			}
			else
			{
				mSwitchActiveVFX.SetEffectColorScale(kColorPermanent[0], kColorPermanent[1], kColorPermanent[2]);
			}
		}
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		base.AddBuildBuyInteractions(buildBuyInteractions);
		buildBuyInteractions.Add(ToggleVisualStyle.Singleton);
	}

	public override List<InteractionObjectPair> GetAllInteractionsForActor(IActor s)
	{
		return BuildInteractions(s, base.GetAllInteractionsForActor(s), StandOn.Singleton);
	}

	public override bool HasAnyInteraction(IActor actor, ref InteractionInstanceParameters parameters)
	{
		if (TestInteractions(actor, ref parameters, StandOn.Singleton))
		{
			return true;
		}
		return base.HasAnyInteraction(actor, ref parameters);
	}

	public override void Dispose()
	{
		base.Dispose();
		StopEffects();
	}

	public override void OnAddTombObjectComponent(ITombObjectComponent tombObjectComponent)
	{
		base.OnAddTombObjectComponent(tombObjectComponent);
		tombObjectComponent.RegisterTrigger(Trigger.StepOn);
		tombObjectComponent.RegisterTrigger(Trigger.StepOff);
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.Reset, ResetSwitchStateBehavior);
		tombObjectComponent.RegisterOnTombObjectComponentChangedCallback(ResetSwitchState);
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		bool result = base.ExportContent(resKeyTable, objIdTable, writer);
		writer.WriteInt32(147274329u, mNumPresses);
		writer.WriteBool(146845013u, mbUseAlternateModel);
		return result;
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		bool result = base.ImportContent(resKeyTable, objIdTable, reader);
		bool value = false;
		if (reader.ReadBool(142619494u, out value, defaultValue: false) && value)
		{
			mNumPresses = 1;
		}
		else
		{
			reader.ReadInt32(147274329u, out mNumPresses, 0);
		}
		reader.ReadBool(146845013u, out mbUseAlternateModel, defaultValue: false);
		if (CurrentlyPressed)
		{
			StartEffects();
		}
		UpdateVisualState();
		return result;
	}

	public override void SaveWorldBuilderData()
	{
		base.SaveWorldBuilderData();
		WorldBuilderData.Set("FloorSwitch", ObjectId, "UseAlternateModel", mbUseAlternateModel, defaultValue: false);
		WorldBuilderData.Set("FloorSwitch", ObjectId, "NumPresses", mNumPresses, 0);
	}

	public override void LoadWorldBuilderData()
	{
		base.LoadWorldBuilderData();
		WorldBuilderData.SetKeyRemap(kWorldBuilderDataKeyRemap);
		WorldBuilderData.Get("FloorSwitch", ObjectId, "UseAlternateModel", ref mbUseAlternateModel);
		if (!WorldBuilderData.Get("FloorSwitch", ObjectId, "NumPresses", ref mNumPresses))
		{
			mNumPresses = (WorldBuilderData.Get("FloorSwitch", ObjectId, "CurrentlyPressed", defaultValue: false) ? 1 : 0);
		}
		if (mNumPresses > 0)
		{
			WorldBuilderData.PostLoadWorldBuilderData += ActivateSwitch;
		}
		UpdateVisualState();
	}

	protected override void UpdateOpacity()
	{
		base.UpdateOpacity();
		if (CurrentlyPressed)
		{
			if (IsTemporary)
			{
				SetColorTint(kColorTemporary[0], kColorTemporary[1], kColorTemporary[2], kTintTransitionTime);
			}
			else
			{
				SetColorTint(kColorPermanent[0], kColorPermanent[1], kColorPermanent[2], kTintTransitionTime);
			}
		}
	}

	protected override void ShowWithEffects()
	{
		Audio.StartObjectSound(ObjectId, "floor_switch_appear", loop: false);
		base.ShowWithEffects();
	}

	protected override void HideWithEffects()
	{
		Audio.StartObjectSound(ObjectId, "floor_switch_disappear", loop: false);
		base.HideWithEffects();
	}

	protected override void OnShow()
	{
		base.OnShow();
		PushableStatue.CheckForPushableStatueEffects(this, null);
	}

	protected override void OnHide()
	{
		base.OnHide();
		DeactivateSwitch(bForce: true);
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
		return !CurrentlyPressed;
	}

	public SandsOfUnderstandingComponent.OnGlowCallback GetOnGlowCallback()
	{
		return OnGlowCallback;
	}

	private void OnGlowCallback()
	{
		Appear();
	}

	public bool PushSwitch()
	{
		return PushSwitch(null);
	}

	public bool PushSwitch(Sim sim)
	{
		bool currentlyPressed = CurrentlyPressed;
		mNumPresses++;
		if (currentlyPressed)
		{
			return false;
		}
		if (mIsVisible)
		{
			ActivateSwitch(sim);
			return true;
		}
		return false;
	}

	public bool ReleaseSwitch()
	{
		return ReleaseSwitch(null);
	}

	public bool ReleaseSwitch(Sim sim)
	{
		bool result = false;
		if ((IsTemporary || GameStates.IsBuildBuyLikeState) && mIsVisible)
		{
			result = DeactivateSwitch(bForce: false, sim);
		}
		return result;
	}

	public void ResetSwitchState()
	{
		StopEffects();
		mNumPresses = 0;
		UpdateVisualState();
		PushableStatue[] objects = Queries.GetObjects<PushableStatue>(Position, 1.2f);
		for (int i = 0; i < objects.Length; i++)
		{
			PushSwitch();
		}
	}

	public bool ResetSwitchStateBehavior(Sim sim)
	{
		ResetSwitchState();
		return true;
	}

	private void ActivateSwitch()
	{
		ActivateSwitch(null);
	}

	private void ActivateSwitch(Sim sim)
	{
		if (mbUseAlternateModel)
		{
			Audio.StartObjectSound(ObjectId, "floor_switch_on_statue", loop: false);
		}
		else
		{
			Audio.StartObjectSound(ObjectId, "floor_switch_on", loop: false);
		}
		StartEffects();
		TombObjectComponent.ActivateTrigger(Trigger.StepOn, sim);
	}

	private void UpdateVisualState()
	{
		if (mbUseAlternateModel)
		{
			SetModel("switchFloorStatue");
			SetMaterial("switchFloorStatueOff");
		}
		else
		{
			SetModel("switchFloor");
			SetMaterial("switchFloorOff");
		}
	}

	private void StartEffects()
	{
		if (mSwitchActiveVFX == null)
		{
			mSwitchActiveVFX = VisualEffect.Create("ep1FloorSwitchGlow");
			if (IsTemporary)
			{
				mSwitchActiveVFX.SetEffectColorScale(kColorTemporary[0], kColorTemporary[1], kColorTemporary[2]);
				SetColorTint(kColorTemporary[0], kColorTemporary[1], kColorTemporary[2], kTintTransitionTime);
			}
			else
			{
				mSwitchActiveVFX.SetEffectColorScale(kColorPermanent[0], kColorPermanent[1], kColorPermanent[2]);
				SetColorTint(kColorPermanent[0], kColorPermanent[1], kColorPermanent[2], kTintTransitionTime);
			}
			mSwitchActiveVFX.ParentTo(this, Slot.FXJoint_0);
			mSwitchActiveVFX.Start();
			UpdateVisualState();
		}
	}

	private bool DeactivateSwitch(bool bForce)
	{
		return DeactivateSwitch(bForce, null);
	}

	private bool DeactivateSwitch(bool bForce, Sim sim)
	{
		if (mNumPresses == 1 || (mNumPresses > 0 && bForce))
		{
			mNumPresses = 0;
			Audio.StartObjectSound(ObjectId, "floor_switch_off", loop: false);
			StopEffects();
			return TombObjectComponent.ActivateTrigger(Trigger.StepOff, sim);
		}
		if (mNumPresses > 0)
		{
			mNumPresses--;
		}
		return false;
	}

	private void StopEffects()
	{
		if (mSwitchActiveVFX != null)
		{
			mSwitchActiveVFX.Stop(VisualEffect.TransitionType.SoftTransition);
			mSwitchActiveVFX.Dispose();
			mSwitchActiveVFX = null;
		}
		UpdateVisualState();
		SetColorTint(1f, 1f, 1f, kTintTransitionTime);
	}
}
