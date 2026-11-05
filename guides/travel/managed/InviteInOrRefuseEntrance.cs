// Original PC1.67 Sims3GameplaySystems.dll; complete original type export.
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.InteractionsShared;
using Sims3.Gameplay.Socializing;
using Sims3.SimIFace;

namespace Sims3.Gameplay.Situations;

public class InviteInOrRefuseEntrance : Interaction<Sim, Sim>
{
	[DoesntRequireTuning]
	public sealed class Definition : InteractionDefinition<Sim, Sim, InviteInOrRefuseEntrance>
	{
		protected override bool Test(Sim a, Sim target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
		{
			if (a.IsSelectable && isAutonomous)
			{
				return false;
			}
			return true;
		}
	}

	public static readonly Definition Singleton = new Definition();

	public override void ConfigureInteraction()
	{
		Hidden = true;
		base.ConfigureInteraction();
	}

	public override string GetInteractionName()
	{
		return "Invite In or Refuse Entrance";
	}

	protected override bool Run()
	{
		Relationship relationship = Relationship.Get(Actor, Target, createIfNone: false);
		InteractionInstance interactionInstance = null;
		InteractionDefinition interactionDefinition;
		if (relationship != null && relationship.LTR.Liking < VisitSituation.kLTRThresholdForInviteIn)
		{
			interactionDefinition = ((!Target.IsHuman) ? ShooNeighborPet.Singleton : new NotAutonomousForSelectableSims("Refuse Entrance", new string[0], null, initialGreet: false));
		}
		else if (Target.IsHuman)
		{
			interactionDefinition = new NotAutonomousForSelectableSims("Invite In", new string[0], null, initialGreet: false);
		}
		else
		{
			interactionDefinition = new NotAutonomousForSelectableSims("Pet On Floor Auto Accept", new string[0], null, initialGreet: false);
			VisitSituation.OnInvitedIn(Target);
		}
		if (interactionDefinition != null)
		{
			interactionInstance = interactionDefinition.CreateInstance(Target, Actor, GetPriority(), Autonomous, CancellableByPlayer);
		}
		if (interactionInstance != null)
		{
			return Actor.InteractionQueue.TryPushAsContinuation(this, interactionInstance);
		}
		return false;
	}
}
