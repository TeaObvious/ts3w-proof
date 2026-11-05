// Original PC1.67 Sims3GameplaySystems.dll; complete original type export.
using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Careers;
using Sims3.Gameplay.CAS;
using Sims3.Gameplay.Controllers;
using Sims3.Gameplay.EventSystem;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.Objects.Electronics;
using Sims3.Gameplay.Situations;
using Sims3.Gameplay.Skills;
using Sims3.Gameplay.Socializing;
using Sims3.Gameplay.Tutorial;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;

namespace Sims3.Gameplay.Core;

public class VisitLot : Interaction<Sim, Lot>, ITakeSimToWorkLocation
{
	public class Definition : MetaInteractionScoredByVenue<Sim, Lot, VisitLot>
	{
		public bool bRingDoorbell = true;

		public ulong mSimFinderActorID;

		public bool mShouldTestTimeOfLastVisit = true;

		protected override string GetInteractionName(Sim a, Lot target, InteractionObjectPair interaction)
		{
			Callbox callbox = null;
			if (target.IsResidentialLot)
			{
				callbox = target.FindCallbox();
			}
			if (callbox != null || target.Household != null)
			{
				Household household = target.Household;
				NpcParty npcParty = NpcParty.TryGetNpcPartyOnLot(target);
				if (a.IsHuman && npcParty != null && npcParty.IsVisibleToPlayer())
				{
					string name = (npcParty.IsSimConsideredInvited(a) ? "AttendNpcParty" : "CrashNpcParty");
					return LocalizeString(a.IsFemale, name, npcParty.Host);
				}
				if (target.IsCoedDormitoryLot)
				{
					return LocalizeString("DormLot");
				}
				if (target.IsSororityLot)
				{
					return LocalizeString("SororityLot");
				}
				if (target.IsFraternityLot)
				{
					return LocalizeString("FratLot");
				}
				if (household != null)
				{
					if (a.IsADogSpecies || a.IsCat)
					{
						return LocalizeString("ScratchOnDoor");
					}
					if (household.IsFutureDescendantHousehold)
					{
						return LocalizeString("VisitDescendantHousehold", household.Name);
					}
					return LocalizeString("VisitHousehold", household.Name);
				}
				string name2 = target.Name;
				if (!string.IsNullOrEmpty(name2))
				{
					return Localization.LocalizeString(a.IsFemale, "Gameplay/Core/VisitCommunityLot:VisitNamedLot", name2);
				}
				return Localization.LocalizeString(a.IsFemale, "Gameplay/Core/VisitLot:VisitLot");
			}
			if (a.IsHuman)
			{
				return LocalizeString("RingBell");
			}
			return Localization.LocalizeSpeciesString(a, a.IsFemale, "Gameplay/Core/VisitLot:ScratchOnDoor");
		}

		protected override bool Test(Sim a, Lot target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
		{
			if (a.IsGreetedOnLot(target))
			{
				return false;
			}
			return target.CommonVisitTest(a, target, isAutonomous, mShouldTestTimeOfLastVisit, mSimFinderActorID, ref greyedOutTooltipCallback);
		}
	}

	private const string sLocalizationKey = "Gameplay/Core/VisitLot";

	private bool mbTakingSimToWorkLocation;

	private List<Sim> mFollowers;

	protected bool mMoveAwayfromDoor = true;

	public static readonly InteractionDefinition Singleton = new Definition();

	public bool IgnoreOutdoorHosts;

	public bool IgnoreCallbox;

	private static readonly ulong kIconNameHash = ResourceUtils.HashString64("hud_interactions_ringbell");

	protected static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/Core/VisitLot:" + name, parameters);
	}

	protected static string LocalizeString(bool isFemale, string name, params object[] parameters)
	{
		return Localization.LocalizeString(isFemale, "Gameplay/Core/VisitLot:" + name, parameters);
	}

	public void SetTakingSimToWork()
	{
		mbTakingSimToWorkLocation = true;
	}

	public bool IsTakingSimToWork()
	{
		return mbTakingSimToWorkLocation;
	}

	protected override bool Run()
	{
		mFollowers = Terrain.GoHereWith.GetFollowersFromSelectedObjects(Actor, SelectedObjects);
		if (mFollowers != null)
		{
			VisitLotWith.VisitWithDefinition visitWithDefinition = InteractionDefinition as VisitLotWith.VisitWithDefinition;
			if (visitWithDefinition == null)
			{
				GroupingSituation situationOfType = Actor.GetSituationOfType<GroupingSituation>();
				if (situationOfType != null)
				{
					if (!situationOfType.ConfirmLeaveGroup(Actor, "Gameplay/Situations/GroupingSituation:ContinueVisitAloneInteraction"))
					{
						return false;
					}
					mFollowers.Clear();
				}
			}
			if (mFollowers.Count == 0 && Actor.IsNPC && HorseManager.NpcShouldRideHorse(Actor, out var horse))
			{
				mFollowers.Add(horse);
			}
		}
		if (Autonomous)
		{
			Actor.LastAutonomousVisitDate = SimClock.CurrentTime();
		}
		Definition definition = InteractionDefinition as Definition;
		bool flag = false;
		bool flag2 = false;
		bool flag3 = true;
		Door door = (Target.IsResidentialLot ? Target.FindFrontDoor() : null);
		Callbox callbox = (Target.IsResidentialLot ? Target.FindCallbox() : null);
		bool flag4 = false;
		if (NpcParty.TryGetNpcPartyOnLot(Target) == null && (door != null || callbox != null))
		{
			if (Actor.LotCurrent != Target)
			{
				Route r = null;
				float minDistance = Lot.kMailboxRouteMin;
				float maxDistance = Lot.kMailboxRouteMax;
				if (Actor.IsHorse)
				{
					minDistance = Lot.kMailboxHorseRouteMin;
					maxDistance = Lot.kMailboxHorseRouteMax;
				}
				else if (mFollowers != null)
				{
					foreach (Sim mFollower in mFollowers)
					{
						if (mFollower.IsHorse)
						{
							minDistance = Lot.kMailboxHorseRouteMin;
							maxDistance = Lot.kMailboxHorseRouteMax;
							break;
						}
					}
				}
				Target.RouteToMailbox(Actor, minDistance, maxDistance, ref r, doRoute: false);
				if (r != null)
				{
					r.DoRouteFail = false;
					flag4 = Actor.DoRouteWithFollowers(r, mFollowers);
					Lot.ValidateFollowers(mFollowers);
				}
				if (r == null || !flag4 || Actor.LotCurrent != Target)
				{
					r = Actor.CreateRoute();
					Target.PlanToLotEx(r);
					Actor.RemoveExitReason(ExitReason.RouteFailed);
					flag4 = Actor.DoRouteWithFollowers(r, mFollowers);
					Lot.ValidateFollowers(mFollowers);
					if (!flag4 || Actor.LotCurrent != Target)
					{
						Actor.AddExitReason(ExitReason.FailedToStart);
						return false;
					}
				}
			}
			else if (Actor.LotCurrent == Actor.VirtualLotHome)
			{
				Lot virtualLotHome = Actor.VirtualLotHome;
				Actor.GreetSimOnLot(virtualLotHome);
				Route route = Actor.CreateRoute();
				virtualLotHome.PlanRouteIntoLot(route, planToLotAsFallback: false, Actor);
				if (route.PlanResult.Succeeded() && Actor.DoRouteWithFollowers(route, mFollowers))
				{
					SimArrivedInApartment(mFollowers, virtualLotHome);
					return true;
				}
				return false;
			}
			if (!Actor.IsSelectable && mPriority.Level == InteractionPriorityLevel.UserDirected)
			{
				LowerPriority();
				if (Actor.HasExitReason())
				{
					return false;
				}
			}
			Sim sim = null;
			if (!IgnoreOutdoorHosts)
			{
				sim = Target.CheckForHostWhenVisiting(Actor, Target, null, null);
			}
			if (sim != null)
			{
				InteractWithHostOutside(sim, mFollowers);
				if (!GroupingSituation.DoesGroupingSituationExistForFamily(Actor))
				{
					GroupingSituation.StartGroupingSitatuationWithFollowers(Actor, mFollowers);
				}
				RomanceVisibilityState.UpdateRomanceVisibilityForInvitation(Actor, Target);
				if (definition != null && definition.mSimFinderActorID != 0)
				{
					TriggerSimFound(definition.mSimFinderActorID);
				}
				return true;
			}
			Target.TimeOfLastVisit = SimClock.CurrentTime();
			if (!IgnoreCallbox && callbox != null && callbox.LotCurrent.Household != null && Actor.RouteToSlot(callbox, Slot.RoutingSlot_0))
			{
				flag = true;
				BeginCommodityUpdates();
				EnterStateMachine("callbox", "Enter", "x");
				AnimateSim("Exit");
				EndCommodityUpdates(succeeded: true);
				Sim sim2 = null;
				foreach (Sim sim3 in callbox.LotCurrent.Household.Sims)
				{
					if (sim3.IsAtHome && sim3.SimDescription.TeenOrAbove && !sim3.IsSleeping)
					{
						sim2 = sim3;
						break;
					}
				}
				if (sim2 != null)
				{
					PhoneService.PlaceCall(new CallboxPhoneCall(sim2, Actor.SimDescription, callbox), Callbox.kSimMinutesPhoneCallTimeout);
				}
				Actor.RouteToPointRadialRange(callbox.PositionOnFloor, 3f, 5f);
				flag3 = false;
			}
			else if (door != null)
			{
				if (Target.HasVirtualResidentialSlots)
				{
					CommonDoor frontDoor = Target.GetFrontDoor(eFrontDoorType.kFrontDoorTypeDefault);
					if (frontDoor != null)
					{
						flag2 = Actor.DoRoute(frontDoor.GetRouteThroughDoor(Actor));
						flag = flag2;
					}
					if (flag && callbox == null)
					{
						Tutorialette.TriggerLesson(Lessons.Callbox, null);
					}
				}
				else
				{
					List<Slot> list = ((door.GetOutdoorSide() != CommonDoor.tSide.Front) ? door.GetRoutingSlotsOnSide(CommonDoor.tSide.Back) : door.GetRoutingSlotsOnSide(CommonDoor.tSide.Front));
					if (!Actor.RouteToSlotListAndCheckInUse((IGameObject)door, list.ToArray(), out Slot _))
					{
						Actor.AddExitReason(ExitReason.FailedToStart);
						return false;
					}
					if (door is IElectronicGate)
					{
						IElectronicGate electronicGate = door as IElectronicGate;
						InteractionDefinition ringSingleton = electronicGate.GetRingSingleton();
						Actor.InteractionQueue.TryPushAsContinuation(this, ringSingleton, electronicGate);
						flag2 = true;
						flag = true;
					}
					else
					{
						flag = true;
						BeginCommodityUpdates();
						if (definition.bRingDoorbell)
						{
							if (Actor.IsHuman)
							{
								EnterStateMachine("ringDoorbell", "Enter", "x");
								AddOneShotScriptEventHandler(1001u, RingBell);
								AnimateSim("Exit");
							}
							else
							{
								Slot scratchSlotForDoorInActorsRoom = Sim.PetScratchAtDoor.GetScratchSlotForDoorInActorsRoom(Actor, door);
								if (!door.RouteSimToSlotWithoutPassingThroughDoor(Actor, scratchSlotForDoorInActorsRoom))
								{
									Actor.AddExitReason(ExitReason.FailedToStart);
									EndCommodityUpdates(succeeded: false);
									return false;
								}
								Actor.PlayPetDoorReact(door);
								door.BroadcastDoorbellEffects();
							}
						}
						EndCommodityUpdates(succeeded: true);
						flag2 = !mMoveAwayfromDoor || Target.MoveAwayFromDoor(Actor, Target);
					}
				}
			}
		}
		if (!flag)
		{
			Route route2 = Actor.CreateRoute();
			if (Target.PlanToLotEx(route2).Succeeded())
			{
				BeginCommodityUpdates();
				flag2 = Actor.DoRouteWithFollowers(route2, mFollowers);
				Lot.ValidateFollowers(mFollowers);
				EndCommodityUpdates(flag2);
				flag = Actor.LotCurrent == Target;
			}
		}
		if (flag)
		{
			SimArrivedAtLot(mFollowers);
			if (!GroupingSituation.DoesGroupingSituationExistForFamily(Actor))
			{
				GroupingSituation.StartGroupingSitatuationWithFollowers(Actor, mFollowers);
			}
			Sim.RemoveGoHomeInteractions(Actor, forceRemoveAll: false);
			if (mFollowers != null)
			{
				foreach (Sim mFollower2 in mFollowers)
				{
					Sim.RemoveGoHomeInteractions(mFollower2, forceRemoveAll: false);
				}
			}
			if (flag3)
			{
				RomanceVisibilityState.UpdateRomanceVisibilityForInvitation(Actor, Target);
			}
			if (definition != null && definition.mSimFinderActorID != 0)
			{
				TriggerSimFound(definition.mSimFinderActorID);
			}
		}
		return flag2;
	}

	private void TriggerSimFound(ulong simID)
	{
		SimDescription simDescription = SimDescription.Find(simID);
		if (simDescription != null && simDescription.CreatedSim != null && simDescription.CreatedSim.SkillManager.GetElement(SkillNames.SocialNetworking) is SocialNetworkingSkill socialNetworkingSkill)
		{
			socialNetworkingSkill.AddSimsMetViaSimFinderApp(1u);
			socialNetworkingSkill.AddPoints(SocialNetworkingSkill.SimFinderSocialNetworkingSkill);
		}
	}

	protected void InteractWithHostOutside(Sim host, List<Sim> followers)
	{
		VisitSituation.SetVisitToHostOutside(Actor, followers, host, mPriority, Autonomous, CancellableByPlayer);
		EventTracker.SendEvent(EventTypeId.kVisitLot, Actor, Target);
		Actor.LastVisitedSomeone = SimClock.CurrentTime();
	}

	protected virtual void SimArrivedAtLot(List<Sim> followers)
	{
		VisitSituation.SetVisitToVisitorHasRungDoorbell(Actor, followers);
		EventTracker.SendEvent(EventTypeId.kVisitLot, Actor, Target);
		Actor.LastVisitedSomeone = SimClock.CurrentTime();
	}

	protected void SimArrivedInApartment(List<Sim> followers, Lot lot)
	{
		if (VisitSituation.Create(Actor, lot) == null)
		{
			return;
		}
		VisitSituation.SetVisitToSocializing(Actor);
		Sim.RemoveGoHomeInteractions(Actor, forceRemoveAll: false);
		foreach (Sim follower in followers)
		{
			if (VisitSituation.Create(follower, lot) != null)
			{
				VisitSituation.SetVisitToSocializing(follower);
				Sim.RemoveGoHomeInteractions(follower, forceRemoveAll: false);
			}
		}
		EventTracker.SendEvent(EventTypeId.kVisitLot, Actor, Target);
		Actor.LastVisitedSomeone = SimClock.CurrentTime();
	}

	protected void RingBell(StateMachineClient sender, IEvent evt)
	{
		(Target.IsResidentialLot ? Target.FindFrontDoor() : null)?.RingBell();
	}

	public override ThumbnailKey GetIconKey()
	{
		return new ThumbnailKey(new ResourceKey(kIconNameHash, 796721156u, 0u), ThumbnailSize.Medium);
	}
}
