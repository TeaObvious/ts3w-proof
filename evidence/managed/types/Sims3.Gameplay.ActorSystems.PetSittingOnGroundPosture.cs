// Original PC 1.67 package assembly; actual ILSpy rendering, not a reconstructed implementation.
// Analyst note: selected post-load/wait/actor and posture consumers are interpreted in
// guides/sacs/managed-client-postload-and-waits.md. CIL and MethodDef identities take precedence.
using System;
using System.Collections.Generic;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ThoughtBalloons;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;
using Sims3.SimIFace.Enums;
using Sims3.SimIFace.SACS;

namespace Sims3.Gameplay.ActorSystems;

public class PetSittingOnGroundPosture : Posture
{
	public sealed class PetStandFromSittingOnGround : Interaction<Sim, Sim>
	{
		private sealed class Definition : InteractionDefinition<Sim, Sim, PetStandFromSittingOnGround>
		{
			protected override bool Test(Sim a, Sim target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (a.Posture != null)
				{
					return a.Posture.Satisfies(CommodityKind.SittingOnGround, target);
				}
				return false;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			if (Actor.Posture is PetSittingOnGroundPosture petSittingOnGroundPosture)
			{
				return petSittingOnGroundPosture.Stand();
			}
			return false;
		}
	}

	public sealed class PetSitOnGround : Interaction<Sim, Sim>
	{
		private sealed class Definition : InteractionDefinition<Sim, Sim, PetSitOnGround>
		{
			protected override bool Test(Sim a, Sim target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (isAutonomous && a.Posture != null && !a.Posture.Satisfies(CommodityKind.SittingOnGround, a))
				{
					return a == target;
				}
				return false;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			SitOnGround(Actor);
			Actor.Posture = Actor.PetSittingOnGround;
			return true;
		}
	}

	[TunableComment("Pets will switch back to the standing posture based on these tunable values.")]
	[Tunable]
	private static PostureSwitcherTuning kPostureSwitcherTuning = new PostureSwitcherTuning();

	protected Sim mActor;

	private PostureSwitcher mPostureSwitcher;

	public override IGameObject Container => mActor;

	public override string Name => Localization.LocalizeString("Gameplay/Actors/Postures:PetSittingOnGround");

	public override bool Implicit => true;

	public override bool PerformIdleLogic => true;

	private PetSittingOnGroundPosture()
	{
	}

	public PetSittingOnGroundPosture(Sim actor)
		: base(null)
	{
		mActor = actor;
		AcquireStateMachine();
		mPostureSwitcher = new PostureSwitcher(mActor, this, kPostureSwitcherTuning);
		mPostureSwitcher.OnSwitchPosture += SwitchPosture;
	}

	private void AcquireStateMachine()
	{
		CurrentStateMachine = GetStateMachine(mActor);
		CurrentStateMachine.AddPersistentStateEnteredEventHandler("idle", ChooseIdle);
		CurrentStateMachine.EnterState("x", "sitting_on_ground");
	}

	private static StateMachineClient GetStateMachine(Sim s)
	{
		StateMachineClient stateMachineClient = StateMachineClient.Acquire(s.ObjectId, "pet_sitting_on_ground_idle", AnimationPriority.kAPDefault, allowYield: false);
		stateMachineClient.SetActor("x", s);
		return stateMachineClient;
	}

	private void DisposeStateMachine()
	{
		if (CurrentStateMachine != null)
		{
			CurrentStateMachine.Dispose();
			CurrentStateMachine = null;
		}
	}

	~PetSittingOnGroundPosture()
	{
		Dispose(fromDtor: true);
	}

	public void Dispose()
	{
		Dispose(fromDtor: false);
	}

	private void Dispose(bool fromDtor)
	{
		DisposeStateMachine();
		if (!fromDtor)
		{
			GC.SuppressFinalize(this);
		}
	}

	public override BridgeOrigin Idle()
	{
		base.Idle();
		mPostureSwitcher.ResetMonitor();
		CurrentStateMachine.RequestState(yield: true, "x", "idle", DriverRequestFlags.kNoRedundancyProtection);
		return new BridgeOrigin(CurrentStateMachine, "x", true, "sitting_on_ground");
	}

	public void ChooseIdle(StateMachineClient smc, IEvent evt)
	{
		GetNextPostureIdle(mActor, GetSacsPostureParameter(), IdleManager.sPetSittingOnGroundIdleAnimations, out var idleName, out var thoughtBalloon, out var thoughtBalloonAxis, out var _, out var productVersion);
		mActor.DisplayIdleThoughtBalloon(thoughtBalloon, thoughtBalloonAxis, ThoughtBalloonPriority.Low, isScreamBalloon: false);
		if (!string.IsNullOrEmpty(idleName))
		{
			smc.SetParameter("AnimationName", idleName);
			smc.SetProductVersion(productVersion);
		}
	}

	private void SwitchPosture()
	{
		mActor.InteractionQueue.Add(GetStandingTransition());
	}

	public bool Stand()
	{
		mActor.OverlayComponent.StopAllOverlays();
		AnimationUtil.SetClipInterruptible(mActor, AnimationPriority.kAPNormal, bInterruptible: false);
		StateMachineClient stateMachine = GetStateMachine(mActor);
		stateMachine.EnterState("x", "sit_up_from_ground");
		stateMachine.RequestState("x", "exit");
		stateMachine.Dispose();
		mActor.Posture = mActor.Standing;
		return mActor.HasExitReason();
	}

	public static void SitOnGround(Sim s)
	{
		s.OverlayComponent.StopAllOverlays();
		AnimationUtil.SetClipInterruptible(s, AnimationPriority.kAPNormal, bInterruptible: false);
		StateMachineClient stateMachine = GetStateMachine(s);
		stateMachine.EnterState("x", "sit_on_ground");
		stateMachine.RequestState("x", "exit");
		stateMachine.Dispose();
	}

	public override void OnExitPosture()
	{
		mPostureSwitcher.StopMonitoring();
		base.OnExitPosture();
	}

	protected override void PopulateInteractions()
	{
	}

	public override bool ReactionAllowed()
	{
		return true;
	}

	public override float Satisfaction(CommodityKind condition, IGameObject target)
	{
		if (condition == CommodityKind.SittingOnGround)
		{
			return 1f;
		}
		return 0f;
	}

	public override InteractionInstance GetStandingTransition()
	{
		PetStandFromSittingOnGround petStandFromSittingOnGround = new PetStandFromSittingOnGround();
		InteractionObjectPair iop = new InteractionObjectPair(PetStandFromSittingOnGround.Singleton, mActor);
		InteractionInstanceParameters parameters = new InteractionInstanceParameters(iop, mActor, mActor.InheritedPriority(), autonomous: false, cancellableByPlayer: false);
		petStandFromSittingOnGround.Init(ref parameters);
		petStandFromSittingOnGround.Hidden = true;
		return petStandFromSittingOnGround;
	}

	public override ScriptPosture GetSacsPostureParameter()
	{
		return ScriptPosture.SittingOnGround;
	}

	public override void Shoo(bool yield, List<Sim> shooedSims)
	{
		throw new Exception("The method or operation is not implemented.");
	}

	public override Posture OnReset(IGameObject objectBeingReset)
	{
		return mActor.Standing;
	}

	public void DoReset()
	{
		DisposeStateMachine();
		if (Sims3.SimIFace.Objects.IsValid(mActor.ObjectId))
		{
			AcquireStateMachine();
		}
		mPostureSwitcher.StopMonitoring();
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
		return false;
	}

	public override void PlayScheduledIdle(IdleAnimationData idleAnimData, string jazzStateNamePrefix, bool isDistressIdle)
	{
		if (idleAnimData is BuffIdleAnimationData buffIdleAnimationData)
		{
			string buffIdleClipForPosture = mActor.IdleManager.GetBuffIdleClipForPosture(buffIdleAnimationData.BuffInstance.BuffGuid, GetSacsPostureParameter(), out var productVersion);
			if (!string.IsNullOrEmpty(buffIdleClipForPosture))
			{
				CurrentStateMachine.SetProductVersion(productVersion);
				CurrentStateMachine.SetParameter("AnimationName", buffIdleClipForPosture);
				CurrentStateMachine.RequestState("x", "CustomIdle");
			}
		}
	}
}
