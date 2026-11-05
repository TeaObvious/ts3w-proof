/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System.Collections.Generic;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.ChildAndTeenUpdates;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Objects.Vehicles;
using Sims3.Gameplay.Pools;
using Sims3.Gameplay.Situations;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;
using Sims3.UI;

namespace Sims3.Gameplay.Scuba;

public sealed class GoHereAndScubaDiveWith : TerrainInteraction, ITransitionForcesGetOutIntoWater
{
	public sealed class Definition : InteractionDefinition<Sim, Terrain, GoHereAndScubaDiveWith>
	{
		protected override bool Test(Sim actor, Terrain target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
		{
			return true;
		}

		public override InteractionTestResult Test(ref InteractionInstanceParameters parameters, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
		{
			if (ScubaDiving.ScubaHitTest(parameters.Actor as Sim, parameters.Hit))
			{
				InteractionTestResult result;
				if (!InteractionDefinitionUtilities.IsPass(result = base.Test(ref parameters, ref greyedOutTooltipCallback)))
				{
					return result;
				}
				Lot lotAtPoint = LotManager.GetLotAtPoint(parameters.Hit.mPoint);
				Sim sim = parameters.Actor as Sim;
				if (lotAtPoint != null && sim != null && (sim.IsInGroupingSituation() || GetValidDivers(sim, lotAtPoint).Count > 0))
				{
					if (!ScubaDiving.ScubaHitTestTooltips(parameters.Actor as Sim, parameters.Hit, ref greyedOutTooltipCallback))
					{
						return InteractionTestResult.Def_TestFailed;
					}
					return InteractionTestResult.Pass;
				}
			}
			return InteractionTestResult.Def_TestFailed;
		}

		protected override string GetInteractionName(Sim actor, Terrain target, InteractionObjectPair iop)
		{
			if (actor.SimDescription.IsMatureMermaid)
			{
				return ScubaDiving.LocalizeString("MermaidDiveWith") + Localization.Ellipsis;
			}
			bool isDate = false;
			bool isPack = false;
			string empty = string.Empty;
			actor.IsInGroupOrPackSituation(out isPack);
			if (actor.IsInGroupOrDateSituation(out isDate))
			{
				return GroupingSituation.LocalizeString(name: isDate ? "ScubaDiveWithDate" : ((!isPack) ? "ScubaDiveWithGroup" : "ScubaDiveWithPack"), isFemale: actor.IsFemale, parameters: new object[0]);
			}
			return Localization.LocalizeString("Gameplay/Actors/Sim/ScubaDiveWith:InteractionName") + Localization.Ellipsis;
		}

		public string PublicGetInteractionName(Sim actor, Terrain target, InteractionObjectPair iop)
		{
			return GetInteractionName(actor, target, iop);
		}

		public override void PopulatePieMenuPicker(ref InteractionInstanceParameters parameters, out List<ObjectPicker.TabInfo> listObjs, out List<ObjectPicker.HeaderInfo> headers, out int NumSelectableRows)
		{
			Sim sim = parameters.Actor as Sim;
			if (!sim.IsInGroupingSituation())
			{
				Lot lotAtPoint = LotManager.GetLotAtPoint(parameters.Hit.mPoint);
				if (lotAtPoint != null)
				{
					NumSelectableRows = -1;
					PopulateSimPicker(ref parameters, out listObjs, out headers, GetValidDivers(sim, lotAtPoint), includeActor: false);
					return;
				}
			}
			listObjs = null;
			headers = null;
			NumSelectableRows = 0;
		}

		public static List<Sim> GetValidDivers(Sim sim, Lot diveLot)
		{
			List<Sim> list = new List<Sim>(sim.Household.AllActors);
			foreach (Sim item in sim.SocialComponent.GetRelationshipsWithLikingAbove(Terrain.GoHereWith.kLikingValueToBeEligibleForGoHereWith))
			{
				if (!list.Contains(item))
				{
					list.Add(item);
				}
			}
			GreyedOutTooltipCallback greyedOutTooltipCallback = null;
			int num = 0;
			while (num < list.Count)
			{
				Sim sim2 = list[num];
				if (sim2 == sim || sim2.SimInRabbitHolePosture || (sim2.LotCurrent != sim.LotCurrent && sim.GetDistanceToObject(sim2) > Terrain.GoHereWith.kMaxDistanceForGoHereWith) || !ScubaDiving.ScubaTest(sim2, diveLot) || !ScubaDiving.ScubaTestTooltips(sim2, diveLot, ref greyedOutTooltipCallback) || sim2.Service != null || (sim2.SimDescription.HasActiveRole && sim2.SimDescription.AssignedRole.TestForUserDirectedOnly()) || sim2.IsInGroupingSituation() || (OccultImaginaryFriend.TryGetOccultFromSim(sim2, out var occult) && !occult.IsReal) || Punishment.IsSimGrounded(sim2))
				{
					list.RemoveAt(num);
				}
				else
				{
					num++;
				}
			}
			return list;
		}
	}

	public static readonly InteractionDefinition Singleton = new Definition();

	public override ThumbnailKey GetIconKey()
	{
		return new ThumbnailKey(ResourceKey.CreatePNGKey("w_go_scuba_diving", ResourceUtils.ProductVersionToGroupId(ProductVersion.EP10)), ThumbnailSize.Large);
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
		InteractionDefinition interactionDefinition;
		if (num < kDistanceToDestinationSoSimWillBoat)
		{
			interactionDefinition = SwimHereWith.SwimWithSingleton;
		}
		else
		{
			if (Actor.Posture is SittingInBoat)
			{
				BoatHere boatHere = BoatHere.BoatSingleton.CreateInstanceWithCallbacks(Target, Actor, GetPriority(), Autonomous, CancellableByPlayer, null, Completed, null) as BoatHere;
				boatHere.SetDestination(Destination, Terrain.GoHere.DestinationType.OnSeaWater);
				boatHere.Hit = Hit;
				boatHere.SelectedObjects = SelectedObjects;
				return Actor.InteractionQueue.TryPushAsContinuation(this, boatHere);
			}
			interactionDefinition = BoatHereWith.BoatHereSingleton;
		}
		Terrain.GoHereWith goHereWith = interactionDefinition.CreateInstanceWithCallbacks(Target, Actor, GetPriority(), Autonomous, CancellableByPlayer, null, Completed, null) as Terrain.GoHereWith;
		goHereWith.SelectedObjects = SelectedObjects;
		goHereWith.SetDestination(Destination, Terrain.GoHere.DestinationType.OnSeaWater);
		goHereWith.Hit = Hit;
		return Actor.InteractionQueue.TryPushAsContinuation(this, goHereWith);
	}

	private void Completed(Sim s, float x)
	{
		List<Sim> followersFromSelectedObjects = Terrain.GoHereWith.GetFollowersFromSelectedObjects(Actor, SelectedObjects);
		foreach (Sim item in followersFromSelectedObjects)
		{
			InteractionInstance entry = ScubaDive.Singleton.CreateInstance(item, item, GetPriority(), Autonomous, CancellableByPlayer);
			item.InteractionQueue.AddNext(entry);
		}
		InteractionInstance entry2 = ScubaDive.Singleton.CreateInstance(Actor, Actor, GetPriority(), Autonomous, CancellableByPlayer);
		Actor.InteractionQueue.AddNext(entry2);
	}
}
