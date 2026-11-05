// Original PC 1.67 Sims3GameplaySystems.dll; actual complete ILSpy type export.
using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.CAS;
using Sims3.Gameplay.Controllers;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.EventSystem;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.InteractionsShared;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Objects;
using Sims3.Gameplay.Objects.Electronics;
using Sims3.Gameplay.Seasons;
using Sims3.Gameplay.Services;
using Sims3.Gameplay.Skills;
using Sims3.Gameplay.Socializing;
using Sims3.Gameplay.ThoughtBalloons;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;
using Sims3.SimIFace.CustomContent;
using Sims3.SimIFace.Enums;
using Sims3.SimIFace.RouteDestinations;
using Sims3.UI;
using Sims3.UI.Hud;

namespace Sims3.Gameplay.Abstracts;

public abstract class Door : CommonDoor, IHasPortalComponent, INotHauntable, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent, ICanHavePuddlesUnderMe
{
	public enum tState : uint
	{
		Opened,
		Closed,
		Opening,
		Closing
	}

	[Persistable]
	protected class DoorOpenState
	{
		public AlarmHandle mAlarm = AlarmHandle.kInvalidHandle;

		public int mUseCount;

		public tSide mFirstSideOpened;
	}

	[Version(2)]
	public class DoorPortalComponent : PortalComponent
	{
		private Door OwnerDoor;

		public override bool CanUseUmbrella
		{
			get
			{
				if (!(Owner is GateSingle) && !(Owner is GateDouble))
				{
					return Owner is IElectronicGate;
				}
				return true;
			}
		}

		protected override bool AddToUseListDuringTraversal => true;

		protected override bool RemoveFromUseListAfterTraversal => true;

		public DoorPortalComponent()
		{
		}

		public DoorPortalComponent(GameObject o)
			: base(o)
		{
			OwnerDoor = o as Door;
		}

		public override PortalObjectType GetPortalObjectType()
		{
			return PortalObjectType.RouteThroughPortalObject;
		}

		public override uint GetNumLanes()
		{
			return (uint)OwnerDoor.GetNumDoors();
		}

		public override Slot[] GetSlotsForLaneIndex(uint laneIndex)
		{
			return new Slot[2]
			{
				Slots.Hash("RoutingSlot_Door" + laneIndex + "_Front"),
				Slots.Hash("RoutingSlot_Door" + laneIndex + "_Rear")
			};
		}

		public override List<Slot> GetStartSlotsForApproachingSim(Sim s, Vector3 preferredPos, ref bool preferredLaneSelected)
		{
			tSide doorSide = OwnerDoor.GetDoorSide(preferredPos);
			return OwnerDoor.GetRoutingSlotsOnSide(doorSide);
		}

		public override bool IsFullyBlocked(Sim sim)
		{
			if (!OwnerDoor.IsUpgrading)
			{
				return base.IsFullyBlocked(sim);
			}
			return true;
		}

		protected bool IsPortalLockedForSim(Sim sim)
		{
			return (OwnerDoor.IsAllowedThrough(sim.RoomId, OwnerDoor.GetAdjoiningRoom(sim.RoomId), sim) & PortalRestriction.DoorRestriction) == PortalRestriction.DoorRestriction;
		}

		public override bool OnApproachingPortalObject(Sim sim)
		{
			if (IsPortalLockedForSim(sim))
			{
				return false;
			}
			return true;
		}

		public override void OnLaneLocked(Sim s, LaneInfo lane)
		{
			if (!IsPortalLockedForSim(s))
			{
				if (lane.mLaneSlots[0] == RoutingSlots.Door0_Front)
				{
					OwnerDoor.Open(0u, tSide.Front);
				}
				if (lane.mLaneSlots[0] == RoutingSlots.Door0_Rear)
				{
					OwnerDoor.Open(0u, tSide.Back);
				}
				if (lane.mLaneSlots[0] == RoutingSlots.Door1_Front)
				{
					OwnerDoor.Open(1u, tSide.Front);
				}
				if (lane.mLaneSlots[0] == RoutingSlots.Door1_Rear)
				{
					OwnerDoor.Open(1u, tSide.Back);
				}
			}
		}

		public override void OnLaneUnlocked(Sim s, LaneInfo lane)
		{
			if (lane.mLaneSlots[0] == RoutingSlots.Door0_Front)
			{
				OwnerDoor.Close(0u, tSide.Front);
			}
			if (lane.mLaneSlots[0] == RoutingSlots.Door0_Rear)
			{
				OwnerDoor.Close(0u, tSide.Back);
			}
			if (lane.mLaneSlots[0] == RoutingSlots.Door1_Front)
			{
				OwnerDoor.Close(1u, tSide.Front);
			}
			if (lane.mLaneSlots[0] == RoutingSlots.Door1_Rear)
			{
				OwnerDoor.Close(1u, tSide.Back);
			}
		}

		public override void OnAllLanesUnlocked()
		{
			OwnerDoor.ForceClosed();
		}

		public override bool OnPortalStart(Sim s)
		{
			return true;
		}

		protected override bool OnPortalStop(Sim s)
		{
			OwnerDoor.OnWalkedThrough(s);
			return true;
		}

		protected override bool DoAdditionalLaneChecks(bool bPreferedLane, Sim s, LaneInfo laneInfo)
		{
			bool flag = false;
			bool flag2 = false;
			if (s.IsHuman && !(s.Posture is LeadingHorsePosture))
			{
				flag = Owner.IsRoutingSlotObstructed(s, laneInfo.mLaneSlots[0], s, checkForSims: true, Route.RouteOption.None) || Owner.IsRoutingSlotObstructed(s, laneInfo.mLaneSlots[1], s, checkForSims: true, Route.RouteOption.None);
				flag2 = false;
			}
			else
			{
				CASAgeGenderFlags agsFlags = s.SimDescription.AgeGenderSpecies;
				if (s.Posture is LeadingHorsePosture)
				{
					agsFlags = CASAgeGenderFlags.SimLeadingHorse;
				}
				BlockedStatus blockedStatus = BlockedStatus.Unobstructed;
				Owner.IsRoutingSlotObstructed(s, laneInfo.mLaneSlots[0], s, checkForSims: true, Route.RouteOption.None, agsFlags, isExitSlot: false, out blockedStatus);
				if (blockedStatus <= BlockedStatus.BlockedBySim && Owner.IsRoutingSlotObstructed(s, laneInfo.mLaneSlots[1], s, checkForSims: true, Route.RouteOption.None, agsFlags, isExitSlot: true, out var blockedStatus2))
				{
					blockedStatus = (BlockedStatus)Math.Max((int)blockedStatus, (int)blockedStatus2);
				}
				flag = blockedStatus == BlockedStatus.BlockedBySim;
				flag2 = blockedStatus > BlockedStatus.BlockedBySim;
			}
			if (flag)
			{
				List<Sim> list = new List<Sim>(Queries.GetObjects<Sim>(Owner.GetPositionOfSlot(laneInfo.mLaneSlots[0]), 0.5f));
				list.AddRange(Queries.GetObjects<Sim>(Owner.GetPositionOfSlot(laneInfo.mLaneSlots[1]), 0.5f));
				int num = 0;
				while (num < list.Count)
				{
					if (list[num] == null || list[num].IsRouting)
					{
						list.RemoveAt(num);
					}
					else
					{
						num++;
					}
				}
				RoutingComponent.PushSimsStatic(s, list, SimRoutingComponent.PushSimsAwayDistanceMin, SimRoutingComponent.PushSimsAwayDistanceMax, allowPushOutOfConversation: true, waitForPushes: true);
			}
			else if (flag2)
			{
				return false;
			}
			return true;
		}
	}

	[Obsolete]
	public class DoorRouteThroughComponent : StaticObjectComponent
	{
		public override Type BaseType => typeof(DoorRouteThroughComponent);

		private DoorRouteThroughComponent()
		{
		}
	}

	public static class RoutingSlots
	{
		public static Slot Door0_Front = (Slot)1318896844u;

		public static Slot Door0_Rear = (Slot)3709893461u;

		public static Slot Door1_Front = (Slot)4056181741u;

		public static Slot Door1_Rear = (Slot)1284345274u;

		public static Slot Upgrade_Front = (Slot)2036919264u;

		public static Slot Upgrade_Rear = (Slot)2051078009u;
	}

	private sealed class ChangeDoorbellSound : Interaction<Sim, Door>, IOutfitChangeInteraction, IInteractionInstance
	{
		private sealed class Definition : InteractionDefinition<Sim, Door, ChangeDoorbellSound>
		{
			public string SoundEffectKey;

			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate1;

			public Definition()
			{
			}

			private Definition(string soundEffectKey)
			{
				SoundEffectKey = soundEffectKey;
			}

			private InteractionObjectPair CreateIop(string soundEffectKey, Door target)
			{
				return new InteractionObjectPair(new Definition(soundEffectKey), target);
			}

			protected override string GetInteractionName(Sim a, Door target, InteractionObjectPair interaction)
			{
				return LocalizeString(SoundEffectKey);
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { LocalizeString("ChangeDoorbellSound") };
			}

			protected override bool Test(Sim a, Door target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target is IElectronicGate)
				{
					return false;
				}
				Door door = target.LotCurrent.FindFrontDoor();
				if (target != door)
				{
					return false;
				}
				if (target.LotCurrent != null && target.LotCurrent.Household != null)
				{
					if (target.LotCurrent.Household.DoorbellSound != GetDoorbellSoundFromLocalizationKey(SoundEffectKey))
					{
						return target.ConnectsToRoom(0);
					}
					greyedOutTooltipCallback = () => LocalizeString("GreyTooltip_DoorbellSoundIsTheSameAsCurrent");
					return false;
				}
				return false;
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, Door target, List<InteractionObjectPair> results)
			{
				for (int i = 0; i < kDoorbellSoundLocalizationKeys.Length; i++)
				{
					results.Add(CreateIop(kDoorbellSoundLocalizationKeys[i], target));
				}
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		private Sim.SwitchOutfitHelper mSwitchOutfitHelper;

		private static readonly ulong kIconNameHash = ResourceUtils.HashString64("hud_interactions_ringbell");

		public Sim.SwitchOutfitHelper SwitchOutfitHelper
		{
			get
			{
				return mSwitchOutfitHelper;
			}
			set
			{
				if (mSwitchOutfitHelper != value)
				{
					if (mSwitchOutfitHelper != null)
					{
						mSwitchOutfitHelper.Dispose();
					}
					mSwitchOutfitHelper = value;
				}
			}
		}

		public override void Cleanup()
		{
			SwitchOutfitHelper = null;
			base.Cleanup();
		}

		public override void ConfigureInteraction()
		{
			base.ConfigureInteraction();
			Target.Upgradable.ConfigureStages(this, kUpgradeDoorbellSoundTuning, Upgrade.CustomDoorbellSound);
		}

		protected override bool Run()
		{
			if (!Actor.RouteToSlotListAndCheckInUse((IGameObject)Target, new Slot[2]
			{
				RoutingSlots.Upgrade_Front,
				RoutingSlots.Upgrade_Rear
			}, out Slot _))
			{
				return false;
			}
			Target.IsUpgrading = true;
			StandardEntry();
			Household household = Target.LotCurrent.Household;
			UpgradableComponent upgradable = Target.Upgradable;
			Target.Upgradable.CurrentUpgrade = Upgrade.None;
			EnterStateMachine("genericdoor", "Enable", "x", "door");
			AnimateSim("Upgrade");
			upgradable.StartUpgrade(Upgrade.CustomDoorbellSound, this, kUpgradeDoorbellSoundTuning);
			BeginCommodityUpdates();
			bool succeeded = DoLoop(ExitReason.Default);
			EndCommodityUpdates(succeeded);
			AnimateSim("Exit");
			switch (upgradable.StopUpgrade(this, kUpgradeDoorbellSoundTuning))
			{
			case UpgradeResult.BadFailure:
				household.DoorbellSound = "doorbell_ring_bad";
				break;
			case UpgradeResult.Success:
				household.DoorbellSound = GetDoorbellSoundFromLocalizationKey((InteractionDefinition as Definition).SoundEffectKey);
				break;
			}
			AnimateSim("Exit");
			Target.RingBell();
			StandardExit();
			Target.IsUpgrading = false;
			return true;
		}

		public override ThumbnailKey GetIconKey()
		{
			return new ThumbnailKey(new ResourceKey(kIconNameHash, 796721156u, 0u), ThumbnailSize.Medium);
		}
	}

	private sealed class SetFrontDoor : ImmediateInteraction<Sim, Door>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, Door, SetFrontDoor>
		{
			protected override bool Test(Sim ignored, Door target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.LotCurrent == null)
				{
					return false;
				}
				if (target.IsNPCDoor)
				{
					return false;
				}
				if (Commands.sRestrictBuildBuyInBuildings && target.IsInPublicResidentialRoom)
				{
					return false;
				}
				if (target is IAmNotAFrontDoor && !Sims3.SimIFace.Environment.HasEditInGameModeSwitch)
				{
					return false;
				}
				if (!Sims3.SimIFace.Environment.HasEditInGameModeSwitch && Sim.ActiveActor != null && target.LotCurrent != Sim.ActiveActor.LotHome)
				{
					return false;
				}
				int adjoiningRoom = target.GetAdjoiningRoom(0, eRoomDefinition.LightBlocking);
				if (adjoiningRoom == 36863 || (adjoiningRoom == 0 && !(target is IElectronicGate)))
				{
					return false;
				}
				Door frontDoor = target.LotCurrent.GetFrontDoor(eFrontDoorType.kFrontDoorTypeOverride);
				if (frontDoor == target)
				{
					return false;
				}
				int roomConnectedToOutside = target.LotCurrent.GetRoomConnectedToOutside(target);
				if (target.LotCurrent.ValidateRoomForFrontDoor(roomConnectedToOutside, target.Level) == float.MaxValue)
				{
					return false;
				}
				return true;
			}

			protected override string GetInteractionName(Sim actor, Door target, InteractionObjectPair iop)
			{
				return Localization.LocalizeString("Gameplay/Abstracts/Door/SetFrontDoor:InteractionName");
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			return Target.LotCurrent.SetFrontDoor(Target, eFrontDoorType.kFrontDoorTypeOverride, validate: true);
		}
	}

	private sealed class UnsetFrontDoor : ImmediateInteraction<Sim, Door>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, Door, UnsetFrontDoor>
		{
			protected override bool Test(Sim ignored, Door target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target is IAmNotAFrontDoor)
				{
					return false;
				}
				if (!Sims3.SimIFace.Environment.HasEditInGameModeSwitch && Sim.ActiveActor != null && target.LotCurrent != Sim.ActiveActor.LotHome)
				{
					return false;
				}
				if (Commands.sRestrictBuildBuyInBuildings && target.IsInPublicResidentialRoom)
				{
					return false;
				}
				Door frontDoor = target.LotCurrent.GetFrontDoor(eFrontDoorType.kFrontDoorTypeOverride);
				if (frontDoor == target)
				{
					return true;
				}
				return false;
			}

			protected override string GetInteractionName(Sim actor, Door target, InteractionObjectPair iop)
			{
				return Localization.LocalizeString("Gameplay/Abstracts/Door/UnsetFrontDoor:InteractionName");
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Target.LotCurrent.SetFrontDoor(null, eFrontDoorType.kFrontDoorTypeOverride, validate: false);
			return true;
		}
	}

	public class BreakDownDoor : Interaction<Sim, Door>
	{
		private sealed class Definition : InteractionDefinition<Sim, Door, BreakDownDoor>, IUsableDuringFire
		{
			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate3;

			protected override bool Test(Sim a, Door target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				Lot lotCurrent = target.LotCurrent;
				if (target is IBreakDoorNotAllowed)
				{
					return false;
				}
				int[] roomConnections = target.GetRoomConnections();
				foreach (int roomId in roomConnections)
				{
					if (lotCurrent.IsRoomHidden(roomId))
					{
						return false;
					}
				}
				if (lotCurrent.FireManager.HasMajorWindowFires())
				{
					greyedOutTooltipCallback = () => Localization.LocalizeString("Gameplay/Abstracts/Door/BreakDownDoor:ExtinguishWindowFiresFirst");
					return false;
				}
				if (target.LockType == tLock.VIPRoom)
				{
					return false;
				}
				if (target.IsLocked)
				{
					return a.IsActiveFirefighter;
				}
				return false;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		[Tunable]
		[TunableComment("Range:  float  Description:  Min and Max Time sim needs to break down door")]
		private static float[] kMinMaxTimeToBreakDownDoor = new float[2] { 15f, 30f };

		[TunableComment("Range:  float  Description:  Num minutes taken off for each athletic skill sim has")]
		[Tunable]
		private static float kAthleticSkillDecrement = 2f;

		[Tunable]
		[TunableComment("Range:  1-100  Description:  Chance Sim will fail at kicking door")]
		private static float kChanceSimWillFail = 20f;

		[TunableComment("Range:  int  Description:  Skill Level in which sim cannot fail")]
		[Tunable]
		private static int kAthleticSkillMaxFail = 4;

		[TunableComment("Range:  float  Description:  Minutes until sim fails door kick.")]
		[Tunable]
		private static float kMinutesTillFail = 15f;

		private float mTimeToCompletion;

		protected override bool Run()
		{
			RequestWalkStyle(Sim.WalkStyle.Run);
			if (!Actor.RouteToSlotListAndCheckInUse((IGameObject)Target, new Slot[2]
			{
				RoutingSlots.Upgrade_Front,
				RoutingSlots.Upgrade_Rear
			}, out Slot slot))
			{
				UnrequestWalkStyle(Sim.WalkStyle.Run);
				return false;
			}
			UnrequestWalkStyle(Sim.WalkStyle.Run);
			bool flag = false;
			if (Target.IsLocked)
			{
				bool flag2 = false;
				int skillLevel = Actor.SkillManager.GetSkillLevel(SkillNames.Athletic);
				if (skillLevel < kAthleticSkillMaxFail && RandomUtil.RandomChance(kChanceSimWillFail))
				{
					mTimeToCompletion = kMinutesTillFail;
					flag2 = true;
				}
				else
				{
					mTimeToCompletion = RandomUtil.GetFloat(kMinMaxTimeToBreakDownDoor[0], kMinMaxTimeToBreakDownDoor[1]);
					mTimeToCompletion -= kAthleticSkillDecrement * (float)skillLevel;
				}
				StandardEntry();
				BeginCommodityUpdates();
				bool flag3 = Target is DoorDouble;
				Target.StopEffect();
				EnterStateMachine("breakOpenDoor", "Enter", "x", flag3 ? "doubleDoor" : "singleDoor");
				mCurrentStateMachine.SetParameter("usingFrontSlot", slot == RoutingSlots.Upgrade_Front);
				mCurrentStateMachine.SetParameter("isDoubleDoor", flag3);
				AnimateSim("Loop");
				flag = DoLoop(ExitReason.Default, LoopDel, null);
				if (Actor.HasExitReason(ExitReason.Finished))
				{
					if (flag2)
					{
						Target.StartEffect(kBreakDownLockedEffect);
						AnimateSim("Fail");
					}
					else
					{
						AnimateSim("Success");
						Target.SetLockType(tLock.Anybody);
						Target.PlayOpenAnimation = false;
						ExitReason exitReason = Actor.ExitReason;
						Actor.ClearExitReasons();
						Target.RouteThroughDoor(Actor);
						Actor.AddExitReason(exitReason);
						Target.AddToUseList(Actor);
					}
				}
				else
				{
					Target.StartEffect(kBreakDownLockedEffect);
					AnimateSim("Stop");
				}
				EndCommodityUpdates(flag);
				StandardExit();
			}
			return flag;
		}

		public void LoopDel(StateMachineClient smc, LoopData loopData)
		{
			if (loopData.mLifeTime >= mTimeToCompletion)
			{
				Actor.AddExitReason(ExitReason.Finished);
			}
		}
	}

	private sealed class MakeNPCDoor : ImmediateInteraction<Sim, Door>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, Door, MakeNPCDoor>
		{
			protected override bool Test(Sim ignored, Door target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				Lot lotCurrent = target.LotCurrent;
				if (lotCurrent == null)
				{
					return false;
				}
				if (target is IAmNotAFrontDoor && !Sims3.SimIFace.Environment.HasEditInGameModeSwitch)
				{
					return false;
				}
				if (lotCurrent.GetFrontDoor(eFrontDoorType.kFrontDoorTypeDefault) == target)
				{
					return false;
				}
				if (lotCurrent.IsResidentialLot)
				{
					PublicRoomMarker[] objects = lotCurrent.GetObjects<PublicRoomMarker>();
					if (objects.Length > 0)
					{
						HiddenRoomMarker[] objects2 = lotCurrent.GetObjects<HiddenRoomMarker>();
						if (objects2.Length > 0)
						{
							List<int> list = new List<int>();
							List<int> list2 = new List<int>();
							HiddenRoomMarker[] array = objects2;
							foreach (HiddenRoomMarker hiddenRoomMarker in array)
							{
								list2.Add(hiddenRoomMarker.RoomId);
							}
							list2.Add(0);
							PublicRoomMarker[] array2 = objects;
							foreach (PublicRoomMarker publicRoomMarker in array2)
							{
								int roomId = publicRoomMarker.RoomId;
								if (!list2.Contains(roomId))
								{
									list.Add(publicRoomMarker.RoomId);
								}
							}
							int[] roomConnections = target.GetRoomConnections();
							if (list.Contains(roomConnections[0]) != list.Contains(roomConnections[1]))
							{
								return list2.Contains(roomConnections[0]) != list2.Contains(roomConnections[1]);
							}
							return false;
						}
					}
				}
				return false;
			}

			protected override string GetInteractionName(Sim actor, Door target, InteractionObjectPair iop)
			{
				if (!target.mIsNPCDoor)
				{
					return LocalizeString("MakeNPCDoor");
				}
				return LocalizeString("UnmakeNPCDoor");
			}
		}

		private const string sLocalizationKey = "Gameplay/Abstracts/Door/MakeNPCDoor";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Abstracts/Door/MakeNPCDoor:" + name, parameters);
		}

		protected override bool Run()
		{
			if (!Target.mIsNPCDoor)
			{
				Target.SetLockType(tLock.Nobody);
				Target.mIsNPCDoor = true;
			}
			else
			{
				Target.SetLockType(tLock.Anybody);
				Target.mIsNPCDoor = false;
			}
			return true;
		}
	}

	public class RingNPCDoor : Interaction<Sim, Door>
	{
		private sealed class Definition : InteractionDefinition<Sim, Door, RingNPCDoor>
		{
			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate7;

			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate8;

			[CompilerGenerated]
			private static GreyedOutTooltipCallback <>9__CachedAnonymousMethodDelegate9;

			protected override bool Test(Sim a, Door target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				Lot lotCurrent = target.LotCurrent;
				object associatedNPCResident = lotCurrent.GetAssociatedNPCResident(target);
				if (associatedNPCResident == null)
				{
					if (target.IsNPCDoor)
					{
						greyedOutTooltipCallback = () => Localization.LocalizeString("Gameplay/Core/VisitLot:NoOneLivesHere");
					}
					return false;
				}
				bool child = a.SimDescription.Child;
				List<SimDescription> list = null;
				if (associatedNPCResident is SimDescription item)
				{
					list = new List<SimDescription>();
					list.Add(item);
				}
				else if (associatedNPCResident is Household household)
				{
					list = household.SimDescriptions;
				}
				if (list != null)
				{
					bool flag = false;
					foreach (SimDescription item2 in list)
					{
						if (item2.CreatedSim == null)
						{
							if (item2.Child && child)
							{
								return true;
							}
							if (!item2.ChildOrBelow)
							{
								return true;
							}
							flag = true;
						}
					}
					if (flag)
					{
						greyedOutTooltipCallback = () => LocalizeString("NobodyOldEnough");
						return false;
					}
					greyedOutTooltipCallback = () => LocalizeString("NobodyHome");
					return false;
				}
				return false;
			}
		}

		private const string sLocalizationKey = "Gameplay/Abstracts/Door/RingNPCDoor";

		public static readonly InteractionDefinition Singleton = new Definition();

		private static string LocalizeString(string name, params object[] parameters)
		{
			return Localization.LocalizeString("Gameplay/Abstracts/Door/RingNPCDoor:" + name, parameters);
		}

		protected override bool Run()
		{
			Lot lotCurrent = Target.LotCurrent;
			bool flag = false;
			if (Actor.LotCurrent != lotCurrent)
			{
				Route r = null;
				lotCurrent.RouteToMailbox(Actor, Lot.kMailboxRouteMin, Lot.kMailboxRouteMax, ref r, doRoute: false);
				if (r != null)
				{
					r.DoRouteFail = false;
				}
				if (r == null || !Actor.DoRoute(r) || Actor.LotCurrent != lotCurrent)
				{
					r = Actor.CreateRoute();
					lotCurrent.PlanToLotEx(r);
					if (!Actor.DoRoute(r) || Actor.LotCurrent != lotCurrent)
					{
						Actor.AddExitReason(ExitReason.FailedToStart);
						return false;
					}
				}
			}
			List<Slot> routingSlotsOnSide = Target.GetRoutingSlotsOnSide(tSide.Front);
			foreach (Slot item in Target.GetRoutingSlotsOnSide(tSide.Back))
			{
				routingSlotsOnSide.Add(item);
			}
			if (!Actor.RouteToSlotListAndCheckInUse((IGameObject)Target, routingSlotsOnSide.ToArray(), out Slot _))
			{
				Actor.AddExitReason(ExitReason.FailedToStart);
				return false;
			}
			BeginCommodityUpdates();
			EnterStateMachine("ringDoorbell", "Enter", "x");
			AddOneShotScriptEventHandler(1001u, RingBell);
			AnimateSim("Exit");
			EndCommodityUpdates(succeeded: true);
			Door target = Target;
			Vector3 vector = (target.GetPositionOfSlot(RoutingSlots.Door0_Front) + target.GetPositionOfSlot(RoutingSlots.Door0_Rear)) * 0.5f;
			Vector3 coneVector = -(vector - Actor.Position);
			Route route = Actor.CreateRoute();
			route.PlanToPointRadialRange(vector, Sim.MinStandBackFromDoorDistance + 1f, Sim.MaxStandBackFromDoorDistance, coneVector, Lot.ConeAngleWhenRoutingToDoor, RouteDistancePreference.PreferFurthestFromRouteDestination, RouteOrientationPreference.NoPreference, target.LotCurrent.LotId, new int[1] { Actor.RoomId });
			flag = route.PlanResult.Succeeded();
			if (flag)
			{
				Actor.DoRoute(route);
			}
			Actor.RouteTurnToFace(target.Position);
			List<SimDescription> list = new List<SimDescription>();
			object associatedNPCResident = lotCurrent.GetAssociatedNPCResident(Target);
			if (associatedNPCResident == null)
			{
				return false;
			}
			if (associatedNPCResident is SimDescription { CreatedSim: null, IsHuman: not false } simDescription)
			{
				list.Add(simDescription);
			}
			else if (associatedNPCResident is Household household)
			{
				bool child = Actor.SimDescription.Child;
				foreach (SimDescription simDescription2 in household.SimDescriptions)
				{
					if (simDescription2.CreatedSim == null)
					{
						if (simDescription2.Child && child)
						{
							list.Add(simDescription2);
						}
						else if (!simDescription2.ChildOrBelow)
						{
							list.Add(simDescription2);
						}
					}
				}
			}
			if (list.Count == 0)
			{
				return false;
			}
			SimDescription randomObjectFromList = RandomUtil.GetRandomObjectFromList(list);
			randomObjectFromList.Instantiate(lotCurrent);
			randomObjectFromList.ShowSocialsOnSim = true;
			randomObjectFromList.MotivesDontDecay = false;
			Sim createdSim = randomObjectFromList.CreatedSim;
			if (createdSim != null)
			{
				if (createdSim.CurrentOutfitCategory == OutfitCategories.Sleepwear || createdSim.CurrentOutfitCategory == OutfitCategories.Swimwear)
				{
					createdSim.SwitchToOutfitWithoutSpin(Sim.ClothesChangeReason.Force, OutfitCategories.Everyday);
				}
				SocialInteractionA.Definition definition = ((!createdSim.IsEP11Bot) ? new SocialInteractionA.Definition("Chat", new string[0], null, initialGreet: false) : new SocialInteractionA.Definition("Robot Scan", new string[0], null, initialGreet: false));
				InteractionInstance interactionInstance = definition.CreateInstance(Actor, createdSim, new InteractionPriority(InteractionPriorityLevel.RequiredNPCBehavior), isAutonomous: false, cancellableByPlayer: true);
				if (interactionInstance == null)
				{
					interactionInstance = Callbox.RouteToSim.Singleton.CreateInstance(Actor, createdSim, new InteractionPriority(InteractionPriorityLevel.RequiredNPCBehavior), isAutonomous: false, cancellableByPlayer: true);
				}
				createdSim.InteractionQueue.AddNext(interactionInstance);
			}
			EventTracker.SendEvent(EventTypeId.kVisitLot, Actor, Target);
			Actor.LastVisitedSomeone = SimClock.CurrentTime();
			return flag;
		}

		private void RingBell(StateMachineClient sender, IEvent evt)
		{
			Target.RingBell();
		}
	}

	public class PrankReaction : Interaction<Sim, Door>
	{
		public Sim Prankster;

		protected override bool Run()
		{
			Route r = Actor.CreateRoute();
			if (!Target.LotCurrent.RouteToDoor(Target, Actor, Sim.MinStandBackFromDoorDistance, Sim.MaxStandBackFromDoorDistance, ref Target, wantToBeOutside: true, ref r, doRoute: true, wantToBeAsNearAsPossibleToDestination: true, null, float.MaxValue))
			{
				if (Prankster != null)
				{
					Prankster.AddExitReason(ExitReason.CanceledByScript);
				}
				return false;
			}
			PostRouteBehavior();
			if (Prankster != null)
			{
				Prankster.AddExitReason(ExitReason.Finished);
			}
			return true;
		}

		public virtual void PostRouteBehavior()
		{
		}
	}

	public sealed class PrankReactionDoorbellDitch : PrankReaction
	{
		public sealed class Definition : InteractionDefinition<Sim, Door, PrankReactionDoorbellDitch>
		{
			private bool mReactingToBird;

			public Definition()
			{
				mReactingToBird = false;
			}

			public Definition(bool fromBird)
			{
				mReactingToBird = fromBird;
			}

			protected override bool Test(Sim a, Door target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override string GetInteractionName(Sim actor, Door target, InteractionObjectPair iop)
			{
				if (!mReactingToBird)
				{
					return base.GetInteractionName(actor, target, iop);
				}
				return Localization.LocalizeString(actor.IsFemale, "Gameplay/Objects/MinorPets/Bird:AnswerDoor");
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		public override void PostRouteBehavior()
		{
			EnterStateMachine("DoorbellDitch", "Enter", "x");
			ThoughtBalloonManager.BalloonData balloonData = new ThoughtBalloonManager.BalloonData("hud_interactions_contemplate");
			balloonData.mPriority = ThoughtBalloonPriority.Medium;
			balloonData.mCoolDown = ThoughtBalloonCooldown.Medium;
			Actor.ThoughtBalloonManager.ShowBalloon(balloonData);
			AnimateSim("Look Confused");
			AnimateSim("Exit");
			Target.RouteThroughDoor(Actor);
		}
	}

	private sealed class PrankReactionFlamingBag : PrankReaction
	{
		private sealed class Definition : InteractionDefinition<Sim, Door, PrankReactionFlamingBag>
		{
			protected override bool Test(Sim a, Door target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		[Tunable]
		[TunableComment("The amount of hygiene a Sim will lose from stomping on the flaming bag.")]
		private static int kFlamingBagHygieneLoss = 50;

		public FlamingBag Bag;

		public override void PostRouteBehavior()
		{
			RequestWalkStyle(Sim.WalkStyle.Run);
			Actor.RouteToObjectRadialRange(Bag, 0.2f, 0.25f);
			EnterStateMachine("FlamingBag", "Enter", "x");
			AddOneShotScriptEventHandler(102u, EventCallbackSetSmashedState);
			if (Actor.TraitManager.HasAnyElement(TraitNames.Coward, TraitNames.Loser, TraitNames.Childish))
			{
				AnimateSim("Panic");
			}
			AnimateSim("Stomp");
			AnimateSim("Exit");
			Actor.Motives.ChangeValue(CommodityKind.Hygiene, -kFlamingBagHygieneLoss);
			Actor.BuffManager.AddElement(BuffNames.Smelly, Origin.FromPrankFlamingBag);
			Bag.StopFlamingBag();
		}

		private void EventCallbackSetSmashedState(StateMachineClient sender, IEvent evt)
		{
			Bag.SetGeometryState("smashed");
			Bag.TurnOffFire();
		}
	}

	private sealed class PrankReactionThrowingEggs : PrankReaction
	{
		private sealed class Definition : InteractionDefinition<Sim, Door, PrankReactionThrowingEggs>
		{
			protected override bool Test(Sim a, Door target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		[TunableComment("The chance a rebellious Sim will get the police called on them when a Sim yells at them for throwing eggs (it always happens for other Sims).")]
		[Tunable]
		private static int kThrowingEggsRebelliousPoliceChance = 30;

		public static readonly InteractionDefinition Singleton = new Definition();

		public override void PostRouteBehavior()
		{
			PrankThrowingEggs prankThrowingEggs = Prankster.CurrentInteraction as PrankThrowingEggs;
			bool flag = prankThrowingEggs != null && Prankster.LotCurrent == Target.LotCurrent;
			EnterStateMachine("ThrowEggs", "Enter", "x");
			if (flag)
			{
				ThoughtBalloonManager.BalloonData balloonData = new ThoughtBalloonManager.BalloonData(Prankster.GetThumbnailKey());
				balloonData.mPriority = ThoughtBalloonPriority.Medium;
				balloonData.mCoolDown = ThoughtBalloonCooldown.Medium;
				balloonData.BalloonType = ThoughtBalloonTypes.kScreamBalloon;
				Actor.ThoughtBalloonManager.ShowBalloon(balloonData);
				prankThrowingEggs.GotCaught = true;
				Prankster.AddExitReason(ExitReason.CanceledByScript);
				Actor.RouteTurnToFace(Prankster.Position);
				if (!Prankster.HasTrait(TraitNames.Rebellious) || (Prankster.HasTrait(TraitNames.Rebellious) && RandomUtil.RandomChance(kThrowingEggsRebelliousPoliceChance)))
				{
					Relationship relationship = Relationship.Get(Actor, Prankster, createIfNone: false);
					if (relationship == null || !relationship.AreFriendsOrRomantic())
					{
						Police.Instance?.MakeServiceRequest(Prankster.LotCurrent, active: true, Prankster.ObjectId, bImmediate: true);
					}
				}
			}
			AnimateSim("Yell At Thrower");
			AnimateSim("Exit");
			Target.RouteThroughDoor(Actor);
		}
	}

	public class PrankDoorbellDitch : Interaction<Sim, GameObject>
	{
		private sealed class Definition : InteractionDefinition<Sim, GameObject, PrankDoorbellDitch>
		{
			protected override bool Test(Sim a, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return GetFrontDoorFromTarget(target)?.GenericPrankTest(a, requiresResidentAtHome: true, ref greyedOutTooltipCallback) ?? false;
			}
		}

		[Tunable]
		[TunableComment("The min distance the Sim will try to wander from the door after ringing the doorbell.")]
		private static float kMinWanderDistance = 5f;

		[Tunable]
		[TunableComment("The max distance the Sim will try to wander from the door after ringing the doorbell.")]
		private static float kMaxWanderDistance = 10f;

		[TunableComment("The max amount of time a Sim will giggle after they rang they doorbell and ran away.  Note this should be long enough to provide enough time for the Prankee to route outside and look around.  Also, once they Prankee reacts the Prankster will stop giggleing regardless if the max time was reached.")]
		[Tunable]
		private static float kGiggleDuration = 15f;

		private Door mFrontDoor;

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			if (mFrontDoor == null)
			{
				mFrontDoor = GetFrontDoorFromTarget(Target);
				if (mFrontDoor == null)
				{
					return false;
				}
			}
			Lot lotCurrent = mFrontDoor.LotCurrent;
			if (Actor.LotCurrent != lotCurrent && !Actor.RouteToLot(lotCurrent.LotId))
			{
				return false;
			}
			List<Slot> list = ((mFrontDoor.GetOutdoorSide() != tSide.Front) ? mFrontDoor.GetRoutingSlotsOnSide(tSide.Back) : mFrontDoor.GetRoutingSlotsOnSide(tSide.Front));
			RequestWalkStyle(Sim.WalkStyle.Sneak);
			if (!Actor.RouteToSlotListAndCheckInUse((IGameObject)mFrontDoor, list.ToArray(), out Slot _))
			{
				return false;
			}
			EnterStateMachine("DoorbellDitch", "Enter", "x");
			AddOneShotScriptEventHandler(1001u, RingBell);
			AnimateSim("Giggle");
			AnimateSim("Ring Doorbell");
			UnrequestWalkStyle(Sim.WalkStyle.Sneak);
			RequestWalkStyle(Sim.WalkStyle.Run);
			Actor.Wander(kMinWanderDistance, kMaxWanderDistance, limitOutdoors: true, RouteDistancePreference.PreferFurthestFromRouteOrigin, doRoutFail: false);
			Actor.RouteTurnToFace(mFrontDoor.Position);
			List<Sim> list2 = new List<Sim>();
			foreach (Sim sim in lotCurrent.Household.Sims)
			{
				if (sim.IsAtHome)
				{
					list2.Add(sim);
				}
			}
			Sim randomObjectFromList = RandomUtil.GetRandomObjectFromList(list2);
			if (randomObjectFromList != null)
			{
				PrankReactionDoorbellDitch prankReactionDoorbellDitch = PrankReactionDoorbellDitch.Singleton.CreateInstance(mFrontDoor, randomObjectFromList, new InteractionPriority(InteractionPriorityLevel.UserDirected), isAutonomous: false, cancellableByPlayer: false) as PrankReactionDoorbellDitch;
				prankReactionDoorbellDitch.Prankster = Actor;
				if (randomObjectFromList.InteractionQueue.AddNext(prankReactionDoorbellDitch))
				{
					if (RandomUtil.CoinFlip())
					{
						AnimateSim("Giggle");
					}
					else
					{
						AnimateSim("Hide");
					}
					if (DoTimedLoop(kGiggleDuration, ExitReason.Default) || Actor.HasExitReason(ExitReason.Finished))
					{
						lotCurrent.LastTimePranked = SimClock.CurrentTime();
						Actor.BuffManager.AddElement(BuffNames.SuccessfulPrank, Origin.FromPrankDoorbellDitch);
						Actor.BuffManager.AddElement(BuffNames.FightThePower, Origin.FromPrankDoorbellDitch);
						Actor.Play3dStingIfSelectable("sting_prank");
					}
				}
			}
			AnimateSim("Exit");
			return true;
		}

		private void RingBell(StateMachineClient sender, IEvent evt)
		{
			if (mFrontDoor != null)
			{
				mFrontDoor.RingBell();
			}
		}
	}

	public class PrankFlamingBag : Interaction<Sim, GameObject>
	{
		private sealed class Definition : InteractionDefinition<Sim, GameObject, PrankFlamingBag>
		{
			protected override bool Test(Sim a, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return GetFrontDoorFromTarget(target)?.GenericPrankTest(a, requiresResidentAtHome: true, ref greyedOutTooltipCallback) ?? false;
			}
		}

		[TunableComment("The min distance the Sim will try to route to the door before finding a place to put the bag on the ground.  The Sim will prefer the closest distance.")]
		[Tunable]
		private static float kMinRouteToDoorDistance = 1f;

		[Tunable]
		[TunableComment("The max distance the Sim will try to route to the door before finding a place to put the bag on the ground.  The Sim will prefer the closest distance.")]
		private static float kMaxRouteToDoorDistance = 5f;

		[Tunable]
		[TunableComment("The min distance the Sim will try to wander from the bag after setting it on fire.")]
		private static float kMinWanderDistance = 5f;

		[TunableComment("The max distance the Sim will try to wander from the bag after setting it on fire.")]
		[Tunable]
		private static float kMaxWanderDistance = 10f;

		[TunableComment("The max amount of time a Sim will giggle after they set the bag on fire and ran away.  Note this should be long enough to provide enough time for the Prankee to route outside and look around.  Also, once they Prankee reacts the Prankster will stop giggleing regardless if the max time was reached.")]
		[Tunable]
		private static float kGiggleDuration = 15f;

		public static readonly InteractionDefinition Singleton = new Definition();

		private IGameObject mBagJig;

		private FlamingBag mBag;

		protected override bool Run()
		{
			Door door = GetFrontDoorFromTarget(Target);
			if (door == null)
			{
				return false;
			}
			Lot lotCurrent = door.LotCurrent;
			if (Actor.LotCurrent != lotCurrent && !Actor.RouteToLot(lotCurrent.LotId))
			{
				return false;
			}
			RequestWalkStyle(Sim.WalkStyle.Sneak);
			Route r = Actor.CreateRoute();
			if (!lotCurrent.RouteToDoor(door, Actor, kMinRouteToDoorDistance, kMaxRouteToDoorDistance, ref door, wantToBeOutside: true, ref r, doRoute: true, wantToBeAsNearAsPossibleToDestination: true, null, float.MaxValue))
			{
				return false;
			}
			mBag = GlobalFunctions.CreateObjectOutOfWorld("flamingBag", ProductVersion.EP4) as FlamingBag;
			mBag.SetGeometryState("unsmashed");
			mBag.Prankster = Actor;
			mBagJig = GlobalFunctions.CreateJigFromObject(mBag);
			if (mBagJig == null)
			{
				mBag.Destroy();
				return false;
			}
			mBagJig.AddToWorld();
			Vector3 position = Actor.Position;
			Vector3 forwardVector = Actor.ForwardVector;
			if (!GlobalFunctions.PlaceAtGoodLocation(fglParams: new World.FindGoodLocationParams(Actor.Position, FindGoodLocationBooleans.StayInRoom | FindGoodLocationBooleans.PreferEmptyTiles | FindGoodLocationBooleans.Routable), obj: mBagJig, deleteOnFailure: false))
			{
				mBag.Destroy();
				return false;
			}
			mBagJig.SetPosition(position);
			mBagJig.SetForward(forwardVector);
			r = Actor.CreateRoute();
			r.PlanToPointRadius(mBagJig.Position, 0.7f);
			if (!Actor.DoRoute(r))
			{
				mBag.Destroy();
				return false;
			}
			EnterStateMachine("flamingbag", "Enter", "x");
			SetActor("bag", mBag);
			SetActor("jig", mBagJig);
			AddOneShotScriptEventHandler(101u, EventCallbackStartFire);
			AddOneShotScriptEventHandler(104u, EventCallbackParentBagToJig);
			mBag.TurnOnBroadcaster();
			AnimateSim("Ignite");
			UnrequestWalkStyle(Sim.WalkStyle.Sneak);
			RequestWalkStyle(Sim.WalkStyle.Run);
			Actor.Wander(kMinWanderDistance, kMaxWanderDistance, limitOutdoors: true, RouteDistancePreference.PreferFurthestFromRouteOrigin, doRoutFail: false);
			mBag.TurnOffBroadcaster();
			Actor.RouteTurnToFace(mBag.Position);
			mBag.StartFlamingBagAlarm();
			List<Sim> list = new List<Sim>();
			foreach (Sim sim2 in lotCurrent.Household.Sims)
			{
				if (sim2.IsAtHome && sim2.SimDescription.ChildOrAbove)
				{
					list.Add(sim2);
				}
			}
			Sim sim = null;
			if (list.Count > 0)
			{
				sim = RandomUtil.GetRandomObjectFromList(list);
			}
			if (sim != null)
			{
				PrankReactionFlamingBag prankReactionFlamingBag = PrankReactionFlamingBag.Singleton.CreateInstance(door, sim, new InteractionPriority(InteractionPriorityLevel.UserDirected), isAutonomous: false, cancellableByPlayer: false) as PrankReactionFlamingBag;
				prankReactionFlamingBag.Prankster = Actor;
				prankReactionFlamingBag.Bag = mBag;
				sim.InteractionQueue.AddNext(prankReactionFlamingBag);
			}
			AnimateSim("Giggle");
			if (DoTimedLoop(kGiggleDuration, ExitReason.Default) || Actor.HasExitReason(ExitReason.Finished))
			{
				lotCurrent.LastTimePranked = SimClock.CurrentTime();
				Actor.BuffManager.AddElement(BuffNames.SuccessfulPrank, Origin.FromPrankFlamingBag);
				Actor.Play3dStingIfSelectable("sting_prank");
			}
			AnimateSim("Exit");
			return true;
		}

		private void EventCallbackStartFire(StateMachineClient sender, IEvent evt)
		{
			mBag.TurnOnFire();
		}

		private void EventCallbackParentBagToJig(StateMachineClient sender, IEvent evt)
		{
			mBag.UnParent(mBagJig.Position, mBagJig.ForwardVector);
			mBag.ResetBindPose();
		}

		public override void Cleanup()
		{
			if (mBagJig != null)
			{
				mBagJig.Destroy();
				mBagJig = null;
			}
			base.Cleanup();
		}
	}

	public class PrankThrowingEggs : Interaction<Sim, GameObject>
	{
		private sealed class Definition : InteractionDefinition<Sim, GameObject, PrankThrowingEggs>
		{
			protected override bool Test(Sim a, GameObject target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return GetFrontDoorFromTarget(target)?.GenericPrankTest(a, requiresResidentAtHome: true, ref greyedOutTooltipCallback) ?? false;
			}
		}

		[Tunable]
		[TunableComment("The arc/cone's angle for finding a suitable spot for a Sim that will throw eggs. Units: Radians. Valid range [0, Pi]. Initial GPE Default: 3(Pi)/8.")]
		private static float kConeAngleInFrontOfDoor = (float)Math.PI * 3f / 8f;

		[Tunable]
		[TunableComment("The closest distance to the front door a Sim will throw eggs.")]
		private static float kMinThrowDistance = 3f;

		[TunableComment("The furthest distance to the front door a Sim will throw eggs.")]
		[Tunable]
		private static float kMaxThrowDistance = 7f;

		[TunableComment("The max number of minutes a Sim will throw eggs if they don't get caught.")]
		[Tunable]
		private static int kTimeLimit = 15;

		private Door mFrontDoor;

		private Lot mCurrentLot;

		private bool mPrankeeFound;

		public bool GotCaught;

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			mFrontDoor = GetFrontDoorFromTarget(Target);
			if (mFrontDoor == null)
			{
				return false;
			}
			mCurrentLot = mFrontDoor.LotCurrent;
			if (!RouteToDoorCone())
			{
				return false;
			}
			EnterStateMachine("ThrowEggs", "Enter", "x");
			SetParameter("isEP8", GameUtils.IsInstalled(ProductVersion.EP8));
			AddPersistentScriptEventHandler(101u, EventCallbackExplodeEgg);
			AnimateSim("Throw Eggs");
			PreLoopBehavior();
			DoLoop(ExitReason.Default, LoopDel, null);
			PostLoopBehavior();
			AnimateSim("Exit");
			return true;
		}

		protected virtual void PreLoopBehavior()
		{
			foreach (Sim sim in Target.LotCurrent.Household.Sims)
			{
				EventTracker.SendEvent(EventTypeId.kThrowEggs, Actor, sim);
			}
			mCurrentLot.LastTimePranked = SimClock.CurrentTime();
			Actor.BuffManager.AddElement(BuffNames.SuccessfulPrank, Origin.FromPrankThrowingEggs);
			Actor.BuffManager.AddElement(BuffNames.FightThePower, Origin.FromPrankThrowingEggs);
			Actor.Play3dStingIfSelectable("sting_prank");
		}

		protected virtual void PostLoopBehavior()
		{
			if (GotCaught)
			{
				AnimateSim("Got Caught");
			}
		}

		protected virtual void LoopDel(StateMachineClient smc, LoopData loopData)
		{
			if (loopData.mLifeTime >= (float)kTimeLimit)
			{
				Actor.AddExitReason(ExitReason.Finished);
			}
			if (mPrankeeFound)
			{
				return;
			}
			List<Sim> list = new List<Sim>();
			foreach (Sim sim in mCurrentLot.Household.Sims)
			{
				if (sim.IsAtHome && sim.SimDescription.ChildOrAbove)
				{
					list.Add(sim);
				}
			}
			if (list.Count <= 0)
			{
				return;
			}
			Sim randomObjectFromList = RandomUtil.GetRandomObjectFromList(list);
			if (randomObjectFromList != null)
			{
				PrankReactionThrowingEggs prankReactionThrowingEggs = PrankReactionThrowingEggs.Singleton.CreateInstance(mFrontDoor, randomObjectFromList, new InteractionPriority(InteractionPriorityLevel.UserDirected), isAutonomous: false, cancellableByPlayer: false) as PrankReactionThrowingEggs;
				prankReactionThrowingEggs.Prankster = Actor;
				if (randomObjectFromList.InteractionQueue.AddNext(prankReactionThrowingEggs))
				{
					mPrankeeFound = true;
				}
			}
		}

		private void EventCallbackExplodeEgg(StateMachineClient sender, IEvent evt)
		{
			if (evt.EventId == 101 && !mFrontDoor.InUse)
			{
				VisualEffect.FireOneShotEffect("ep4prankeggbreak", mFrontDoor, Slot.FXJoint_0, VisualEffect.TransitionType.SoftTransition);
			}
		}

		private bool RouteToDoorCone()
		{
			tSide outdoorSide = mFrontDoor.GetOutdoorSide();
			Vector3 vector = mFrontDoor.GetPositionOfSlot(RoutingSlots.Door0_Front) - mFrontDoor.GetPositionOfSlot(RoutingSlots.Door0_Rear);
			if (outdoorSide != tSide.Front)
			{
				vector = -vector;
			}
			RadialRangeDestination radialRangeDestination = new RadialRangeDestination();
			radialRangeDestination.mTargetObject = mFrontDoor;
			radialRangeDestination.mCenterPoint = mFrontDoor.Position;
			radialRangeDestination.mConeVector = vector;
			radialRangeDestination.mfConeAngle = kConeAngleInFrontOfDoor;
			radialRangeDestination.mfMinRadius = kMinThrowDistance;
			radialRangeDestination.mfMaxRadius = kMaxThrowDistance;
			radialRangeDestination.mFacingPreference = RouteOrientationPreference.TowardsObject;
			radialRangeDestination.ScoreFunctionWeights[6] = 1f;
			Route route = Actor.CreateRoute();
			route.AddDestination(radialRangeDestination);
			ulong lotId = mCurrentLot.LotId;
			int[] validRooms = new int[1];
			route.SetValidRooms(lotId, validRooms);
			route.Plan();
			return Actor.DoRoute(route);
		}
	}

	private sealed class VelvetRopesInteractionProxy : Interaction<Sim, Door>
	{
		[DoesntRequireTuning]
		private sealed class Definition : InteractionDefinition<Sim, Door, VelvetRopesInteractionProxy>
		{
			protected override string GetInteractionName(Sim a, Door target, InteractionObjectPair interaction)
			{
				return "Never Displayed: VelvetRopesInteractionProxy";
			}

			protected override bool Test(Sim Actor, Door Target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return Target.HasVelvetRopes;
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim Actor, Door Target, List<InteractionObjectPair> results)
			{
				if (Target.HasVelvetRopes)
				{
					results.AddRange(Target.VelvetRope.GetAllInteractionsForActor(Actor));
				}
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			throw new NotImplementedException("This interaction should never be run");
		}
	}

	private sealed class DEBUG_CheckLockStatus : ImmediateInteraction<Sim, Door>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ImmediateInteractionDefinition<Sim, Door, DEBUG_CheckLockStatus>
		{
			protected override string GetInteractionName(Sim a, Door target, InteractionObjectPair interaction)
			{
				return "DEBUG: Check Lock Status";
			}

			protected override bool Test(Sim a, Door target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			if (Target.IsAllowedThrough(Actor))
			{
				Actor.ShowTNSIfSelectable("You are allowed through this door", StyledNotification.NotificationStyle.kDebugAlert);
			}
			else
			{
				Actor.ShowTNSIfSelectable("You are not allowed through this door", StyledNotification.NotificationStyle.kDebugAlert);
			}
			return true;
		}
	}

	private sealed class DEBUG_OpenClose : ImmediateInteraction<Sim, Door>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, Door, DEBUG_OpenClose>
		{
			public bool mOpen;

			public tSide mSide;

			public uint mDoorIndex;

			public Definition()
			{
			}

			private Definition(bool open, tSide side, uint doorIndex)
				: this()
			{
				mOpen = open;
				mSide = side;
				mDoorIndex = doorIndex;
			}

			protected override string GetInteractionName(Sim a, Door target, InteractionObjectPair interaction)
			{
				return (mOpen ? "Open" : "Close") + " Door Index " + mDoorIndex + " " + mSide;
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { "Door . . . " };
			}

			protected override bool Test(Sim a, Door target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, Door target, List<InteractionObjectPair> results)
			{
				uint numDoors = (uint)target.GetNumDoors();
				for (uint num = 0u; num < numDoors; num++)
				{
					if (target.GetDoorState(num) == tState.Closed)
					{
						results.Add(new InteractionObjectPair(new Definition(open: true, tSide.Front, num), target));
						results.Add(new InteractionObjectPair(new Definition(open: true, tSide.Back, num), target));
					}
					else
					{
						results.Add(new InteractionObjectPair(new Definition(open: false, tSide.Front, num), target));
						results.Add(new InteractionObjectPair(new Definition(open: false, tSide.Back, num), target));
					}
				}
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Definition definition = InteractionDefinition as Definition;
			if (definition.mOpen)
			{
				Target.Open(definition.mDoorIndex, definition.mSide);
				Target.SetDoorState(definition.mDoorIndex, tState.Opened);
			}
			else
			{
				Target.Close(definition.mDoorIndex, definition.mSide);
				Target.SetDoorState(definition.mDoorIndex, tState.Closed);
			}
			return true;
		}
	}

	private sealed class DEBUG_SetCost : ImmediateInteraction<Sim, Door>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, Door, DEBUG_SetCost>
		{
			public float mCost;

			public Definition()
			{
			}

			private Definition(float cost)
				: this()
			{
				mCost = cost;
			}

			protected override string GetInteractionName(Sim a, Door target, InteractionObjectPair interaction)
			{
				return "Set Cost: " + mCost;
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[2] { "Door . . . ", "Set Cost . . . " };
			}

			protected override bool Test(Sim a, Door target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim actor, Door target, List<InteractionObjectPair> results)
			{
				float[] array = new float[17]
				{
					float.MinValue,
					-500f,
					-100f,
					-50f,
					-25f,
					-10f,
					-5f,
					-1f,
					0f,
					1f,
					5f,
					10f,
					25f,
					50f,
					100f,
					500f,
					float.MaxValue
				};
				float[] array2 = array;
				foreach (float cost in array2)
				{
					results.Add(new InteractionObjectPair(new Definition(cost), target));
				}
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Definition definition = InteractionDefinition as Definition;
			Target.SetPortalCost(definition.mCost);
			return true;
		}
	}

	private sealed class DEBUG_SetCalculatedFrontDoor : ImmediateInteraction<Sim, Door>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, Door, DEBUG_SetCalculatedFrontDoor>
		{
			protected override string GetInteractionName(Sim a, Door target, InteractionObjectPair interaction)
			{
				return "Set as Calculated Front Door";
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { "Door . . . " };
			}

			protected override bool Test(Sim a, Door target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.LotCurrent == null)
				{
					return false;
				}
				if (target is IAmNotAFrontDoor)
				{
					return false;
				}
				Door frontDoor = target.LotCurrent.GetFrontDoor(eFrontDoorType.kFrontDoorTypeCalculated);
				if (frontDoor == target)
				{
					return false;
				}
				int roomConnectedToOutside = target.LotCurrent.GetRoomConnectedToOutside(target);
				if (target.LotCurrent.ValidateRoomForFrontDoor(roomConnectedToOutside, target.Level) == float.MaxValue)
				{
					return false;
				}
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			return Target.LotCurrent.SetFrontDoor(Target, eFrontDoorType.kFrontDoorTypeCalculated, validate: true);
		}
	}

	private sealed class DEBUG_UnsetCalculatedFrontDoor : ImmediateInteraction<Sim, Door>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, Door, DEBUG_UnsetCalculatedFrontDoor>
		{
			protected override string GetInteractionName(Sim a, Door target, InteractionObjectPair interaction)
			{
				return "Unset as Calculated Front Door";
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { "Door . . . " };
			}

			protected override bool Test(Sim a, Door target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target is IAmNotAFrontDoor)
				{
					return false;
				}
				Door frontDoor = target.LotCurrent.GetFrontDoor(eFrontDoorType.kFrontDoorTypeCalculated);
				if (frontDoor == target)
				{
					return true;
				}
				return false;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Target.LotCurrent.SetFrontDoor(null, eFrontDoorType.kFrontDoorTypeCalculated, validate: false);
			return true;
		}
	}

	private sealed class DEBUG_UnsetFrontDoor : ImmediateInteraction<Sim, Door>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<Sim, Door, DEBUG_UnsetFrontDoor>
		{
			protected override string GetInteractionName(Sim a, Door target, InteractionObjectPair interaction)
			{
				return "Unset Front Door";
			}

			public override string[] GetPath(bool isFemale)
			{
				return new string[1] { "Door . . . " };
			}

			protected override bool Test(Sim a, Door target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target is IAmNotAFrontDoor)
				{
					return false;
				}
				Door frontDoor = target.LotCurrent.GetFrontDoor(eFrontDoorType.kFrontDoorTypeOverride);
				if (frontDoor == target)
				{
					return true;
				}
				return false;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Target.LotCurrent.SetFrontDoor(null, eFrontDoorType.kFrontDoorTypeOverride, validate: false);
			return true;
		}
	}

	public const float kHorseOffsetEntry = -0.325f;

	public const float kHorseOffsetExit = 1.6f;

	private const string sLocalizationKey = "Gameplay/Abstracts/Door";

	private const uint kIsNPCDoor = 170425543u;

	public static string kBreakDownLockedEffect = "ep2firemanaxe";

	public static readonly Slot[] UpgradeRoutingSlots = new Slot[2]
	{
		RoutingSlots.Upgrade_Front,
		RoutingSlots.Upgrade_Rear
	};

	public static float kCloseDoorClearanceDistance = 2f;

	private static string[] kDoorbellSoundLocalizationKeys = new string[5] { "DefaultDoorbellSound", "DoorbellSims", "DoorbellSpooky", "DoorbellExpensive", "DoorbellComedy" };

	public static string[] kDoorbellSoundEffects = new string[5] { "Doorbell_ring", "doorbell_ringa", "doorbell_ringb", "doorbell_ringc", "doorbell_ringd" };

	private static InteractionDefinition[] sInteractionDefinitions = new InteractionDefinition[9]
	{
		ChangeDoorbellSound.Singleton,
		EnterDoor.Singleton,
		SetFrontDoor.Singleton,
		UnsetFrontDoor.Singleton,
		BreakDownDoor.Singleton,
		RingNPCDoor.Singleton,
		VelvetRopesInteractionProxy.Singleton,
		HolidayHouseLights.SetHolidayHouseLights.Singleton,
		HolidayHouseLights.SetHolidayHouseLightsCustom.Singleton
	};

	[TunableComment("The minimum time before a door closes, after being opened (in sim minutes).")]
	[Tunable]
	private static float kMinimumTimeBeforeClosingDoor = 10f;

	[TunableComment("The default cost of traversing the portal to the path planner.")]
	[Tunable]
	private static float kDefaultPortalCost = 1f;

	[Tunable]
	[TunableComment("The cost during privacy of traversing the portal to the path planner.  To disable doors completely during privacy, set to > 1,000,000.0f.")]
	private static float kPrivacyPortalCost = 100000f;

	[Tunable]
	[TunableComment("The upgrade tuning for changing the doorbell sound of the household.")]
	private static Handiness.UpgradeTuning kUpgradeDoorbellSoundTuning = new Handiness.UpgradeTuning();

	public bool IsUpgrading;

	private Dictionary<DoorEvent.tEventType, List<DoorEvent>> mEventListDictionary;

	private uint mEventCounter;

	protected StateMachineClient mSmcDoor;

	private float mCost;

	protected DoorOpenState[] mDoorOpenStates;

	public VisualEffect DoorEffect;

	private bool mIsNPCDoor;

	public IVelvetRopes VelvetRope;

	protected override bool CanGoThrough => !mIsNPCDoor;

	public bool IsNPCDoor => mIsNPCDoor;

	public float PortalCost => mCost;

	public bool HasVelvetRopes => VelvetRope != null;

	public static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/Abstracts/Door:" + name, parameters);
	}

	public Door()
	{
		mEventCounter = 0u;
		mCost = kDefaultPortalCost;
		mEventListDictionary = new Dictionary<DoorEvent.tEventType, List<DoorEvent>>();
		foreach (DoorEvent.tEventType value in Enum.GetValues(typeof(DoorEvent.tEventType)))
		{
			mEventListDictionary[value] = new List<DoorEvent>();
		}
	}

	public override void OnCreation()
	{
		RecalculatePortalCost();
	}

	public override void OnLoad()
	{
		SetPortalCost(mCost);
	}

	public override void OnStartup()
	{
		base.OnStartup();
		AddComponent<UpgradableComponent>(new object[0]);
		AddComponent<DoorPortalComponent>(new object[0]);
		RoutingFootprintLocking.AddLockKey(ObjectId, RoutingFootprintLocking.LockType.MustHaveKey, ObjectId.mValue);
	}

	public override void Dispose()
	{
		base.Dispose();
		StopEffect();
	}

	public override void LoadWorldBuilderData()
	{
		base.LoadWorldBuilderData();
		WorldBuilderData.Get("SecretDoor", ObjectId, "mIsNPCDoor", ref mIsNPCDoor);
	}

	public override void SaveWorldBuilderData()
	{
		base.SaveWorldBuilderData();
		WorldBuilderData.Set("SecretDoor", ObjectId, "mIsNPCDoor", mIsNPCDoor, defaultValue: false);
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		bool result = base.ImportContent(resKeyTable, objIdTable, reader);
		reader.ReadBool(170425543u, out mIsNPCDoor, defaultValue: false);
		if (GetContainedObject(Slot.ContainmentSlot_0) is IVelvetRopes velvetRope)
		{
			VelvetRope = velvetRope;
		}
		RecalculatePortalCost();
		return result;
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		bool result = base.ExportContent(resKeyTable, objIdTable, writer);
		writer.WriteBool(170425543u, mIsNPCDoor);
		return result;
	}

	protected override void DoReset(ResetInformation resetInformation)
	{
		base.DoReset(resetInformation);
		mSmcDoor = null;
		ForceClosed();
		mSmcDoor = null;
	}

	public override void OnHandToolPlacement()
	{
		if (HasVelvetRopes)
		{
			(GetContainedObject(Slot.ContainmentSlot_0) as IVelvetRopes).OnDoorPlacement();
		}
		base.OnHandToolPlacement();
	}

	public override void OnHandToolPickup(ePickupTypeHandTool pickupType)
	{
		if (HasVelvetRopes)
		{
			(GetContainedObject(Slot.ContainmentSlot_0) as IVelvetRopes).OnDoorPickup(pickupType);
		}
		base.OnHandToolPickup(pickupType);
	}

	protected virtual StateMachineClient AcquireStateMachineClient()
	{
		StateMachineClient stateMachineClient = null;
		try
		{
			stateMachineClient = StateMachineClient.Acquire(ObjectId, "GenericDoor", AnimationPriority.kAPDefault, allowYield: false);
		}
		catch (ResetException)
		{
			throw;
		}
		catch
		{
			return null;
		}
		if (stateMachineClient != null)
		{
			stateMachineClient.UseActorBridgeOrigins = false;
			stateMachineClient.SetActor("door", this);
			stateMachineClient.EnterState("door", "Enable");
		}
		return stateMachineClient;
	}

	public string GetObjectStateMachineName()
	{
		return "GenericDoor";
	}

	protected virtual void SetSacsParameters(StateMachineClient smcDoor, uint doorIndex, tSide doorSide)
	{
		YesOrNo paramValue = ((doorSide != tSide.Front) ? YesOrNo.yes : YesOrNo.no);
		smcDoor.SetParameter("outward" + doorIndex, paramValue);
	}

	protected virtual bool SacsRequest(uint doorIndex, tSide doorSide, string statePrefix)
	{
		if (mSmcDoor == null)
		{
			mSmcDoor = AcquireStateMachineClient();
		}
		if (mSmcDoor != null)
		{
			SetSacsParameters(mSmcDoor, doorIndex, doorSide);
			mSmcDoor.RequestState(yield: false, "door", statePrefix + doorIndex);
			return true;
		}
		return false;
	}

	public static string GetDoorbellSoundFromLocalizationKey(string soundEffectKey)
	{
		if (!string.IsNullOrEmpty(soundEffectKey))
		{
			int num = IndexOfDoorbellSoundEffectKey(soundEffectKey);
			if (num >= 0 && num < kDoorbellSoundEffects.Length)
			{
				return kDoorbellSoundEffects[num];
			}
		}
		return string.Empty;
	}

	private static int IndexOfDoorbellSoundEffectKey(string soundEffectKey)
	{
		for (int i = 0; i < kDoorbellSoundLocalizationKeys.Length; i++)
		{
			if (kDoorbellSoundLocalizationKeys[i] == soundEffectKey)
			{
				return i;
			}
		}
		return -1;
	}

	public void RingBell()
	{
		if (LotCurrent != null && LotCurrent.Household != null && !string.IsNullOrEmpty(LotCurrent.Household.DoorbellSound))
		{
			Audio.StartObjectSound(ObjectId, LotCurrent.Household.DoorbellSound, loop: false);
		}
		else if (kDoorbellSoundEffects.Length > 0)
		{
			Audio.StartObjectSound(ObjectId, kDoorbellSoundEffects[0], loop: false);
		}
		BroadcastDoorbellEffects();
	}

	public void BroadcastDoorbellEffects()
	{
		if (LotCurrent == null)
		{
			return;
		}
		foreach (Sim sim in LotCurrent.GetSims())
		{
			if (!sim.IsOutside)
			{
				ReactToDisturbance.NoiseBroadcastCallback(sim, this, isFirstTime: true, Origin.FromDoorbell, isCryingBabyBuffInfinite: false);
			}
		}
		foreach (Sim animal in LotCurrent.GetAnimals())
		{
			if (animal.IsPet)
			{
				animal.PetReactToDoorbell(this);
			}
		}
		ILargeBird[] objects = LotCurrent.GetObjects<ILargeBird>();
		foreach (ILargeBird largeBird in objects)
		{
			if (!largeBird.IsOutside && largeBird.SharedBirdTest())
			{
				largeBird.HeardDoorbell();
			}
		}
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		base.AddBuildBuyInteractions(buildBuyInteractions);
		buildBuyInteractions.Add(SetFrontDoor.Singleton);
		buildBuyInteractions.Add(UnsetFrontDoor.Singleton);
		buildBuyInteractions.Add(MakeNPCDoor.Singleton);
	}

	protected override void AddDebugInteractions(List<InteractionDefinition> debugInteractions)
	{
		debugInteractions.Add(DEBUG_OpenClose.Singleton);
		debugInteractions.Add(DEBUG_SetCost.Singleton);
		debugInteractions.Add(SetFrontDoor.Singleton);
		debugInteractions.Add(DEBUG_UnsetFrontDoor.Singleton);
		debugInteractions.Add(DEBUG_CheckLockStatus.Singleton);
		base.AddDebugInteractions(debugInteractions);
	}

	public override List<InteractionObjectPair> GetAllDebugInteractionsForActor(IActor s)
	{
		List<InteractionObjectPair> outInteractions = base.GetAllDebugInteractionsForActor(s);
		if (LotCurrent != null)
		{
			AddDebugInteractionsForObject(s, LotCurrent, ref outInteractions);
		}
		return outInteractions;
	}

	public override List<InteractionObjectPair> GetAllInteractionsForActor(IActor s)
	{
		List<InteractionObjectPair> outInteractions = base.GetAllInteractionsForActor(s);
		if (Parent != null && (this is DoorBuildableShell || this is DoorSingleBuildableShell || this is DoorSlidingBuildableShell))
		{
			AddInteractionsForObject(s, Parent, ref outInteractions);
		}
		else if (!IsNPCDoor && LotCurrent != null)
		{
			AddInteractionsForObject(s, LotCurrent, ref outInteractions);
		}
		return BuildInteractions(s, outInteractions, sInteractionDefinitions);
	}

	public override bool HasAnyInteraction(IActor actor, ref InteractionInstanceParameters parameters)
	{
		if (TestInteractions(actor, ref parameters, sInteractionDefinitions))
		{
			return true;
		}
		bool flag = base.HasAnyInteraction(actor, ref parameters);
		if (Parent != null && (this is DoorBuildableShell || this is DoorSingleBuildableShell || this is DoorSlidingBuildableShell))
		{
			flag |= Parent.HasAnyInteraction(actor, ref parameters);
		}
		if (!flag && !IsNPCDoor && LotCurrent != null)
		{
			return LotCurrent.HasAnyInteraction(actor, ref parameters);
		}
		return flag;
	}

	public abstract tState GetDoorState(uint doorIndex);

	protected abstract bool SetDoorState(uint doorIndex, tState newState);

	protected virtual bool CanClose(uint doorIndex, ObjectGuid simId)
	{
		DoorEvent.tEventType key = DoorEvent.tEventType.EventRoutingThroughDoor;
		if (mEventListDictionary.ContainsKey(key))
		{
			bool result = true;
			if (0 < mEventListDictionary[key].Count)
			{
				List<DoorEvent> list = mEventListDictionary[key];
				DoorEvent[] array = list.ToArray();
				DoorEvent[] array2 = array;
				foreach (DoorEvent doorEvent in array2)
				{
					if (simId == doorEvent.SenderObjId)
					{
						mEventListDictionary[key].Remove(doorEvent);
					}
					else if (doorIndex == doorEvent.DoorIndex)
					{
						result = false;
					}
				}
			}
			return result;
		}
		return false;
	}

	protected virtual bool CanOpen(uint doorIndex, ObjectGuid simId)
	{
		DoorEvent.tEventType tEventType = DoorEvent.tEventType.EventRoutingThroughDoor;
		if (mEventListDictionary.ContainsKey(tEventType))
		{
			DoorEvent doorEvent = new DoorEvent(tEventType, mEventCounter);
			doorEvent.DoorIndex = doorIndex;
			doorEvent.SenderObjId = simId;
			doorEvent.DoorObjId = ObjectId;
			foreach (DoorEvent item in mEventListDictionary[tEventType])
			{
				if (item.IsSameAs(doorEvent))
				{
					return true;
				}
			}
			return AddEvent(doorEvent);
		}
		return false;
	}

	protected void InitializeDoorOpenStates()
	{
		if (mDoorOpenStates == null)
		{
			mDoorOpenStates = new DoorOpenState[2];
			mDoorOpenStates[0] = new DoorOpenState();
			mDoorOpenStates[1] = new DoorOpenState();
		}
	}

	public virtual bool Open(uint doorIndex, tSide doorSide)
	{
		InitializeDoorOpenStates();
		mDoorOpenStates[doorIndex].mUseCount++;
		if (mDoorOpenStates[doorIndex].mUseCount == 1 && mDoorOpenStates[doorIndex].mAlarm == AlarmHandle.kInvalidHandle)
		{
			mDoorOpenStates[doorIndex].mFirstSideOpened = doorSide;
			if (PlayOpenAnimation)
			{
				SacsRequest(doorIndex, doorSide, "Opened");
			}
			else
			{
				PlayOpenAnimation = true;
			}
		}
		RemoveAlarm(mDoorOpenStates[doorIndex].mAlarm);
		mDoorOpenStates[doorIndex].mAlarm = AlarmHandle.kInvalidHandle;
		return true;
	}

	private void CloseDoor0AlarmHandler()
	{
		SacsRequest(0u, mDoorOpenStates[0].mFirstSideOpened, "Closed");
		mDoorOpenStates[0].mAlarm = AlarmHandle.kInvalidHandle;
	}

	private void CloseDoor1AlarmHandler()
	{
		SacsRequest(1u, mDoorOpenStates[1].mFirstSideOpened, "Closed");
		mDoorOpenStates[1].mAlarm = AlarmHandle.kInvalidHandle;
	}

	public virtual bool Close(uint doorIndex, tSide doorSide)
	{
		PlayOpenAnimation = true;
		InitializeDoorOpenStates();
		if (mDoorOpenStates[doorIndex].mUseCount > 0)
		{
			mDoorOpenStates[doorIndex].mUseCount--;
			if (mDoorOpenStates[doorIndex].mUseCount == 0)
			{
				AlarmTimerCallback callback = CloseDoor0AlarmHandler;
				if (doorIndex == 1)
				{
					callback = CloseDoor1AlarmHandler;
				}
				mDoorOpenStates[doorIndex].mAlarm = AddAlarm(kMinimumTimeBeforeClosingDoor, TimeUnit.Minutes, callback, string.Concat(this, "_CloseLane_", doorIndex), AlarmType.DeleteOnReset);
			}
		}
		return true;
	}

	protected bool ForceClosed()
	{
		if (mDoorOpenStates != null)
		{
			mDoorOpenStates[0].mUseCount = 0;
			mDoorOpenStates[1].mUseCount = 0;
			RemoveAlarm(mDoorOpenStates[0].mAlarm);
			RemoveAlarm(mDoorOpenStates[1].mAlarm);
			CloseDoor0AlarmHandler();
			CloseDoor1AlarmHandler();
		}
		return true;
	}

	public virtual bool ToOpen(ObjectGuid approachingSim, uint doorIndex, tSide doorSide)
	{
		return false;
	}

	public virtual bool ToClose(ObjectGuid approachingSim, uint doorIndex, tSide doorSide)
	{
		return false;
	}

	public void DisablePrivacy()
	{
		SetPortalCost(kDefaultPortalCost);
	}

	public void EnablePrivacy()
	{
		SetPortalCost(kPrivacyPortalCost);
	}

	public virtual void OnBuildBuyExit()
	{
		SetPortalCost(mCost);
	}

	public void RecalculatePortalCost()
	{
		if (Sims3.SimIFace.Objects.IsValid(ObjectId) && !LotManager.sIsBuildBuyModeOn && LotCurrent != null)
		{
			LotCurrent.RequestPrivacyUpdate();
		}
	}

	public void SetPortalAgeGenderFlags(CASAgeGenderFlags flags)
	{
		Route.SetPortalAgeGenderFlags(ObjectId, (uint)flags);
	}

	public void SetPortalCost(float cost)
	{
		if (!InInventory && !HasVelvetRopes)
		{
			mCost = cost;
			Route.SetPortalCost(ObjectId, cost);
		}
	}

	public static bool AreRoomsAdjacent(Lot lot, int roomId1, int roomId2)
	{
		List<Door> objectsInRoom = lot.GetObjectsInRoom<Door>(roomId1);
		foreach (Door item in objectsInRoom)
		{
			if (item.ConnectsToRoom(roomId2))
			{
				return true;
			}
		}
		return false;
	}

	public static List<Door> GetDoorsEnclosingObject(IGameObject obj)
	{
		if (obj != null && obj.LotCurrent != null)
		{
			return obj.LotCurrent.GetObjectsInRoom<Door>(obj.RoomId);
		}
		return null;
	}

	private uint GetDoorIndexFromSlot(Slot slot)
	{
		int numDoors = GetNumDoors();
		for (uint num = 0u; num < numDoors; num++)
		{
			if (slot == Slots.Hash("RoutingSlot_Door" + num + "_Front") || slot == Slots.Hash("RoutingSlot_Door" + num + "_Rear"))
			{
				return num;
			}
		}
		return uint.MaxValue;
	}

	private tSide GetDoorSide(Vector3 position)
	{
		_ = Vector3.Zero;
		Slot[] slots = new Slot[2]
		{
			RoutingSlots.Door0_Front,
			RoutingSlots.Door0_Rear
		};
		Slot nearestSlot = GetNearestSlot(position, slots);
		if (nearestSlot == RoutingSlots.Door0_Front)
		{
			return tSide.Front;
		}
		return tSide.Back;
	}

	public virtual int GetNumDoors()
	{
		int num = GetRoutingSlots().Length;
		if (num >= 2)
		{
			return (num - 2) / 2;
		}
		return 0;
	}

	public virtual tSide GetOutdoorSide()
	{
		int roomIdOfDoorSide = GetRoomIdOfDoorSide(tSide.Front);
		int roomIdOfDoorSide2 = GetRoomIdOfDoorSide(tSide.Back);
		tSide result = tSide.Back;
		if (roomIdOfDoorSide == 0)
		{
			result = tSide.Front;
		}
		else if (roomIdOfDoorSide2 == 0)
		{
			result = tSide.Back;
		}
		else if (LotCurrent != null)
		{
			int roomConnectedToOutside = LotCurrent.GetRoomConnectedToOutside(this);
			if (roomConnectedToOutside == roomIdOfDoorSide)
			{
				result = tSide.Back;
			}
			else if (roomConnectedToOutside == roomIdOfDoorSide2)
			{
				result = tSide.Front;
			}
		}
		return result;
	}

	public Slot GetPairedSlot(Slot slot)
	{
		int numDoors = GetNumDoors();
		for (int i = 0; i < numDoors; i++)
		{
			if (slot == Slots.Hash("RoutingSlot_Door" + i + "_Front"))
			{
				return Slots.Hash("RoutingSlot_Door" + i + "_Rear");
			}
			if (slot == Slots.Hash("RoutingSlot_Door" + i + "_Rear"))
			{
				return Slots.Hash("RoutingSlot_Door" + i + "_Front");
			}
		}
		return Slot.None;
	}

	public int GetRoomIdOfDoorSide(tSide side)
	{
		Slot slotName = ((side != tSide.Front) ? RoutingSlots.Door0_Rear : RoutingSlots.Door0_Front);
		LotLocation location = default;
		World.GetLotLocation(GetSlotPosition(slotName), ref location);
		return location.mRoom;
	}

	public override List<Slot> GetRoutingSlotsOnSide(tSide side)
	{
		string text = ((side != tSide.Front) ? "_Rear" : "_Front");
		List<Slot> list = new List<Slot>();
		int numDoors = GetNumDoors();
		for (int i = 0; i < numDoors; i++)
		{
			list.Add(Slots.Hash("RoutingSlot_Door" + i + text));
		}
		return list;
	}

	public static tSide GetSide(uint side)
	{
		if (side == 0)
		{
			return tSide.Front;
		}
		return tSide.Back;
	}

	public override bool GetSideOfDoorInRoom(int roomId, out tSide side)
	{
		LotLocation location = default;
		World.GetLotLocation(GetSlotPosition(RoutingSlots.Door0_Front), ref location);
		if (location.mRoom == roomId)
		{
			side = tSide.Front;
			return true;
		}
		World.GetLotLocation(GetSlotPosition(RoutingSlots.Door0_Rear), ref location);
		if (location.mRoom == roomId)
		{
			side = tSide.Back;
			return true;
		}
		side = tSide.Front;
		return false;
	}

	public bool AddEvent(DoorEvent ev)
	{
		if (mEventListDictionary.ContainsKey(ev.Type))
		{
			ev.EventIndex = mEventCounter;
			mEventListDictionary[ev.Type].Add(ev);
			mEventCounter++;
			return true;
		}
		return false;
	}

	public bool AddRoutingEvent(World.DoorRoutingEventArgs evArgs)
	{
		return true;
	}

	public bool IsInUse()
	{
		if (mEventListDictionary.ContainsKey(DoorEvent.tEventType.EventRoutingThroughDoor) && 0 < mEventListDictionary[DoorEvent.tEventType.EventRoutingThroughDoor].Count)
		{
			return true;
		}
		return false;
	}

	public void ResetEventCounter()
	{
		mEventCounter = 0u;
	}

	public bool GenericPrankTest(Sim prankster, bool requiresResidentAtHome, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
	{
		Lot lotCurrent = LotCurrent;
		if (lotCurrent != null)
		{
			if (lotCurrent == prankster.LotHome || prankster.IsGreetedOnLot(lotCurrent))
			{
				return false;
			}
			Door frontDoor = lotCurrent.GetFrontDoor(eFrontDoorType.kFrontDoorTypeDefault);
			if (frontDoor == null || frontDoor != this)
			{
				return false;
			}
			Household household = lotCurrent.Household;
			if (household == null)
			{
				greyedOutTooltipCallback = InteractionInstance.CreateTooltipCallback(Localization.LocalizeString("Gameplay/Core/VisitLot:NoOneLivesHere"));
				return false;
			}
			float num = SimClock.ElapsedTime(TimeUnit.Hours, lotCurrent.LastTimePranked);
			if (lotCurrent.LastTimePranked != DateAndTime.Invalid && num < Lot.kPrankCooldownHours)
			{
				greyedOutTooltipCallback = InteractionInstance.CreateTooltipCallback(LocalizeString("RecentlyPranked"));
				return false;
			}
			if (requiresResidentAtHome)
			{
				bool flag = false;
				foreach (Sim sim in household.Sims)
				{
					if (sim.IsAtHome)
					{
						flag = true;
						break;
					}
				}
				if (!flag)
				{
					greyedOutTooltipCallback = InteractionInstance.CreateTooltipCallback(LocalizeString("NobodyHome"));
					return false;
				}
			}
			if (!BoobyTrapComponent.SharedPrankOrTrapTest(prankster, ref greyedOutTooltipCallback))
			{
				return false;
			}
			return true;
		}
		return false;
	}

	public void StartEffect(string effectName)
	{
		if (DoorEffect == null)
		{
			DoorEffect = VisualEffect.Create(effectName);
			DoorEffect.SetUseBoneParenting(connectToBone: true);
			DoorEffect.ParentTo(this, Slot.TransformBone);
			DoorEffect.Start();
		}
	}

	public void StopEffect()
	{
		if (DoorEffect != null)
		{
			DoorEffect.Stop();
			DoorEffect.Dispose();
			DoorEffect = null;
		}
	}

	public static Door GetFrontDoorFromTarget(GameObject target)
	{
		if (target is Lot { IsCommunityLot: false } lot && lot.FindFrontDoor() != null)
		{
			return lot.FindFrontDoor();
		}
		if (target is Door result)
		{
			return result;
		}
		return null;
	}
}
