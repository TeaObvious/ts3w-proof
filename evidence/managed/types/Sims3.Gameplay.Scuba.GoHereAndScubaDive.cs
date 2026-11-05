/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System.Collections.Generic;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Objects.Vehicles;
using Sims3.Gameplay.Pools;
using Sims3.Gameplay.Skills;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;

namespace Sims3.Gameplay.Scuba;

public sealed class GoHereAndScubaDive : TerrainInteraction, ITransitionForcesGetOutIntoWater
{
	public sealed class Definition : InteractionDefinition<Sim, Terrain, GoHereAndScubaDive>
	{
		private string mMenuPath = "";

		private bool mRetroOutfit;

		public Definition()
		{
		}

		public Definition(string menuPath, bool retro)
		{
			mRetroOutfit = retro;
			mMenuPath = menuPath;
		}

		public override string[] GetPath(bool isFemale)
		{
			if (mMenuPath == "")
			{
				return new string[0];
			}
			return new string[1] { mMenuPath };
		}

		protected override bool Test(Sim actor, Terrain target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
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

		protected override string GetInteractionName(Sim actor, Terrain target, InteractionObjectPair iop)
		{
			return ScubaDiving.SharedGetInteractionName(mMenuPath, mRetroOutfit, actor);
		}

		protected override InteractionInstance CreateInstance(ref InteractionInstanceParameters parameters)
		{
			GoHereAndScubaDive goHereAndScubaDive = base.CreateInstance(ref parameters) as GoHereAndScubaDive;
			if (mRetroOutfit)
			{
				goHereAndScubaDive.SetRetroOutfit();
			}
			return goHereAndScubaDive;
		}

		protected override void AddInteractions(InteractionObjectPair iop, Sim actor, Terrain target, List<InteractionObjectPair> results)
		{
			if (!actor.SimDescription.IsMatureMermaid && !actor.IsEP11Bot && actor.SkillManager.GetSkillLevel(SkillNames.ScubaDiving) == SkillManager.GetMaximumSupportedSkillLevel(SkillNames.ScubaDiving))
			{
				string menuPath = Localization.LocalizeString("Gameplay/Actors/Sim/ScubaDive:InteractionName") + Localization.Ellipsis;
				results.Add(new InteractionObjectPair(new Definition(menuPath, retro: true), target));
				results.Add(new InteractionObjectPair(new Definition(menuPath, retro: false), target));
			}
			else
			{
				results.Add(iop);
			}
		}
	}

	public static readonly InteractionDefinition Singleton = new Definition();

	private bool mRetroOutfit;

	public override ThumbnailKey GetIconKey()
	{
		return new ThumbnailKey(ResourceKey.CreatePNGKey("w_go_scuba_diving", ResourceUtils.ProductVersionToGroupId(ProductVersion.EP10)), ThumbnailSize.Large);
	}

	public void SetRetroOutfit()
	{
		mRetroOutfit = true;
	}

	public void SetDestination(Vector3 dest)
	{
		Destination = dest;
	}

	protected override bool Run()
	{
		float num = (Actor.Position - Destination).LengthSqr();
		float kDistanceToDestinationSoSimWillBoat = Boat.kDistanceToDestinationSoSimWillBoat;
		kDistanceToDestinationSoSimWillBoat *= kDistanceToDestinationSoSimWillBoat;
		InteractionDefinition interactionDefinition = ((!(num < kDistanceToDestinationSoSimWillBoat) && !Actor.SimDescription.IsMatureMermaid) ? BoatHere.BoatSingleton : SwimHere.Singleton);
		Terrain.GoHere goHere = interactionDefinition.CreateInstanceWithCallbacks(Target, Actor, GetPriority(), Autonomous, CancellableByPlayer, null, Completed, null) as Terrain.GoHere;
		goHere.SetDestination(Destination, Terrain.GoHere.DestinationType.OnSeaWater);
		return Actor.InteractionQueue.TryPushAsContinuation(this, goHere);
	}

	private void Completed(Sim sim, float x)
	{
		ScubaDive scubaDive = ScubaDive.Singleton.CreateInstance(Actor, Actor, GetPriority(), Autonomous, CancellableByPlayer) as ScubaDive;
		if (mRetroOutfit)
		{
			scubaDive.SetRetroOutfit();
		}
		Actor.InteractionQueue.AddNext(scubaDive);
	}
}
