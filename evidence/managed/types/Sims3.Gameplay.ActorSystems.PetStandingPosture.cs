// Original PC 1.67 package assembly; actual ILSpy rendering, not a reconstructed implementation.
// Analyst note: selected post-load/wait/actor and posture consumers are interpreted in
// guides/sacs/managed-client-postload-and-waits.md. CIL and MethodDef identities take precedence.
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.SimIFace;

namespace Sims3.Gameplay.ActorSystems;

public class PetStandingPosture : Sim.StandingPosture
{
	[TunableComment("Pets will switch back to the sitting on ground posture based on these tunable values.")]
	[Tunable]
	private static PostureSwitcherTuning kPostureSwitcherTuning = new PostureSwitcherTuning();

	private PostureSwitcher mPostureSwitcher;

	private PetStandingPosture()
	{
	}

	public PetStandingPosture(Sim actor)
		: base(actor)
	{
		if ((actor.SimDescription.IsADogSpecies || actor.SimDescription.IsCat) && actor.SimDescription.TeenOrAbove)
		{
			mPostureSwitcher = new PostureSwitcher(mActor, this, kPostureSwitcherTuning);
			mPostureSwitcher.OnSwitchPosture += SwitchPosture;
		}
	}

	public override BridgeOrigin Idle()
	{
		if (mPostureSwitcher != null)
		{
			mPostureSwitcher.ResetMonitor();
		}
		return base.Idle();
	}

	private void SwitchPosture()
	{
		InteractionInstance interactionInstance = PetSittingOnGroundPosture.PetSitOnGround.Singleton.CreateInstance(mActor, mActor, mActor.InheritedPriority(), isAutonomous: true, cancellableByPlayer: false);
		interactionInstance.Hidden = true;
		mActor.InteractionQueue.Add(interactionInstance);
	}

	public override void OnExitPosture()
	{
		if (mPostureSwitcher != null)
		{
			mPostureSwitcher.StopMonitoring();
		}
		base.OnExitPosture();
	}

	public override Posture OnReset(IGameObject objectBeingReset)
	{
		mActor.PetSittingOnGround.DoReset();
		if (mPostureSwitcher != null)
		{
			if (Sims3.SimIFace.Objects.IsValid(mActor.ObjectId))
			{
				mPostureSwitcher.ResetMonitor();
			}
			else
			{
				mPostureSwitcher.StopMonitoring();
			}
		}
		return base.OnReset(objectBeingReset);
	}
}
