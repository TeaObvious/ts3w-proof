// Original PC 1.67 Sims3GameplaySystems.dll; complete type Sims3.Gameplay.Objects.Elevator.ElevatorInterior.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.CAS;
using Sims3.Gameplay.Controllers;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.EventSystem;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;
using Sims3.SimIFace.CustomContent;

namespace Sims3.Gameplay.Objects.Elevator;

public class ElevatorInterior : GameObject, IElevatorObject, IPortalConnectionObject, IDoNotGetFogged, ILight, IUnparentableWhenInInventory, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent
{
	public class ElevatorPortalComponent : PortalComponent
	{
		[Persistable]
		protected class ActiveUserEntry
		{
			public ObjectGuid mTask = ObjectGuid.InvalidObjectGuid;

			public bool mbResult = true;

			public bool mbSleeping;

			public Slot mSlotAssignment;

			public bool mbGoingUp;
		}

		protected Dictionary<SimDescription, ActiveUserEntry> mAssignedSims = new Dictionary<SimDescription, ActiveUserEntry>();

		protected List<Slot> mAvailableSlots = new List<Slot>();

		private static readonly List<Slot> kSortSlots = new List<Slot>(new Slot[6]
		{
			kSimRoutingSlots[0],
			kSimRoutingSlots[1],
			kSimContainmentSlots[0],
			kSimContainmentSlots[1],
			kSimContainmentSlots[2],
			kSimContainmentSlots[3]
		});

		private bool mbElevatorReadyForLaunch;

		private bool mbRequiredTimeElapsedBeforeLaunch;

		private AlarmHandle mAlarmHandle = AlarmHandle.kInvalidHandle;

		private DateAndTime mFailsafeTime = default;

		private bool mbDoorWasOpenWhenLaunched;

		private bool mbElevatorRequested;

		private AlarmHandle mRequestAlarmHandle = AlarmHandle.kInvalidHandle;

		private static Comparison<Slot> SortSlots = (Slot slot1, Slot slot2) =>
		{
			int num = kSortSlots.IndexOf(slot1);
			int value = kSortSlots.IndexOf(slot2);
			return num.CompareTo(value);
		};

		[CompilerGenerated]
		private static Comparison<Slot> <>9__CachedAnonymousMethodDelegate1;

		protected override PortalAddInitTime ShouldAddPortalAtInit => PortalAddInitTime.OnStartup;

		private ElevatorInterior PortalOwner => Owner as ElevatorInterior;

		protected override bool AddToUseListDuringTraversal => false;

		protected override bool RemoveFromUseListAfterTraversal => false;

		public override bool CanUseUmbrella => false;

		public bool IsElevatorRequested => mbElevatorRequested;

		public ElevatorPortalComponent()
		{
		}

		public ElevatorPortalComponent(GameObject o)
			: base(o)
		{
		}

		public override PortalObjectType GetPortalObjectType()
		{
			return PortalObjectType.AnimateThroughPortalObject;
		}

		protected override LaneInfoFlags GetLaneFlagsForLaneIndex(uint laneIndex)
		{
			LaneInfoFlags laneInfoFlags = LaneInfoFlags.PortalPlanIgnoresPortalObject;
			if (laneIndex == 0 || laneIndex == 1)
			{
				laneInfoFlags |= LaneInfoFlags.IrregularLane;
			}
			return laneInfoFlags;
		}

		public override void OnLoad()
		{
			Simulator.AddObject(new OneShotFunctionTask(WakeAll));
		}

		private void WakeAll()
		{
			foreach (ActiveUserEntry value in mAssignedSims.Values)
			{
				if (value.mbSleeping)
				{
					Simulator.Wake(value.mTask, assertIfNotSleeping: false);
				}
			}
		}

		public override uint GetNumLanes()
		{
			return 6u;
		}

		public override Slot[] GetSlotsForLaneIndex(uint laneIndex)
		{
			return laneIndex switch
			{
				0u => new Slot[2]
				{
					kSimRoutingSlots[0],
					kSimRoutingSlots[0]
				}, 
				1u => new Slot[2]
				{
					kSimRoutingSlots[1],
					kSimRoutingSlots[1]
				}, 
				2u => new Slot[2]
				{
					kSimContainmentSlots[0],
					kSimContainmentSlots[0]
				}, 
				3u => new Slot[2]
				{
					kSimContainmentSlots[1],
					kSimContainmentSlots[1]
				}, 
				4u => new Slot[2]
				{
					kSimContainmentSlots[2],
					kSimContainmentSlots[2]
				}, 
				5u => new Slot[2]
				{
					kSimContainmentSlots[3],
					kSimContainmentSlots[3]
				}, 
				_ => new Slot[2]
				{
					kSimRoutingSlots[0],
					kSimRoutingSlots[0]
				}, 
			};
		}

		public override List<Slot> GetStartSlotsForApproachingSim(Sim s, Vector3 preferredPos, ref bool preferredLaneSelected)
		{
			List<Slot> list = new List<Slot>();
			if (mAssignedSims.TryGetValue(s.SimDescription, out var value) && value.mSlotAssignment != Slot.None)
			{
				if (value.mSlotAssignment == kSimMagicSlot)
				{
					list.Add(kSimContainmentSlots[0]);
				}
				else
				{
					list.Add(value.mSlotAssignment);
				}
				if (value.mSlotAssignment == Slot.RoutingSlot_0 || value.mSlotAssignment == Slot.RoutingSlot_1)
				{
					preferredLaneSelected = false;
				}
			}
			return list;
		}

		public override bool IsLaneUnobstructed(Slot[] laneSlots, Sim sim, bool checkForSims, Route.RouteOption routeOptions)
		{
			return true;
		}

		public override void OnLaneLocked(Sim s, LaneInfo lane)
		{
		}

		public override void OnLaneUnlocked(Sim s, LaneInfo lane)
		{
			if (!Sims3.SimIFace.Objects.IsValid(s.ObjectId))
			{
				UnregisterSim(s);
				PortalOwner.RemoveElevatorColumnFromUseList(s, exclude: false);
				PortalOwner.DoorsObj.OnExitElevator(s);
			}
		}

		public override void OnStartup()
		{
			mAddPortalsCallback = AddPortals;
			if (mAvailableSlots.Count == 0 && IsElevatorEmpty())
			{
				ResetAvailableSlots();
			}
			base.OnStartup();
		}

		public override void OnReset()
		{
			ResetAvailableSlots();
			mbElevatorReadyForLaunch = false;
			mbRequiredTimeElapsedBeforeLaunch = false;
			mAssignedSims.Clear();
			base.OnReset();
		}

		private void ResetAvailableSlots()
		{
			mAvailableSlots.Clear();
			mAvailableSlots.AddRange(kSortSlots);
		}

		public void AddPortals()
		{
			UpdateAllElevatorPortalsOnLot(PortalOwner.LotCurrent);
		}

		public static void UpdateAllElevatorPortalsOnLot(Lot lot)
		{
			CASAGSAvailabilityFlags agsFlags = (CASAGSAvailabilityFlags)(GameUtils.IsInstalled(ProductVersion.EP5) ? 14354431 : 2047);
			ElevatorInterior[] objects = lot.GetObjects<ElevatorInterior>();
			List<IElevatorObject> list = new List<IElevatorObject>();
			list.AddRange(lot.GetObjects<ElevatorShaft>());
			ElevatorInterior[] array = objects;
			foreach (ElevatorInterior elevatorInterior in array)
			{
				Route.RemovePortals(elevatorInterior.ObjectId);
				elevatorInterior.ElevatorInteriorBelow = null;
				elevatorInterior.ElevatorInteriorAbove = null;
			}
			ElevatorInterior[] array2 = objects;
			foreach (ElevatorInterior elevatorInterior2 in array2)
			{
				ElevatorInterior[] array3 = objects;
				foreach (ElevatorInterior elevatorInterior3 in array3)
				{
					if (elevatorInterior3 != elevatorInterior2 && VerifyElevatorConnection(elevatorInterior2, elevatorInterior3, list))
					{
						Route.AddPortal(elevatorInterior2.ObjectId, elevatorInterior2.GetPositionOfSlot(kSimRoutingSlots[0]), elevatorInterior3.GetPositionOfSlot(kSimRoutingSlots[0]), kElevatorToElevatorPortalCost, PortalType.PortalTypeAnimateThrough, RoutePortalFlags.OneWayPortal, agsFlags);
						Route.AddPortal(elevatorInterior2.ObjectId, elevatorInterior2.GetPositionOfSlot(kSimRoutingSlots[1]), elevatorInterior3.GetPositionOfSlot(kSimRoutingSlots[1]), kElevatorToElevatorPortalCost, PortalType.PortalTypeAnimateThrough, RoutePortalFlags.OneWayPortal, agsFlags);
						Route.AddPortal(elevatorInterior2.ObjectId, elevatorInterior2.GetPositionOfSlot(kSimContainmentSlots[0]), elevatorInterior3.GetPositionOfSlot(kSimContainmentSlots[0]), kElevatorToElevatorPortalCost, PortalType.PortalTypeAnimateThrough, RoutePortalFlags.OneWayPortal, agsFlags);
						Route.AddPortal(elevatorInterior2.ObjectId, elevatorInterior2.GetPositionOfSlot(kSimContainmentSlots[1]), elevatorInterior3.GetPositionOfSlot(kSimContainmentSlots[1]), kElevatorToElevatorPortalCost, PortalType.PortalTypeAnimateThrough, RoutePortalFlags.OneWayPortal, agsFlags);
						Route.AddPortal(elevatorInterior2.ObjectId, elevatorInterior2.GetPositionOfSlot(kSimContainmentSlots[2]), elevatorInterior3.GetPositionOfSlot(kSimContainmentSlots[2]), kElevatorToElevatorPortalCost, PortalType.PortalTypeAnimateThrough, RoutePortalFlags.OneWayPortal, agsFlags);
						Route.AddPortal(elevatorInterior2.ObjectId, elevatorInterior2.GetPositionOfSlot(kSimContainmentSlots[3]), elevatorInterior3.GetPositionOfSlot(kSimContainmentSlots[3]), kElevatorToElevatorPortalCost, PortalType.PortalTypeAnimateThrough, RoutePortalFlags.OneWayPortal, agsFlags);
						if (elevatorInterior3.Level > elevatorInterior2.Level)
						{
							elevatorInterior2.ElevatorInteriorAbove = elevatorInterior3;
						}
						else
						{
							elevatorInterior2.ElevatorInteriorBelow = elevatorInterior3;
						}
					}
				}
			}
		}

		public void RemovePortals()
		{
			Route.RemovePortals(Owner.ObjectId);
		}

		public void DelayElevatorFromLeaving(float additionalTimeInMinutes)
		{
			if (!IsElevatorEmpty())
			{
				if (mAlarmHandle != AlarmHandle.kInvalidHandle)
				{
					PortalOwner.SetNewAlarmTime(mAlarmHandle, additionalTimeInMinutes + kMinutesToHoldElevator, TimeUnit.Minutes);
					return;
				}
				mbRequiredTimeElapsedBeforeLaunch = false;
				mAlarmHandle = PortalOwner.AddAlarm(additionalTimeInMinutes + kMinutesToHoldElevator, TimeUnit.Minutes, OnSimApproachTimeout, "ElevatorInterior: OnSimApproachTimeout", AlarmType.AlwaysPersisted);
			}
		}

		public override bool OnPortalStart(Sim s)
		{
			if (mAssignedSims.TryGetValue(s.SimDescription, out var value))
			{
				mbDoorWasOpenWhenLaunched = false;
				value.mTask = Simulator.CurrentTask;
				if (PortalOwner.DoorsObj.mIsOpen && value.mSlotAssignment == Slot.RoutingSlot_0)
				{
					s.SetForward(PortalOwner.GetForwardOfSlot(value.mSlotAssignment));
					if (s.IsHuman)
					{
						StateMachineClient stateMachineClient = StateMachineClient.Acquire(s.ObjectId, "elevator", AnimationPriority.kAPDefault, allowYield: false);
						stateMachineClient.SetActor("x", s);
						stateMachineClient.SetActor("elevatorInterior", PortalOwner);
						stateMachineClient.EnterState("x", "Enter");
						stateMachineClient.RequestState("x", "PushButton");
						PortalOwner.DoorsObj.StartButtonEffect(IsSimGoingUp(s));
						stateMachineClient.RequestState("x", "Exit");
					}
				}
				else if (value.mSlotAssignment == Slot.RoutingSlot_1)
				{
					s.SetForward(PortalOwner.GetForwardOfSlot(value.mSlotAssignment));
				}
				s.LoopIdle();
				if (IsElevatorFull())
				{
					OnSimApproachTimeout();
				}
				mFailsafeTime = SimClock.CurrentTime();
				bool flag = false;
				value.mbSleeping = true;
				while (!mbElevatorReadyForLaunch)
				{
					if (mbRequiredTimeElapsedBeforeLaunch && IsElevatorReadyForLaunch())
					{
						mbElevatorReadyForLaunch = true;
						mbRequiredTimeElapsedBeforeLaunch = false;
						PortalOwner.AddToUseList(s);
						flag = true;
						if (PortalOwner.DoorsObj.mIsOpen)
						{
							mbDoorWasOpenWhenLaunched = true;
							PortalOwner.StartOneShotFunction(TriggerLeaveEffect, OneShotFunctionDisposeFlag.OnReset);
						}
						Simulator.Sleep(0u);
						mbElevatorReadyForLaunch = false;
						break;
					}
					if (SimClock.ElapsedTime(TimeUnit.Minutes, mFailsafeTime) >= 30f)
					{
						s.SetObjectToReset();
						Simulator.Sleep(0u);
						return false;
					}
					Simulator.Sleep(0u);
				}
				if (!flag)
				{
					PortalOwner.AddToUseList(s);
				}
				if (mbDoorWasOpenWhenLaunched)
				{
					Simulator.Sleep((uint)SimClock.ConvertToTicks(ElevatorDoors.kLongEffectsTime, TimeUnit.Minutes));
					PortalOwner.DoorsObj.KillAllEffects();
				}
				value.mbSleeping = false;
				value.mTask = Simulator.kBadObjectGuid;
				ElevatorPortalComponent elevatorPortalComponent = null;
				if (value.mbGoingUp && PortalOwner.mElevatorInteriorAbove != null)
				{
					elevatorPortalComponent = PortalOwner.mElevatorInteriorAbove.ElevatorPortal;
				}
				else if (PortalOwner.mElevatorInteriorBelow != null)
				{
					elevatorPortalComponent = PortalOwner.mElevatorInteriorBelow.ElevatorPortal;
				}
				if (elevatorPortalComponent != null)
				{
					if (value.mSlotAssignment == kSimMagicSlot)
					{
						s.SetPosition(elevatorPortalComponent.PortalOwner, kSimContainmentSlots[0]);
					}
					else
					{
						s.SetPosition(elevatorPortalComponent.PortalOwner, value.mSlotAssignment);
					}
				}
				return true;
			}
			return false;
		}

		public void TriggerLeaveEffect()
		{
			PortalOwner.DoorsObj.CloseElevatorDoors();
			PortalOwner.DoorsObj.StartLeaveEffects(IsElevatorGoingUp());
		}

		protected override bool OnPortalStop(Sim s)
		{
			if (mAssignedSims.TryGetValue(s.SimDescription, out var value))
			{
				ElevatorPortalComponent elevatorPortalComponent = null;
				if (value.mbGoingUp && PortalOwner.mElevatorInteriorAbove != null)
				{
					elevatorPortalComponent = PortalOwner.mElevatorInteriorAbove.ElevatorPortal;
				}
				else if (PortalOwner.mElevatorInteriorBelow != null)
				{
					elevatorPortalComponent = PortalOwner.mElevatorInteriorBelow.ElevatorPortal;
				}
				if (elevatorPortalComponent != null)
				{
					UnregisterSim(s);
					EventTracker.SendEvent(EventTypeId.kRideInElevator, s, PortalOwner.DoorsObj);
					if (elevatorPortalComponent.PortalOwner.IsActorUsingMe(s))
					{
						elevatorPortalComponent.PortalOwner.RemoveFromUseList(s);
					}
					float minutesToDelayElevator = (elevatorPortalComponent.IsElevatorRequested ? kMinutesToHoldElevator : SimClock.ConvertFromTicks(5L, TimeUnit.Minutes));
					elevatorPortalComponent.RegisterSim(s, value.mSlotAssignment, value.mbGoingUp, minutesToDelayElevator);
					return true;
				}
			}
			return false;
		}

		public override void OnPortalActionReset(Sim sim)
		{
			UnregisterSim(sim);
			PortalOwner.RemoveElevatorColumnFromUseList(sim, exclude: false);
			base.OnPortalActionReset(sim);
		}

		public bool IsElevatorFull()
		{
			return false;
		}

		public bool IsElevatorEmpty()
		{
			return mAssignedSims.Count == 0;
		}

		public bool ElevatorHasEnoughSimsToTeleportSkip()
		{
			return mAssignedSims.Count >= kSimRoutingSlots.Length;
		}

		public bool IsElevatorGoingUp()
		{
			if (mAssignedSims.Count > 0)
			{
				using Dictionary<SimDescription, ActiveUserEntry>.ValueCollection.Enumerator enumerator = mAssignedSims.Values.GetEnumerator();
				if (enumerator.MoveNext())
				{
					ActiveUserEntry current = enumerator.Current;
					return current.mbGoingUp;
				}
			}
			return false;
		}

		public bool IsSimInElevator(Sim sim)
		{
			return mAssignedSims.ContainsKey(sim.SimDescription);
		}

		public bool RegisterSim(Sim sim)
		{
			mbElevatorRequested = false;
			return RegisterSim(sim, Slot.None, bIsGoingUp: false, kMinutesToHoldElevator);
		}

		public bool RegisterSim(Sim sim, Slot assignedSlot, bool bIsGoingUp, float minutesToDelayElevator)
		{
			if (IsElevatorFull())
			{
				return false;
			}
			if (IsSimInElevator(sim))
			{
				return false;
			}
			ActiveUserEntry activeUserEntry = new ActiveUserEntry();
			if (assignedSlot != Slot.None && assignedSlot != kSimMagicSlot && !mAvailableSlots.Contains(assignedSlot))
			{
				assignedSlot = Slot.None;
			}
			if (assignedSlot == Slot.None)
			{
				activeUserEntry.mbGoingUp = IsSimGoingUp(sim);
				if (mAvailableSlots.Count == 0)
				{
					activeUserEntry.mSlotAssignment = kSimMagicSlot;
				}
				else
				{
					activeUserEntry.mSlotAssignment = mAvailableSlots[0];
					if (!sim.IsFullSizeDog)
					{
						mAvailableSlots.RemoveAt(0);
					}
					else if (activeUserEntry.mSlotAssignment != kSimRoutingSlots[0] && activeUserEntry.mSlotAssignment != kSimRoutingSlots[1])
					{
						activeUserEntry.mSlotAssignment = kSimMagicSlot;
					}
				}
			}
			else
			{
				activeUserEntry.mbGoingUp = bIsGoingUp;
				activeUserEntry.mSlotAssignment = assignedSlot;
				if (activeUserEntry.mSlotAssignment != kSimMagicSlot)
				{
					mAvailableSlots.Remove(assignedSlot);
				}
			}
			if (sim.IsFullSizeDog && activeUserEntry.mSlotAssignment != kSimMagicSlot)
			{
				if (activeUserEntry.mSlotAssignment == kSimRoutingSlots[0])
				{
					mAvailableSlots.Remove(kSimRoutingSlots[0]);
					mAvailableSlots.Remove(kSimContainmentSlots[2]);
					mAvailableSlots.Remove(kSimContainmentSlots[3]);
				}
				else if (activeUserEntry.mSlotAssignment == kSimRoutingSlots[1])
				{
					mAvailableSlots.Remove(kSimRoutingSlots[1]);
					mAvailableSlots.Remove(kSimContainmentSlots[0]);
					mAvailableSlots.Remove(kSimContainmentSlots[1]);
				}
			}
			if (mRequestAlarmHandle != AlarmHandle.kInvalidHandle)
			{
				PortalOwner.RemoveAlarm(mRequestAlarmHandle);
				mRequestAlarmHandle = AlarmHandle.kInvalidHandle;
			}
			bool flag = true;
			if (mAlarmHandle != AlarmHandle.kInvalidHandle)
			{
				if (PortalOwner.GetTimeLeft(mAlarmHandle, TimeUnit.Minutes) > kMinutesToHoldElevator)
				{
					flag = false;
				}
				else
				{
					PortalOwner.RemoveAlarm(mAlarmHandle);
					mAlarmHandle = AlarmHandle.kInvalidHandle;
				}
			}
			mbRequiredTimeElapsedBeforeLaunch = false;
			if (flag)
			{
				mAlarmHandle = PortalOwner.AddAlarm(minutesToDelayElevator, TimeUnit.Minutes, OnSimApproachTimeout, "ElevatorInterior: OnSimApproachTimeout", AlarmType.AlwaysPersisted);
			}
			foreach (SimDescription key in mAssignedSims.Keys)
			{
				Sim createdSim = key.CreatedSim;
				if (createdSim != null)
				{
					createdSim.RoutingComponent.GetCurrentRoute()?.AddObjectToIgnoreForRoute(sim.ObjectId);
					sim.RoutingComponent.GetCurrentRoute()?.AddObjectToIgnoreForRoute(createdSim.ObjectId);
				}
			}
			sim.SimRoutingComponent.DisallowBeingPushed = true;
			sim.SimRoutingComponent.ShouldIgnoreAllObstacles = true;
			sim.SimRoutingComponent.RequestWalkStyle(Sim.WalkStyle.ForceWalk);
			sim.SimRoutingComponent.OnRouteActionsFinished += ElevatorOnRouteActionsFinished;
			mAssignedSims.Add(sim.SimDescription, activeUserEntry);
			return true;
		}

		private void ElevatorOnRouteActionsFinished(GameObject routingObject, bool routeSuccess)
		{
			if (routingObject is Sim sim)
			{
				if (IsSimInElevator(sim) || IsSimInsideElevator(sim))
				{
					UnregisterSim(sim);
					PortalOwner.RemoveElevatorColumnFromUseList(sim, exclude: false);
					sim.SetObjectToReset();
				}
				sim.SimRoutingComponent.OnRouteActionsFinished -= ElevatorOnRouteActionsFinished;
			}
		}

		private void OnSimApproachTimeout()
		{
			mbRequiredTimeElapsedBeforeLaunch = true;
			PortalOwner.RemoveAlarm(mAlarmHandle);
			mAlarmHandle = AlarmHandle.kInvalidHandle;
		}

		public bool UnregisterSim(Sim s)
		{
			if (mAssignedSims.TryGetValue(s.SimDescription, out var value))
			{
				mAssignedSims.Remove(s.SimDescription);
				s.SimRoutingComponent.OnRouteActionsFinished -= ElevatorOnRouteActionsFinished;
				foreach (SimDescription key in mAssignedSims.Keys)
				{
					Sim createdSim = key.CreatedSim;
					if (createdSim != null)
					{
						createdSim.RoutingComponent.GetCurrentRoute()?.RemoveObjectToIgnoreForRoute(s.ObjectId);
						s.RoutingComponent.GetCurrentRoute()?.RemoveObjectToIgnoreForRoute(createdSim.ObjectId);
					}
				}
				s.SimRoutingComponent.DisallowBeingPushed = false;
				s.SimRoutingComponent.ShouldIgnoreAllObstacles = false;
				s.SimRoutingComponent.UnrequestWalkStyle(Sim.WalkStyle.ForceWalk);
				if (value.mSlotAssignment != kSimMagicSlot)
				{
					mAvailableSlots.Add(value.mSlotAssignment);
					if (s.IsFullSizeDog)
					{
						if (value.mSlotAssignment == kSimRoutingSlots[0])
						{
							mAvailableSlots.Add(kSimContainmentSlots[2]);
							mAvailableSlots.Add(kSimContainmentSlots[3]);
						}
						else if (value.mSlotAssignment == kSimRoutingSlots[1])
						{
							mAvailableSlots.Add(kSimContainmentSlots[0]);
							mAvailableSlots.Add(kSimContainmentSlots[1]);
						}
					}
					mAvailableSlots.Sort(SortSlots);
				}
				return true;
			}
			return false;
		}

		public bool RequestElevator()
		{
			if (!mbElevatorRequested)
			{
				mbElevatorRequested = true;
				if (mRequestAlarmHandle != AlarmHandle.kInvalidHandle)
				{
					PortalOwner.RemoveAlarm(mRequestAlarmHandle);
					mRequestAlarmHandle = AlarmHandle.kInvalidHandle;
				}
				mRequestAlarmHandle = PortalOwner.AddAlarm(kElevatorGiveupTime, TimeUnit.Minutes, OnRequestTimeout, "ElevatorInterior: OnRequestTimeout", AlarmType.AlwaysPersisted);
				return true;
			}
			return false;
		}

		private void OnRequestTimeout()
		{
			mbElevatorRequested = false;
			PortalOwner.RemoveAlarm(mRequestAlarmHandle);
			mRequestAlarmHandle = AlarmHandle.kInvalidHandle;
		}

		public bool TeleportIfNecessary(Sim s, bool bAlwaysTeleport)
		{
			return TeleportIfNecessary(s, bAlwaysTeleport, Vector3.Invalid);
		}

		public bool TeleportIfNecessary(Sim s, bool bAlwaysTeleport, Vector3 position)
		{
			if (mAssignedSims.TryGetValue(s.SimDescription, out var value) && (bAlwaysTeleport || value.mSlotAssignment == kSimContainmentSlots[0] || value.mSlotAssignment == kSimContainmentSlots[1] || value.mSlotAssignment == kSimContainmentSlots[2] || value.mSlotAssignment == kSimContainmentSlots[3] || value.mSlotAssignment == kSimMagicSlot))
			{
				bool flag = false;
				if (position == Vector3.Invalid)
				{
					flag = true;
					s.FadeOut(yield: true, destroyObject: false);
					position = ((value.mSlotAssignment != kSimMagicSlot) ? Owner.GetPositionOfSlot(value.mSlotAssignment) : Owner.GetPositionOfSlot(kSimContainmentSlots[0]));
				}
				else
				{
					Vector3 fwd = Vector3.Invalid;
					World.FindGoodLocationParams fglParams = new World.FindGoodLocationParams(position);
					fglParams.BooleanConstraints |= FindGoodLocationBooleans.Routable;
					fglParams.BooleanConstraints |= FindGoodLocationBooleans.PreferEmptyTiles;
					fglParams.BooleanConstraints |= FindGoodLocationBooleans.StayInRoom;
					GlobalFunctions.FindGoodLocation(s, fglParams, out position, out fwd);
					if (value.mSlotAssignment != kSimMagicSlot)
					{
						s.FadeOut(yield: true, destroyObject: false, 0f);
					}
				}
				if (value.mSlotAssignment != kSimMagicSlot)
				{
					s.SetForward(Owner.GetForwardOfSlot(value.mSlotAssignment));
				}
				s.SetPosition(position);
				if (!flag || value.mSlotAssignment != kSimMagicSlot)
				{
					s.FadeIn();
				}
				return true;
			}
			return false;
		}

		public bool IsSimGoingUp(Sim sim)
		{
			Route currentRoute = sim.RoutingComponent.GetCurrentRoute();
			if (currentRoute != null)
			{
				int level = sim.Level;
				int num = sim.Level;
				uint num2 = 0u;
				uint numPaths = currentRoute.GetNumPaths();
				while (num == level && num2 < numPaths)
				{
					LotLocation location = default;
					Vector3 outPosition = Vector3.Invalid;
					currentRoute.GetPathStartPoint(num2, ref outPosition);
					World.GetLotLocation(outPosition, ref location);
					num = location.mLevel;
					num2++;
				}
				return num > level;
			}
			return false;
		}

		public bool HasSimPlannedElevatorRoute(Sim s)
		{
			Route currentRoute = s.RoutingComponent.GetCurrentRoute();
			if (currentRoute != null)
			{
				for (uint num = 0u; num < currentRoute.GetNumPaths(); num++)
				{
					PathData pathData = currentRoute.GetPathData(num);
					if (pathData.PathType == PathType.PortalPath && pathData.ObjectId == PortalOwner.ObjectId)
					{
						return true;
					}
				}
			}
			return false;
		}

		public bool IsElevatorReadyForLaunch()
		{
			if (IsElevatorEmpty())
			{
				return false;
			}
			foreach (ActiveUserEntry value in mAssignedSims.Values)
			{
				if (!value.mbSleeping)
				{
					return false;
				}
			}
			return true;
		}
	}

	private sealed class ElevatorDoorsInteractionProxy : Interaction<Sim, ElevatorInterior>
	{
		[DoesntRequireTuning]
		private sealed class Definition : InteractionDefinition<Sim, ElevatorInterior, ElevatorDoorsInteractionProxy>
		{
			protected override string GetInteractionName(Sim a, ElevatorInterior target, InteractionObjectPair interaction)
			{
				return "Never Displayed: ElevatorDoorsInteractionProxy";
			}

			protected override bool Test(Sim Actor, ElevatorInterior Target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return Target.Parent is ElevatorDoors;
			}

			protected override void AddInteractions(InteractionObjectPair iop, Sim Actor, ElevatorInterior Target, List<InteractionObjectPair> results)
			{
				if (Target.Parent is ElevatorDoors elevatorDoors)
				{
					results.AddRange(elevatorDoors.GetAllInteractionsForActor(Actor));
				}
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			throw new NotImplementedException("This interaction should never be run");
		}
	}

	private const int kTicksBetweenFloors = 5;

	private static readonly Slot[] kSimRoutingSlots = new Slot[2]
	{
		Slot.RoutingSlot_0,
		Slot.RoutingSlot_1
	};

	private static readonly Slot[] kSimContainmentSlots = new Slot[4]
	{
		Slot.ContainmentSlot_0,
		Slot.ContainmentSlot_1,
		Slot.ContainmentSlot_2,
		Slot.ContainmentSlot_3
	};

	private static readonly Slot kSimMagicSlot = Slot.ContainmentSlot_15;

	private ElevatorInterior mElevatorInteriorBelow;

	private ElevatorInterior mElevatorInteriorAbove;

	[TunableComment("Time in sim minutes to wait between sims before sending off the elevator.")]
	[Tunable]
	private static float kMinutesToHoldElevator = 5f;

	[Tunable]
	[TunableComment("Time in sim minutes to wait for the elevator to free before giving up on route.")]
	private static float kElevatorGiveupTime = 30f;

	[TunableComment("Time in sim minutes to wait for the elevator to free before giving up on route.")]
	[Tunable]
	private static float kElevatorToElevatorPortalCost = 10f;

	[Tunable]
	[TunableComment("Time in sim minutes we wait in line for the elevator before we try to teleport rather than route in.")]
	private static float kElevatorSimQueueWaitBeforeTeleportSkipTime = 15f;

	private LightGameObject.LightColor mColor;

	private float mCustomColorRed;

	private float mCustomColorGreen;

	private float mCustomColorBlue;

	public static float ElevatorGiveUpTime => kElevatorGiveupTime;

	public static float ElevatorSimQueueWaitBeforeTeleportSkipTime => kElevatorSimQueueWaitBeforeTeleportSkipTime;

	public ElevatorPortalComponent ElevatorPortal => PortalComponent as ElevatorPortalComponent;

	public ElevatorDoors DoorsObj => Parent as ElevatorDoors;

	public ElevatorInterior ElevatorInteriorBelow
	{
		get
		{
			return mElevatorInteriorBelow;
		}
		set
		{
			mElevatorInteriorBelow = value;
		}
	}

	public ElevatorInterior ElevatorInteriorAbove
	{
		get
		{
			return mElevatorInteriorAbove;
		}
		set
		{
			mElevatorInteriorAbove = value;
		}
	}

	public LightGameObject.LightColor Color
	{
		get
		{
			return mColor;
		}
		set
		{
			mColor = value;
		}
	}

	public float CustomColorRed
	{
		get
		{
			return mCustomColorRed;
		}
		set
		{
			mCustomColorRed = value;
		}
	}

	public float CustomColorGreen
	{
		get
		{
			return mCustomColorGreen;
		}
		set
		{
			mCustomColorGreen = value;
		}
	}

	public float CustomColorBlue
	{
		get
		{
			return mCustomColorBlue;
		}
		set
		{
			mCustomColorBlue = value;
		}
	}

	public bool IsBlackLight => false;

	public bool ICanUpdateOtherLights => false;

	public string LightLocalizeString(string name, params object[] parameters)
	{
		return string.Empty;
	}

	public override void OnStartup()
	{
		AddComponent<ElevatorPortalComponent>(new object[0]);
		AddInteraction(ElevatorDoorsInteractionProxy.Singleton);
	}

	public static void PostWorldLoadFixup()
	{
		foreach (Lot allLot in LotManager.AllLots)
		{
			ElevatorPortalComponent.UpdateAllElevatorPortalsOnLot(allLot);
		}
	}

	public int GetAdjoiningRoom(int roomId)
	{
		return roomId;
	}

	public int[] GetRoomConnections()
	{
		List<int> list = new List<int>();
		list.Add(World.GetRoomId(Position));
		if (ElevatorInteriorAbove != null)
		{
			list.Add(World.GetRoomId(ElevatorInteriorAbove.Position));
		}
		if (ElevatorInteriorBelow != null)
		{
			list.Add(World.GetRoomId(ElevatorInteriorBelow.Position));
		}
		return list.ToArray();
	}

	public Vector3[] GetPortalOpenings()
	{
		return new Vector3[1] { GetSlotPosition(kSimRoutingSlots[0]) };
	}

	public PortalRestriction IsAllowedThrough(int srcRoomId, int destRoomId, Sim actor)
	{
		if (actor.SimDescription.ToddlerOrBelow)
		{
			return PortalRestriction.DoorRestriction;
		}
		return PortalRestriction.None;
	}

	public static List<IElevatorObject> GetElevatorColumnObjects(IElevatorObject obj, bool bExcludeGivenElevatorObject)
	{
		List<IElevatorObject> list = new List<IElevatorObject>(obj.LotCurrent.GetObjects<IElevatorObject>());
		List<IElevatorObject> list2 = new List<IElevatorObject>();
		foreach (IElevatorObject item in list)
		{
			if ((!bExcludeGivenElevatorObject || item != obj) && VerifyElevatorConnection(obj, item, list))
			{
				list2.Add(item);
			}
		}
		return list2;
	}

	public static Vector2 ElevatorCenter(Vector2 pos, Vector3 fwd)
	{
		Vector2 vector = new Vector2(fwd.x, fwd.z);
		Vector2 vector2 = new Vector2(vector.y, 0f - vector.x);
		return new Vector2(pos.x - 0.5f * vector.x + 0.5f * vector2.x, pos.y - 0.5f * vector.y + 0.5f * vector2.y);
	}

	public static bool ApproxEqual(Vector2 a, Vector2 b)
	{
		float num = a.x - b.x;
		float num2 = a.y - b.y;
		return num * num + num2 * num2 < 0.1f;
	}

	public static bool VerifyElevatorConnection(IElevatorObject x, IElevatorObject y, List<IElevatorObject> toCheck)
	{
		if (!ApproxEqual(ElevatorCenter(x.PositionXZ, x.ForwardVector), ElevatorCenter(y.PositionXZ, y.ForwardVector)))
		{
			return false;
		}
		List<int> list = new List<int>();
		list.Add(x.Level);
		list.Add(y.Level);
		LotLocation location = default;
		ulong lotLocation = World.GetLotLocation(x.Position, ref location);
		if (World.IsDeckFoundationAtLotLoc(lotLocation, location.mX, location.mZ, 0))
		{
			list.Add(0);
		}
		foreach (IElevatorObject item in toCheck)
		{
			if (ApproxEqual(ElevatorCenter(item.PositionXZ, item.ForwardVector), ElevatorCenter(x.PositionXZ, x.ForwardVector)))
			{
				list.Add(item.Level);
			}
		}
		int num = ((x.Level <= y.Level) ? 1 : (-1));
		for (int i = x.Level; i != y.Level; i += num)
		{
			if (!list.Contains(i))
			{
				return false;
			}
		}
		return true;
	}

	public void AddElevatorColumnToUseList(Sim sim)
	{
		List<IElevatorObject> elevatorColumnObjects = GetElevatorColumnObjects(this, bExcludeGivenElevatorObject: true);
		foreach (IElevatorObject item in elevatorColumnObjects)
		{
			if (!item.IsActorUsingMe(sim))
			{
				item.AddToUseList(sim);
			}
			if (item is ElevatorDoors elevatorDoors && elevatorDoors != DoorsObj)
			{
				elevatorDoors.CloseElevatorDoors();
			}
		}
		sim.IdleManager.DisallowUniqueIdleAnimations = true;
	}

	public void RemoveElevatorColumnFromUseList(Sim sim)
	{
		RemoveElevatorColumnFromUseList(sim, exclude: true);
	}

	public void RemoveElevatorColumnFromUseList(Sim sim, bool exclude)
	{
		List<IElevatorObject> elevatorColumnObjects = GetElevatorColumnObjects(this, exclude);
		foreach (IElevatorObject item in elevatorColumnObjects)
		{
			if (item.IsActorUsingMe(sim))
			{
				item.RemoveFromUseList(sim);
			}
		}
		sim.IdleManager.DisallowUniqueIdleAnimations = false;
	}

	public static bool IsSimInsideElevator(Sim sim)
	{
		return SimsCurrentElevator(sim) != null;
	}

	public static ElevatorInterior SimsCurrentElevator(Sim sim)
	{
		if (sim != null)
		{
			Lot lotCurrent = sim.LotCurrent;
			if (lotCurrent != null)
			{
				List<ElevatorInterior> objectsInRoom = lotCurrent.GetObjectsInRoom<ElevatorInterior>(sim.RoomId);
				foreach (ElevatorInterior item in objectsInRoom)
				{
					if (item.ActorsUsingMe.Contains(sim))
					{
						return item;
					}
				}
			}
		}
		return null;
	}

	public bool InUseIgnoringWooHoo(Sim sim)
	{
		bool flag = InUse;
		if (sim.CurrentInteraction is ElevatorDoors.WooHoo wooHoo)
		{
			flag &= !ActorsUsingMe.Contains(wooHoo.WooHooee) && !ActorsUsingMe.Contains(wooHoo.WooHooer);
		}
		return flag;
	}
}
