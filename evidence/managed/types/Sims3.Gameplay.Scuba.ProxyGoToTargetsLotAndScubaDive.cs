/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Objects.Vehicles;
using Sims3.SimIFace;

namespace Sims3.Gameplay.Scuba;

public sealed class ProxyGoToTargetsLotAndScubaDive : Interaction<Sim, Lot>, ITransitionForcesGetOutIntoWater
{
	public sealed class Definition : InteractionDefinition<Sim, Lot, ProxyGoToTargetsLotAndScubaDive>
	{
		protected override bool Test(Sim actor, Lot target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
		{
			return true;
		}

		public override InteractionTestResult Test(ref InteractionInstanceParameters parameters, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
		{
			if (ScubaDiving.ScubaHitTest(parameters.Actor as Sim, parameters.Hit))
			{
				InteractionTestResult result;
				if (InteractionDefinitionUtilities.IsPass(result = base.Test(ref parameters, ref greyedOutTooltipCallback)))
				{
					if (!ScubaDiving.ScubaHitTestTooltips(parameters.Actor as Sim, parameters.Hit, ref greyedOutTooltipCallback))
					{
						return InteractionTestResult.Def_TestFailed;
					}
					return InteractionTestResult.Pass;
				}
				return result;
			}
			return InteractionTestResult.Def_TestFailed;
		}

		protected override string GetInteractionName(Sim actor, Lot target, InteractionObjectPair iop)
		{
			return ScubaDiving.SharedGetInteractionName("", retro: false, actor);
		}
	}

	public static readonly InteractionDefinition Singleton = new Definition();

	public override ThumbnailKey GetIconKey()
	{
		return new ThumbnailKey(ResourceKey.CreatePNGKey("w_go_scuba_diving", ResourceUtils.ProductVersionToGroupId(ProductVersion.EP10)), ThumbnailSize.Large);
	}

	protected override bool Run()
	{
		GoHereAndScubaDive goHereAndScubaDive = GoHereAndScubaDive.Singleton.CreateInstance(Terrain.Singleton, Actor, GetPriority(), Autonomous, CancellableByPlayer) as GoHereAndScubaDive;
		Vector3 centerPosition = Target.GetCenterPosition();
		centerPosition.y = World.GetLevelHeight(centerPosition.x, centerPosition.z, 1);
		goHereAndScubaDive.SetDestination(centerPosition);
		goHereAndScubaDive.Hit = new GameObjectHit(GameObjectHitType.WaterSea);
		goHereAndScubaDive.Hit.mPoint = centerPosition;
		return Actor.InteractionQueue.TryPushAsContinuation(this, goHereAndScubaDive);
	}
}
