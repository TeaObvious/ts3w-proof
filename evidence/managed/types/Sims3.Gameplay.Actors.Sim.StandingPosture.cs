// Original PC 1.67 package assembly; actual ILSpy rendering, not a reconstructed implementation.
// Analyst note: selected post-load/wait/actor and posture consumers are interpreted in
// guides/sacs/managed-client-postload-and-waits.md. CIL and MethodDef identities take precedence.
// Selected complete nested type from the original Sim rendering. Outer type abbreviated.
namespace Sims3.Gameplay.Actors;
public partial class Sim
{
	public class StandingPosture : Posture, IDisposable
	{
		protected Sim mActor;

		public override bool PerformIdleLogic => true;

		public override IGameObject Container => mActor;

		public override string Name => Localization.LocalizeString("Gameplay/Actors/Postures:Standing");

		public override bool Implicit => true;

		protected StandingPosture()
		{
		}

		public StandingPosture(Sim actor)
			: base(null)
		{
			mActor = actor;
		}

		public void SetIdleCallbacks()
		{
			if (CurrentStateMachine != null)
			{
				CurrentStateMachine.AddPersistentStateEnteredEventHandler("custom_idle", mActor.PlayCustomIdle);
				CurrentStateMachine.AddPersistentStateEnteredEventHandler("dynamic_idle", mActor.PlayDynamicIdle);
				CurrentStateMachine.AddPersistentStateEnteredEventHandler("dynamic_idle_exited", mActor.ExitDynamicIdle);
				CurrentStateMachine.AddPersistentStateEnteredEventHandler("Entering NonDistress", mActor.IdleManager.OnEnterNonDistressIdle);
				CurrentStateMachine.AddPersistentStateEnteredEventHandler("Exiting NonDistress", mActor.IdleManager.OnExitNonDistressIdle);
				CurrentStateMachine.AddPersistentStateEnteredEventHandler("Entering Distress", mActor.IdleManager.OnEnterDistressIdle);
				OnAutonomyLODChanged(mActor.Autonomy.IsSufficientlyOnScreenForHighLODSimulation);
			}
		}

		public void StartHighLODIdle()
		{
			if (CurrentStateMachine == null)
			{
				CurrentStateMachine = mActor.SacsInitStateMachineClient("idle", "standing");
				SetDefaultIdleAnim();
				SetIdleCallbacks();
			}
		}

		public void OnAutonomyLODChanged(bool highLOD)
		{
			if (CurrentStateMachine != null)
			{
				CurrentStateMachine.SetParameter("highLOD", highLOD);
				if (highLOD)
				{
					CurrentStateMachine.AddPersistentStateEnteredEventHandler("standing_idle", mActor.ChooseStandingIdle);
				}
				else
				{
					CurrentStateMachine.RemoveEventHandler(mActor.ChooseStandingIdle);
				}
			}
		}

		public void StartLowLODIdle()
		{
			if (CurrentStateMachine != null)
			{
				CurrentStateMachine.RemoveAllEventHandlers();
				BridgeOrigin bridgeOrigin = mActor.BridgeOrigin;
				if (bridgeOrigin == null)
				{
					CurrentStateMachine.Dispose();
				}
				CurrentStateMachine = null;
			}
		}

		public override bool ReactionAllowed()
		{
			return mActor.IsStandingIdle;
		}

		public void SetDefaultIdleAnim()
		{
			if (CurrentStateMachine != null)
			{
				switch (mActor.SimDescription.Species)
				{
				case CASAgeGenderFlags.Horse:
				case CASAgeGenderFlags.Cat:
				case CASAgeGenderFlags.Dog:
				case CASAgeGenderFlags.LittleDog:
					CurrentStateMachine.SetParameter("AnimationName", "a_idle_stand_breathe_x");
					CurrentStateMachine.SetProductVersion(ProductVersion.EP5);
					break;
				case CASAgeGenderFlags.Deer:
					CurrentStateMachine.SetParameter("AnimationName", "ab_breathe1_x");
					CurrentStateMachine.SetProductVersion(ProductVersion.EP5);
					break;
				case CASAgeGenderFlags.Raccoon:
					CurrentStateMachine.SetParameter("AnimationName", "ac_idle_stand_breathe_x");
					CurrentStateMachine.SetProductVersion(ProductVersion.EP5);
					break;
				}
				CurrentStateMachine.SetParameter("isFairy", mActor.SimDescription.IsFairy);
			}
		}

		protected override void PopulateInteractions()
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
			return mActor.SimDescription.ToddlerOrAbove;
		}

		public override float Satisfaction(CommodityKind condition, IGameObject target)
		{
			switch (condition)
			{
			case CommodityKind.Standing:
				return 1f;
			case CommodityKind.ToddlerCanExitPosture:
				return 1f;
			case CommodityKind.TargetInInventory:
				return 1f;
			case CommodityKind.ScoredByTargetInteraction:
				return 1f;
			case CommodityKind.PreferIfCurrentPosture:
				if (mActor.Posture is StandingPosture)
				{
					return 1f;
				}
				return 0f;
			default:
				return 0f;
			}
		}

		public override bool Satisfies(PreconditionOptions options, IGameObject target, CommodityKind requiredCheck)
		{
			if (options == null && requiredCheck == CommodityKind.None)
			{
				return true;
			}
			return base.Satisfies(options, target, requiredCheck);
		}

		public override InteractionInstance GetStandingTransition()
		{
			return null;
		}

		public override InteractionInstance GetTransition(InteractionInstance interaction)
		{
			return Posture.FindTransitionInteraction(interaction, CommodityKind.None);
		}

		public override BridgeOrigin Idle()
		{
			base.Idle();
			if (CurrentStateMachine == null)
			{
				if (mActor != null)
				{
					Animation.StopAllAnimation(mActor.ObjectId);
				}
				return null;
			}
			try
			{
				CurrentStateMachine.RequestState(yield: true, "x", "standing_idle", DriverRequestFlags.kNoRedundancyProtection);
			}
			catch (SacsErrorException)
			{
				CurrentStateMachine.Reset();
				CurrentStateMachine.EnterState("x", "standing_idle");
			}
			return new BridgeOrigin(CurrentStateMachine, "x", true, "standing");
		}

		public override ScriptPosture GetSacsPostureParameter()
		{
			return ScriptPosture.Standing;
		}

		public override void Shoo(bool yield, List<Sim> shooedSims)
		{
			if (yield)
			{
				mActor.RouteTurnToFace(FindAveragePosition(shooedSims));
				mActor.PlaySoloAnimation("a_neutral_shoo_x", yield: true);
				mActor.LoopIdle();
			}
		}

		public override Posture OnReset(IGameObject objectBeingReset)
		{
			if (!Sims3.SimIFace.Objects.IsValid(mActor.ObjectId))
			{
				return null;
			}
			bool flag = CurrentStateMachine != null;
			StartLowLODIdle();
			if (flag)
			{
				StartHighLODIdle();
			}
			return null;
		}

		public override void PlayScheduledIdle(IdleAnimationData idleAnimData, string jazzStateNamePrefix, bool isDistressIdle)
		{
			if (mActor.IsStandingIdle)
			{
				string stateName = jazzStateNamePrefix + " - " + idleAnimData.GetJazzStateNameSuffix();
				mActor.IdleManager.StopFacialIdle(isJazzGraph: true);
				CurrentStateMachine.RequestState(yield: true, "x", stateName, DriverRequestFlags.kShortest);
			}
		}

		public override string ToString()
		{
			return "Standing Posture";
		}

		~StandingPosture()
		{
			Dispose(fromDtor: true);
		}

		public void Dispose()
		{
			Dispose(fromDtor: false);
		}

		private void Dispose(bool fromDtor)
		{
			if (CurrentStateMachine != null)
			{
				CurrentStateMachine.RemoveAllEventHandlers();
				CurrentStateMachine.Dispose();
				CurrentStateMachine = null;
			}
			if (!fromDtor)
			{
				GC.SuppressFinalize(this);
			}
		}
	}
}
