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
using Sims3.Gameplay.Skills;
using Sims3.Gameplay.Tutorial;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;
using Sims3.UI;

namespace Sims3.Gameplay.Objects.TombObjects;

public class PushableStatue : GameObject, ISandsOfUnderstandingable, IHasWorldBuilderData, ICanHasTombObjectComponent, IPushableStatue, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent, GameObject.IDoNotDuplicateOnClone
{
	protected enum MoveSetting
	{
		None,
		Secretly,
		Visibly
	}

	public enum RoutingSlot
	{
		North,
		East,
		South,
		West
	}

	private class DirectionIndicator : GameObject
	{
		public override void Dispose()
		{
			if (sDirectionIndicator == this)
			{
				sDirectionIndicator = null;
			}
			base.Dispose();
		}

		public void SetGeometryState(bool canPush, bool canPull)
		{
			string geometryState;
			if (canPush)
			{
				geometryState = ((!canPull) ? "DirectionA" : "2Directions");
			}
			else
			{
				geometryState = ((!canPull) ? "Stop" : "DirectionB");
			}
			SetGeometryState(geometryState);
		}
	}

	protected sealed class BuildBuy_MakeSecretlyMovable : ImmediateInteraction<Sim, PushableStatue>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, PushableStatue, BuildBuy_MakeSecretlyMovable>
		{
			protected override string GetInteractionName(Sim a, PushableStatue target, InteractionObjectPair interaction)
			{
				return LocalizeString(false, "InteractionName", GetLocalizedTrueFalseString(target.mMoveSetting == MoveSetting.Secretly));
			}

			protected override bool Test(Sim a, PushableStatue target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/PushableStatue/BuildBuy_MakeSecretlyMovable";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(bool isFemale, string name, params object[] parameters)
		{
			return Localization.LocalizeString(isFemale, "Gameplay/Objects/TombObjects/PushableStatue/BuildBuy_MakeSecretlyMovable:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.mMoveSetting = MoveSetting.Secretly;
			return true;
		}
	}

	protected sealed class BuildBuy_MakeVisiblyMovable : ImmediateInteraction<Sim, PushableStatue>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, PushableStatue, BuildBuy_MakeVisiblyMovable>
		{
			protected override string GetInteractionName(Sim a, PushableStatue target, InteractionObjectPair interaction)
			{
				return LocalizeString(false, "InteractionName", GetLocalizedTrueFalseString(target.mMoveSetting == MoveSetting.Visibly));
			}

			protected override bool Test(Sim a, PushableStatue target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/PushableStatue/BuildBuy_MakeVisiblyMovable";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(bool isFemale, string name, params object[] parameters)
		{
			return Localization.LocalizeString(isFemale, "Gameplay/Objects/TombObjects/PushableStatue/BuildBuy_MakeVisiblyMovable:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.mMoveSetting = MoveSetting.Visibly;
			return true;
		}
	}

	protected sealed class BuildBuy_AllowSwitchActivation : ImmediateInteraction<Sim, PushableStatue>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, PushableStatue, BuildBuy_AllowSwitchActivation>
		{
			protected override string GetInteractionName(Sim a, PushableStatue target, InteractionObjectPair interaction)
			{
				return LocalizeString(false, "InteractionName", GetLocalizedTrueFalseString(target.mAbleToActivateSwitch));
			}

			protected override bool Test(Sim a, PushableStatue target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/PushableStatue/BuildBuy_AllowSwitchActivation";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(bool isFemale, string name, params object[] parameters)
		{
			return Localization.LocalizeString(isFemale, "Gameplay/Objects/TombObjects/PushableStatue/BuildBuy_AllowSwitchActivation:" + name, parameters);
		}

		protected override bool Run()
		{
			Target.mAbleToActivateSwitch = !Target.mAbleToActivateSwitch;
			return true;
		}
	}

	private sealed class Inspect : Interaction<Sim, PushableStatue>
	{
		private sealed class Definition : InteractionDefinition<Sim, PushableStatue, Inspect>
		{
			protected override bool Test(Sim a, PushableStatue target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return target.mMoveSetting == MoveSetting.Secretly;
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/PushableStatue/Inspect";

		[TunableComment("Range:  Sim Minutes.  Description:  Number of minutes a Sim inspects a statue before discovering if it is pushable.")]
		[Tunable]
		private static readonly float kInspectTime = 5f;

		public static readonly InteractionDefinition Singleton = new Definition();

		private static readonly ulong kIconQuestionMarkHash = ResourceUtils.HashString64("misc_question_mark");

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/PushableStatue/Inspect:" + name, parameters);
		}

		public override void ConfigureInteraction()
		{
			TimedStage timedStage = new TimedStage(GetInteractionName(), kInspectTime, showCompletionTime: false, selectable: true, visibleProgress: true);
			Stages = new List<Stage>(new Stage[1] { timedStage });
			base.ConfigureInteraction();
		}

		public override ThumbnailKey GetIconKey()
		{
			return new ThumbnailKey(new ResourceKey(kIconQuestionMarkHash, 796721156u, 0u), ThumbnailSize.Medium);
		}

		protected override bool Run()
		{
			if (!Actor.RouteToSlotListAndCheckInUse((IGameObject)Target, Target.RoutingSlots, out int slotIndex))
			{
				return false;
			}
			StandardEntry();
			BeginCommodityUpdates();
			StartStages();
			EnterStateMachine("pushableStatueInspect", "Enter", "x");
			SetActor("statue", Target);
			switch (Target.RoutingSlots[slotIndex])
			{
			case Slot.RoutingSlot_1:
				SetParameter("ikSuffix", "01");
				break;
			case Slot.RoutingSlot_2:
				SetParameter("ikSuffix", "02");
				break;
			case Slot.RoutingSlot_3:
				SetParameter("ikSuffix", "03");
				break;
			}
			AnimateSim("Inspect");
			bool flag = DoLoop(ExitReason.Default);
			if (flag)
			{
				AnimateSim("Exit_Success");
			}
			else
			{
				AnimateSim("Exit_Stop");
			}
			EndCommodityUpdates(flag);
			StandardExit();
			if (flag)
			{
				Actor.ShowTNSIfSelectable(LocalizeString("DiscoverTNS"), StyledNotification.NotificationStyle.kGameMessagePositive, Target.ObjectId);
				Target.mMoveSetting = MoveSetting.Visibly;
			}
			Tutorialette.TriggerLesson(Lessons.TombPushableStatueInspect, Actor);
			return flag;
		}
	}

	private sealed class Move : InteractionGameObjectHit<Sim, PushableStatue>
	{
		public class Definition : InteractionDefinition<Sim, PushableStatue, Move>
		{
			public bool Push;

			public bool Once;

			public bool All;

			private Slot HandleSlot;

			protected Definition()
			{
			}

			public Definition(bool push, bool once, bool all)
				: this()
			{
				Push = push;
				Once = once;
				All = all;
			}

			public override string GetInteractionName(ref InteractionInstanceParameters parameters)
			{
				string text = (Push ? "Push" : "Pull");
				string text2;
				if (Once)
				{
					text2 = "Once";
				}
				else
				{
					text2 = (All ? "All" : "");
				}
				return LocalizeString(text + text2);
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, PushableStatue target, List<InteractionObjectPair> results)
			{
				HandleSlot = Slot.None;
				results.Add(new InteractionObjectPair(Clone(), target));
			}

			public Definition Clone()
			{
				return new Definition(Push, Once, All);
			}

			public override InteractionTestResult Test(ref InteractionInstanceParameters parameters, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (!(parameters.Target is PushableStatue { mMoveSetting: MoveSetting.Visibly } pushableStatue))
				{
					return InteractionTestResult.Def_TestFailed;
				}
				if (HandleSlot == Slot.None)
				{
					HandleSlot = pushableStatue.GetNearestRoutingSlot(parameters.Hit.mPoint);
				}
				if (pushableStatue.InUse)
				{
					return InteractionTestResult.Pass;
				}
				PushableStatueReservedTile pushableStatueReservedTile = pushableStatue.CreateStatueJig(out var forwardVector, HandleSlot, parameters.Actor as Sim, GetJigName());
				if (pushableStatueReservedTile == null)
				{
					return InteractionTestResult.Def_TestFailed;
				}
				pushableStatueReservedTile.DisableFootprint(GetFootprintToDisable());
				pushableStatueReservedTile.EnableFootprint(GetFootprintToEnable());
				Vector3 statuesNewPosition = GetStatuesNewPosition(Push, pushableStatue, HandleSlot);
				IActor actor = parameters.Actor;
				bool flag = TestJigPlacement(actor, pushableStatue, pushableStatueReservedTile, HandleSlot, forwardVector, statuesNewPosition);
				pushableStatueReservedTile.Destroy();
				if (!flag)
				{
					greyedOutTooltipCallback = CannotPushDueToObstacle;
					return InteractionTestResult.Common_Blocked;
				}
				return base.Test(ref parameters, ref greyedOutTooltipCallback);
			}

			protected override InteractionInstance CreateInstance(ref InteractionInstanceParameters parameters)
			{
				Move move = base.CreateInstance(ref parameters) as Move;
				_ = parameters.Target;
				move.HandleSlot = HandleSlot;
				move.Def = this;
				HandleSlot = Slot.None;
				return move;
			}

			public string GetJigName()
			{
				return "PushableStatue" + (Push ? "Push" : "Pull") + "Jig";
			}

			public uint GetFootprintToEnable()
			{
				if (!Push)
				{
					return sPullJigFootprintHash;
				}
				return sPushJigFootprintHash;
			}

			public uint GetFootprintToDisable()
			{
				if (!Push)
				{
					return sPushJigFootprintHash;
				}
				return sPullJigFootprintHash;
			}

			public string GetStateMachineName()
			{
				return "PushableStatue" + (Push ? "Push" : "Pull");
			}

			public string GetMoveStateName()
			{
				if (!Push)
				{
					return "Pull";
				}
				return "Push";
			}

			protected override bool Test(Sim a, PushableStatue target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			private string CannotPushDueToObstacle()
			{
				return LocalizeString("CannotPushTooltip");
			}
		}

		private const string sLocalizationKey = "Gameplay/Objects/TombObjects/PushableStatue/Push";

		private PushableStatueReservedTile mJig;

		[Tunable]
		private static float kAthleticSkillPointsGainedForOnePush = 5f;

		[Tunable]
		private static bool kIsSkillMeterVisible = true;

		public static readonly Definition Push = new Definition(push: true, once: false, all: false);

		public static readonly Definition PushOnce = new Definition(push: true, once: true, all: false);

		public static readonly Definition PushAll = new Definition(push: true, once: false, all: true);

		public static readonly Definition Pull = new Definition(push: false, once: false, all: false);

		public static readonly Definition PullOnce = new Definition(push: false, once: true, all: false);

		public static readonly Definition PullAll = new Definition(push: false, once: false, all: true);

		private Definition Def;

		private Slot HandleSlot;

		private Vector3 mOriginalSimPosition;

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Objects/TombObjects/PushableStatue/Push:" + name, parameters);
		}

		private static bool TestJigPlacement(IActor actor, PushableStatue statue, PushableStatueReservedTile jig, Slot handleSlot, Vector3 jigForwardVector, Vector3 statueNewPosition)
		{
			bool flag = true;
			Vector3 position = statue.Position;
			Vector3 positionOfSlot = statue.GetPositionOfSlot(handleSlot);
			Vector3 position2 = positionOfSlot + statueNewPosition - position;
			sAllowIntersectionWith = actor;
			flag = flag && World.TestObjectPlacement(jig.ObjectId, TestObjectPlacementBooleans.TemporaryPlacement | TestObjectPlacementBooleans.AllowInFrontOfDoors, position, jigForwardVector) && World.TestObjectPlacement(statue.ObjectId, TestObjectPlacementBooleans.AllowInFrontOfDoors, statueNewPosition, statue.ForwardVector) && World.TestObjectPlacement(actor.ObjectId, TestObjectPlacementBooleans.TemporaryPlacement | TestObjectPlacementBooleans.AllowInFrontOfDoors, positionOfSlot, statue.GetForwardOfSlot(handleSlot)) && World.TestObjectPlacement(actor.ObjectId, TestObjectPlacementBooleans.TemporaryPlacement | TestObjectPlacementBooleans.AllowInFrontOfDoors, position2, statue.GetForwardOfSlot(handleSlot));
			sAllowIntersectionWith = null;
			return flag;
		}

		public void ShowMoveEffect(StateMachineClient smc, IEvent evt)
		{
			string text = Target.VisualEffectOfStatueMove();
			if (text != null)
			{
				VisualEffect.FireOneShotEffect(text, Target, Slot.FXJoint_0, VisualEffect.TransitionType.SoftTransition);
			}
		}

		protected override bool Run()
		{
			if (!BuffFear.CanSimDoFearGatingAction(Actor, kFearBuffThresholdPushPullStatue))
			{
				Actor.ShowTNSIfSelectable(Localization.LocalizeString(Actor.IsFemale, "Gameplay/Objects/TombObjects/PushableStatue:FearRefuseTNS", Actor), StyledNotification.NotificationStyle.kGameMessageNegative, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
				Actor.PlaySoloAnimation("a_fearModdlet_refuse_x", yield: true);
				return false;
			}
			if (!PlaceJig(HandleSlot))
			{
				return false;
			}
			Route route = Actor.CreateRoute();
			route.AddObjectToIgnoreForRoute(mJig.ObjectId);
			route.SetOption(Route.RouteOption.DoLineOfSightCheckUserOverride, value: false);
			route.SetOption(Route.RouteOption.UserOverrideSlotObstruction, value: true);
			route.PlanToSlot(Target, HandleSlot);
			if (!Actor.DoRoute(route) || Target.InUse)
			{
				return false;
			}
			StandardEntry();
			BeginCommodityUpdates();
			EnterStateMachine(Def.GetStateMachineName(), "Enter", "x");
			SetActor("jig", mJig);
			while (!Actor.HasExitReason())
			{
				AddOneShotScriptEventHandler(101u, ShowMoveEffect);
				mOriginalSimPosition = Actor.Position;
				AnimateSim("Hold");
				if (Actor.HasExitReason())
				{
					break;
				}
				AnimateSim(Def.GetMoveStateName());
				Target.TombObjectComponent.ActivateTrigger(Trigger.Moved, Actor);
				Target.TombObjectComponent.ActivateTrigger(Def.Push ? Trigger.Pushed : Trigger.Pulled, Actor);
				AnimateSim("Hold");
				Vector3 statuesNewPosition = GetStatuesNewPosition();
				bool flag = false;
				flag |= Target.CheckForEffectsOldPosition(Actor);
				Target.UnParent();
				Target.SetPosition(statuesNewPosition);
				flag |= Target.CheckForEffectsNewPosition(statuesNewPosition, Actor);
				if (!Def.All && (flag || Def.Once))
				{
					Actor.AddExitReason(ExitReason.Finished);
				}
				Actor.SetPosition(Target.GetPositionOfSlot(HandleSlot));
				Skill skill = Actor.SkillManager.AddElement(SkillNames.Athletic);
				skill.AddPoints(kAthleticSkillPointsGainedForOnePush, kIsSkillMeterVisible);
				if (!Actor.HasExitReason())
				{
					if (!PlaceJig(HandleSlot))
					{
						break;
					}
					if (!Def.All)
					{
						AnimateSim("Breathe");
					}
				}
			}
			AnimateSim("Exit");
			EndCommodityUpdates(succeeded: true);
			StandardExit();
			return true;
		}

		private bool PlaceJig(Slot targetSlot)
		{
			Vector3 forwardVector;
			if (mJig == null)
			{
				mJig = Target.CreateStatueJig(out forwardVector, targetSlot, Actor, Def.GetJigName());
			}
			else
			{
				forwardVector = mJig.ForwardVector;
			}
			if (mJig == null)
			{
				return false;
			}
			mJig.DisableFootprint(Def.GetFootprintToDisable());
			if (!TestJigPlacement(Actor, Target, mJig, HandleSlot, forwardVector, GetStatuesNewPosition()))
			{
				return false;
			}
			AnimationUtil.StopAllAnimation(mJig);
			mJig.ResetBindPose();
			mJig.SetPosition(Target.Position);
			mJig.SetForward(forwardVector);
			mJig.SetOpacity(0f, 0f);
			mJig.AddToWorld();
			Vector3 forwardVector2 = Target.ForwardVector;
			Target.ParentToSlot(mJig, Slot.ContainmentSlot_0);
			Target.SetForward(forwardVector2);
			return true;
		}

		public Vector3 GetEstimatedStatueOffset()
		{
			if (Target.Parent == null)
			{
				return Vector3.Zero;
			}
			return Actor.Position - mOriginalSimPosition;
		}

		private Vector3 GetStatuesNewPosition()
		{
			return GetStatuesNewPosition(Def.Push, Target, HandleSlot);
		}

		private static Vector3 GetStatuesNewPosition(bool push, PushableStatue Target, Slot HandleSlot)
		{
			if (push)
			{
				Slot slotName;
				if (HandleSlot == Target.RoutingSlots[0])
				{
					slotName = Target.RoutingSlots[2];
				}
				else if (HandleSlot == Target.RoutingSlots[1])
				{
					slotName = Target.RoutingSlots[3];
				}
				else
				{
					slotName = ((HandleSlot != Target.RoutingSlots[2]) ? Target.RoutingSlots[1] : Target.RoutingSlots[0]);
				}
				return Target.GetPositionOfSlot(slotName);
			}
			return Target.GetPositionOfSlot(HandleSlot);
		}

		public override void Cleanup()
		{
			if (mJig != null)
			{
				Target.UnParent();
				mJig.Destroy();
				mJig = null;
			}
			base.Cleanup();
		}
	}

	private const float kSearchRadiusFloorSwitch = 0.8f;

	private const float kSearchRadiusTombTrap = 1.45f;

	private const uint kAbleToActivateSwitch = 144544850u;

	private const uint kMoveSetting = 144544867u;

	private const string kWorldBuilderDataName = "PushableStatue";

	private static readonly string sLocalizationKey = "Sims3.Gameplay.Objects.TombObjects".Substring(6).Replace('.', '/') + "/PushableStatue";

	private static int kInvalidMoveSetting = int.MinValue;

	protected bool mAbleToActivateSwitch = true;

	protected MoveSetting mMoveSetting;

	private static Slot[] mRoutingSlots = new Slot[4]
	{
		Slot.RoutingSlot_0,
		Slot.RoutingSlot_1,
		Slot.RoutingSlot_2,
		Slot.RoutingSlot_3
	};

	private static Slot[] mContainmentSlots = new Slot[4]
	{
		Slot.ContainmentSlot_0,
		Slot.ContainmentSlot_1,
		Slot.ContainmentSlot_2,
		Slot.ContainmentSlot_3
	};

	public static string sPullJigFootprintName = "pushableStatuePull_footprintShape";

	public static string sPushJigFootprintName = "pushableStatuePush_footprintShape";

	public static uint sPullJigFootprintHash = ResourceUtils.HashString32("pushableStatuePull_footprintShape");

	public static uint sPushJigFootprintHash = ResourceUtils.HashString32("pushableStatuePush_footprintShape");

	[Persistable(false)]
	private Vector3 mHandToolOldPosition = Vector3.Invalid;

	[Tunable]
	[TunableComment("Range: Negative integer. If a Sim has a fear buff with a greater strength than this value, they will not push or pull the statue.")]
	private static int kFearBuffThresholdPushPullStatue = -45;

	[Tunable]
	[TunableComment("Number of Sim minutes before the indicator starts fading after the mouse leaves a statue.")]
	private static float kDirectionIndicatorFadeDelayTime = 2f;

	[TunableComment("Number of Sim minutes the indicator takes to fade out after the mouse leaves a statue.")]
	[Tunable]
	private static float kDirectionIndicatorFadeOutTime = 2f;

	[TunableComment("Number of Sim minutes before the cached indicator is destroyed.")]
	[Tunable]
	private static float kDirectionIndicatorDestroyDelayTime = 30f;

	private static InteractionDefinition[] sInteractionDefinitions = new InteractionDefinition[5]
	{
		Inspect.Singleton,
		Move.Push,
		Move.PushOnce,
		Move.Pull,
		Move.PullOnce
	};

	[PersistableStatic]
	private static DirectionIndicator sDirectionIndicator;

	[PersistableStatic]
	private static AlarmHandle sDirectionIndicatorFadeAlarm = AlarmHandle.kInvalidHandle;

	[PersistableStatic]
	private static AlarmHandle sDirectionIndicatorDisposeAlarm = AlarmHandle.kInvalidHandle;

	private static IGameObject sAllowIntersectionWith;

	private static readonly string[] kWorldBuilderDataKeyRemap = new string[4]
	{
		144544850u.ToString(),
		"AbleToActivateSwitch",
		144544867u.ToString(),
		"MoveSetting"
	};

	public Slot[] RoutingSlots => mRoutingSlots;

	private static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString(sLocalizationKey + ":" + name, parameters);
	}

	private static string GetLocalizedTrueFalseString(bool b)
	{
		if (b)
		{
			return Localization.LocalizeString("Gameplay/Objects/Unrstone:True");
		}
		return Localization.LocalizeString("Gameplay/Objects/Unrstone:False");
	}

	public override void OnCreation()
	{
		base.OnCreation();
	}

	public override void OnStartup()
	{
		AddComponent<TombObjectStaticComponent>(new object[0]);
		AddComponent<AdventureComponent>(new object[0]);
	}

	public void OnAddTombObjectComponent(ITombObjectComponent tombObjectComponent)
	{
		tombObjectComponent.RegisterTrigger(Trigger.Pushed);
		tombObjectComponent.RegisterTrigger(Trigger.Pulled);
		tombObjectComponent.RegisterTrigger(Trigger.Moved);
		tombObjectComponent.RegisterTrigger(Trigger.ActivatedSomethingElse);
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
		return mMoveSetting != MoveSetting.Visibly;
	}

	public SandsOfUnderstandingComponent.OnGlowCallback GetOnGlowCallback()
	{
		return OnGlowCallback;
	}

	private void OnGlowCallback()
	{
		mMoveSetting = MoveSetting.Visibly;
	}

	public string VisualEffectOfStatueMove()
	{
		TerrainType terrainType = World.GetTerrainType(Position);
		string text = World.GetFloorSurfaceType(LotCurrent.LotId, Position);
		if (terrainType == TerrainType.LotTerrain)
		{
			text = RemoveDigits(text);
			switch (text)
			{
			case "Default":
			case "Footpath":
			case "Mud":
			case "Mulch":
				text = "Grass";
				break;
			}
		}
		return text switch
		{
			"Grass" => "ep1PushableStatueGrass", 
			"Sand" => "ep1PushableStatueSand", 
			_ => "ep1PushableStatueDirt", 
		};
	}

	private static string RemoveDigits(string surface)
	{
		surface = surface.Replace("0", "");
		surface = surface.Replace("1", "");
		surface = surface.Replace("2", "");
		surface = surface.Replace("3", "");
		surface = surface.Replace("4", "");
		surface = surface.Replace("5", "");
		surface = surface.Replace("6", "");
		surface = surface.Replace("7", "");
		surface = surface.Replace("8", "");
		surface = surface.Replace("9", "");
		return surface;
	}

	public override void OnHover(UIMouseEventArgs eventArgs, GameObjectHit gameObjectHit)
	{
		base.OnHover(eventArgs, gameObjectHit);
		if (!GameStates.IsLiveState)
		{
			DestroyDirectionIndicator();
			return;
		}
		if (mMoveSetting != MoveSetting.Visibly)
		{
			FadeDirectionIndicator();
			return;
		}
		Sim activeActor = Sim.ActiveActor;
		if (activeActor == null)
		{
			FadeDirectionIndicator();
			return;
		}
		gameObjectHit.mPoint = OffsetHitPoint(gameObjectHit.mPoint);
		bool hasAnyInteraction = false;
		InteractionInstanceParameters parameters = new InteractionInstanceParameters(null, activeActor, new InteractionPriority(InteractionPriorityLevel.UserDirected), autonomous: false, cancellableByPlayer: true, gameObjectHit);
		bool canPush = TestInteraction(Move.PushOnce, ref parameters, ref hasAnyInteraction);
		bool canPull = TestInteraction(Move.PullOnce, ref parameters, ref hasAnyInteraction);
		if (!hasAnyInteraction)
		{
			FadeDirectionIndicator();
			return;
		}
		Vector3 mPoint = gameObjectHit.mPoint;
		Slot slot = Slot.None;
		float num = float.MaxValue;
		Slot[] array = mContainmentSlots;
		foreach (Slot slot2 in array)
		{
			float num2 = (Slots.GetPositionOfSlot(ObjectId, (uint)slot2) - mPoint).LengthSqr();
			if (num2 < num)
			{
				slot = slot2;
				num = num2;
			}
		}
		ShowDirectionIndicator(slot, canPush, canPull);
	}

	public override void OnUnHover(UIMouseEventArgs eventArgs, GameObjectHit gameObjectHit)
	{
		base.OnUnHover(eventArgs, gameObjectHit);
		GameObject gameObject = GameObject.GetObject(new ObjectGuid(gameObjectHit.mId));
		if (!(gameObject is PushableStatue))
		{
			FadeDirectionIndicator();
		}
	}

	private bool TestInteraction(Move.Definition def, ref InteractionInstanceParameters parameters, ref bool hasAnyInteraction)
	{
		bool result = false;
		GreyedOutTooltipCallback greyedOutTooltipCallback = null;
		parameters.SetInteractionObjectPair(new InteractionObjectPair(def.Clone(), this));
		if (IUtil.IsPass(parameters.InteractionDefinition.Test(ref parameters, ref greyedOutTooltipCallback)) || greyedOutTooltipCallback != null)
		{
			_ = hasAnyInteraction;
			hasAnyInteraction = true;
			result = greyedOutTooltipCallback == null;
		}
		return result;
	}

	private void ShowDirectionIndicator(Slot slot, bool canPush, bool canPull)
	{
		if (!VideoGrabHelper.InUse)
		{
			if (sDirectionIndicator == null)
			{
				sDirectionIndicator = GlobalFunctions.CreateObjectOutOfWorld("PushableStatueDirectionIndicator") as DirectionIndicator;
			}
			sDirectionIndicator.SetGeometryState(canPush, canPull);
			Vector3 trans = new Vector3(0f, -0.34f, 0f);
			Vector3 axis = Vector3.UnitX;
			Slots.AttachToSlot(sDirectionIndicator.ObjectId, ObjectId, (uint)slot, occupySlot: false, ref trans, ref axis, -(float)Math.PI / 2f);
			sDirectionIndicator.AddToWorld();
			sDirectionIndicator.SetOpacity(1f, 0f);
			if (sDirectionIndicatorDisposeAlarm == AlarmHandle.kInvalidHandle)
			{
				sDirectionIndicatorDisposeAlarm = AddAlarm(kDirectionIndicatorDestroyDelayTime, TimeUnit.Minutes, DestroyDirectionIndicator, "DestroyDirectionIndicator", AlarmType.AlwaysPersisted);
			}
			else
			{
				SetNewAlarmTime(sDirectionIndicatorDisposeAlarm, kDirectionIndicatorDestroyDelayTime, TimeUnit.Minutes);
			}
			if (sDirectionIndicatorFadeAlarm == AlarmHandle.kInvalidHandle)
			{
				sDirectionIndicatorFadeAlarm = AddAlarm(kDirectionIndicatorFadeDelayTime, TimeUnit.Minutes, FadeDirectionIndicator, "FadeDirectionIndicator", AlarmType.AlwaysPersisted);
			}
			else
			{
				SetNewAlarmTime(sDirectionIndicatorFadeAlarm, kDirectionIndicatorFadeDelayTime, TimeUnit.Minutes);
			}
		}
	}

	private static void FadeDirectionIndicator()
	{
		if (sDirectionIndicator != null)
		{
			sDirectionIndicator.SetOpacity(0f, kDirectionIndicatorFadeOutTime);
		}
		if (sDirectionIndicatorFadeAlarm != AlarmHandle.kInvalidHandle)
		{
			AlarmManager.Global.RemoveAlarm(sDirectionIndicatorFadeAlarm);
			sDirectionIndicatorFadeAlarm = AlarmHandle.kInvalidHandle;
		}
	}

	private static void DestroyDirectionIndicator()
	{
		if (sDirectionIndicator != null)
		{
			sDirectionIndicator.Destroy();
			sDirectionIndicator = null;
		}
		if (sDirectionIndicatorDisposeAlarm != AlarmHandle.kInvalidHandle)
		{
			AlarmManager.Global.RemoveAlarm(sDirectionIndicatorDisposeAlarm);
			sDirectionIndicatorDisposeAlarm = AlarmHandle.kInvalidHandle;
		}
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

	public override bool HandToolAllowIntersection(IGameObject objectToIntersect, Matrix44 testMatrix, bool bThisObjectShifted)
	{
		if (GameStates.IsLiveState)
		{
			GameObject gameObject = objectToIntersect as GameObject;
			if (gameObject.CheckObjectPlacement(UserToolUtils.BuildBuyProductType.Ceiling))
			{
				return true;
			}
		}
		if (objectToIntersect is Sims3.Gameplay.Abstracts.Door)
		{
			return true;
		}
		if (objectToIntersect == sAllowIntersectionWith)
		{
			return true;
		}
		if (objectToIntersect is TreasureSpawnPoint)
		{
			return true;
		}
		return base.HandToolAllowIntersection(objectToIntersect, testMatrix, bThisObjectShifted);
	}

	public override void OnHandToolPickup(ePickupTypeHandTool pickupType)
	{
		if (pickupType != ePickupTypeHandTool.kPickupTypeCreated && pickupType != ePickupTypeHandTool.kPickupTypeCreatedDuplicate)
		{
			mHandToolOldPosition = Position;
		}
	}

	public override void OnHandToolPlacement()
	{
		if (mHandToolOldPosition != Position)
		{
			if (mHandToolOldPosition != Vector3.Invalid)
			{
				CheckForEffectsOldPosition(mHandToolOldPosition, PlumbBob.SelectedActor);
				mHandToolOldPosition = Vector3.Invalid;
			}
			CheckForEffectsNewPosition(Position, PlumbBob.SelectedActor);
		}
	}

	public override bool PackForMovingOverride()
	{
		return true;
	}

	public override void AddToWorld()
	{
		base.AddToWorld();
		CheckForEffectsNewPosition(Position, null);
	}

	public override void RemoveFromWorld()
	{
		base.RemoveFromWorld();
		CheckForEffectsOldPosition(null);
	}

	public new Slot GetNearestRoutingSlot(Vector3 hitPos)
	{
		hitPos = OffsetHitPoint(hitPos);
		return base.GetNearestRoutingSlot(hitPos);
	}

	private Vector3 OffsetHitPoint(Vector3 hitPos)
	{
		if (InUse)
		{
			foreach (Sim item in ActorsUsingMe)
			{
				if (item.InteractionQueue.RunningInteraction is Move move)
				{
					hitPos -= move.GetEstimatedStatueOffset();
					break;
				}
			}
		}
		return hitPos;
	}

	public PushableStatueReservedTile CreateStatueJig(out Vector3 forwardVector, Slot targetSlot, Sim actor, string jigName)
	{
		forwardVector = Vector3.Zero;
		if (!(GlobalFunctions.CreateObjectOutOfWorld(jigName) is PushableStatueReservedTile pushableStatueReservedTile))
		{
			return null;
		}
		pushableStatueReservedTile.AddIgnorePlacementObject(actor);
		pushableStatueReservedTile.AddIgnorePlacementObject(this);
		if (targetSlot == RoutingSlots[0])
		{
			forwardVector = -SideVector;
		}
		else if (targetSlot == RoutingSlots[2])
		{
			forwardVector = SideVector;
		}
		else if (targetSlot == RoutingSlots[1])
		{
			forwardVector = -ForwardVector;
		}
		else if (targetSlot == RoutingSlots[3])
		{
			forwardVector = ForwardVector;
		}
		return pushableStatueReservedTile;
	}

	public static bool CheckForPushableStatueEffects(FloorSwitch floorSwitch, Sim sim)
	{
		bool result = false;
		PushableStatue[] objects = Queries.GetObjects<PushableStatue>(floorSwitch.Position, 5f);
		PushableStatue[] array = objects;
		foreach (PushableStatue pushableStatue in array)
		{
			if ((pushableStatue.Position - floorSwitch.Position).LengthSqr() < 0.64000005f && floorSwitch.PushSwitch(sim))
			{
				result = true;
				pushableStatue.TombObjectComponent.ActivateTrigger(Trigger.ActivatedSomethingElse, sim);
			}
		}
		return result;
	}

	public static bool CheckForPushableStatueEffects(TombTrap trap, Sim sim)
	{
		bool result = false;
		Vector3 position = trap.Position;
		if (trap is WallTrap)
		{
			position += trap.ForwardVector * 0.5f;
		}
		PushableStatue[] objects = Queries.GetObjects<PushableStatue>(position, 5f);
		PushableStatue[] array = objects;
		foreach (PushableStatue pushableStatue in array)
		{
			if ((pushableStatue.Position - trap.Position).LengthSqr() < 2.1025002f)
			{
				if (trap.CoverByStatue(sim))
				{
					result = true;
					pushableStatue.TombObjectComponent.ActivateTrigger(Trigger.ActivatedSomethingElse, sim);
				}
				break;
			}
		}
		return result;
	}

	private bool CheckForEffectsNewPosition(Vector3 newPos, Sim sim)
	{
		bool result = false;
		if (mAbleToActivateSwitch)
		{
			FloorSwitch[] objects = Queries.GetObjects<FloorSwitch>(newPos, 0.8f);
			FloorSwitch[] array = objects;
			foreach (FloorSwitch floorSwitch in array)
			{
				if (floorSwitch.InWorld && floorSwitch.PushSwitch(sim))
				{
					result = true;
					TombObjectComponent.ActivateTrigger(Trigger.ActivatedSomethingElse, sim);
				}
			}
		}
		FloorTrap[] objects2 = Queries.GetObjects<FloorTrap>(newPos, 1.45f);
		FloorTrap[] array2 = objects2;
		foreach (TombTrap tombTrap in array2)
		{
			if (tombTrap.InWorld && tombTrap.CoverByStatue(sim))
			{
				TombObjectComponent.ActivateTrigger(Trigger.ActivatedSomethingElse, sim);
			}
		}
		WallTrap[] objects3 = Queries.GetObjects<WallTrap>(newPos, 5f);
		WallTrap[] array3 = objects3;
		foreach (TombTrap tombTrap2 in array3)
		{
			Vector3 vector = tombTrap2.Position + tombTrap2.ForwardVector * 0.5f;
			if ((vector - newPos).LengthSqr() < 2.1025002f && tombTrap2.InWorld && tombTrap2.CoverByStatue(sim))
			{
				result = true;
				TombObjectComponent.ActivateTrigger(Trigger.ActivatedSomethingElse, sim);
			}
		}
		return result;
	}

	private bool CheckForEffectsOldPosition(Sim sim)
	{
		return CheckForEffectsOldPosition(Position, sim);
	}

	private bool CheckForEffectsOldPosition(Vector3 position, Sim sim)
	{
		bool result = false;
		if (mAbleToActivateSwitch)
		{
			FloorSwitch[] objects = Queries.GetObjects<FloorSwitch>(position, 0.8f);
			FloorSwitch[] array = objects;
			foreach (FloorSwitch floorSwitch in array)
			{
				if (floorSwitch.InWorld && floorSwitch.ReleaseSwitch(sim))
				{
					TombObjectComponent.ActivateTrigger(Trigger.ActivatedSomethingElse, sim);
				}
			}
		}
		return result;
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		writer.WriteBool(144544850u, mAbleToActivateSwitch);
		writer.WriteInt32(144544867u, (int)mMoveSetting);
		return base.ExportContent(resKeyTable, objIdTable, writer);
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		reader.ReadBool(144544850u, out mAbleToActivateSwitch, defaultValue: true);
		reader.ReadInt32(144544867u, out var value, kInvalidMoveSetting);
		if (value == kInvalidMoveSetting || !Enum.IsDefined(typeof(MoveSetting), value))
		{
			return false;
		}
		mMoveSetting = (MoveSetting)value;
		return base.ImportContent(resKeyTable, objIdTable, reader);
	}

	public void SaveWorldBuilderData()
	{
		WorldBuilderData.Set("PushableStatue", ObjectId, "AbleToActivateSwitch", mAbleToActivateSwitch, defaultValue: true);
		WorldBuilderData.Set("PushableStatue", ObjectId, "MoveSetting", mMoveSetting, MoveSetting.None);
	}

	public void LoadWorldBuilderData()
	{
		WorldBuilderData.SetKeyRemap(kWorldBuilderDataKeyRemap);
		WorldBuilderData.Get("PushableStatue", ObjectId, "AbleToActivateSwitch", ref mAbleToActivateSwitch);
		WorldBuilderData.Get("PushableStatue", ObjectId, "MoveSetting", ref mMoveSetting);
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		buildBuyInteractions.Add(BuildBuy_MakeSecretlyMovable.Singleton);
		buildBuyInteractions.Add(BuildBuy_MakeVisiblyMovable.Singleton);
		buildBuyInteractions.Add(BuildBuy_AllowSwitchActivation.Singleton);
		base.AddBuildBuyInteractions(buildBuyInteractions);
	}
}
