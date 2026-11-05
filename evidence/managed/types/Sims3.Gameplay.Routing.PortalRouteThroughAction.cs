// Original PC 1.67 Sims3GameplaySystems.dll; complete type Sims3.Gameplay.Routing.PortalRouteThroughAction.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Objects;
using Sims3.SimIFace;

namespace Sims3.Gameplay.Routing;

public class PortalRouteThroughAction : PortalAction
{
	public bool PreferredLaneSelected;

	public PortalRouteThroughAction()
	{
	}

	public PortalRouteThroughAction(Sim routingSim, Route r, GameObject portalObject, Vector3 portalStartPos)
		: this(routingSim, r, portalObject, portalStartPos, null, bSlavesRoute: false)
	{
	}

	public PortalRouteThroughAction(Sim masterRoutingSim, Route r, GameObject portalObject, Vector3 portalStartPos, List<GameObject> slaveRoutingObjects, bool bSlavesRoute)
		: base(masterRoutingSim, r, portalObject, portalStartPos, slaveRoutingObjects, bSlavesRoute)
	{
		mRoutingSim = masterRoutingSim;
		mPortalObject = portalObject;
		mPortalStartPos = portalStartPos;
	}

	protected override ActionResult DoPortal(ref PortalComponent.LaneInfo laneInfo, bool preferredLaneSelected)
	{
		PreferredLaneSelected = preferredLaneSelected;
		if (!preferredLaneSelected)
		{
			uint numPaths = mRoute.GetNumPaths();
			if (numPaths > 2)
			{
				Route route = mRoutingSim.CreateRoute();
				if (route != null)
				{
					Route pathToLane = mPortalObject.PortalComponent.GetPathToLane(mRoutingSim, ref laneInfo);
					Route pathThroughLane = mPortalObject.PortalComponent.GetPathThroughLane(mRoutingSim, ref laneInfo);
					route.SetOption(Route.RouteOption.CreateSubPaths, value: false);
					Vector3 positionOfSlot = mPortalObject.GetPositionOfSlot(laneInfo.mLaneSlots[1]);
					Vector3 destPosition = positionOfSlot + (positionOfSlot - mPortalObject.GetPositionOfSlot(laneInfo.mLaneSlots[0]));
					route.PlanToPointFromPoint(positionOfSlot, destPosition);
					if (route.PlanResult.Succeeded() && pathToLane.PlanResult.Succeeded() && pathThroughLane.PlanResult.Succeeded())
					{
						mRoute.PopPath();
						mRoute.PopPath();
						mRoute.PopPath();
						mRoute.InsertRouteSubPathsAtIndex(0u, pathToLane);
						PathData pathData = new PathData
						{
							ObjectId = mPortalObject.ObjectId,
							PortalStartPos = mPortalStartPos,
							PathType = PathType.PortalTraversalPath
						};
						pathThroughLane.SetPathData(ref pathData);
						mRoute.InsertRouteSubPathsAtIndex(1u, pathThroughLane);
						mRoute.InsertRouteSubPathsAtIndex(2u, route);
					}
				}
			}
		}
		RouteStartFlags defaultRouteStartFlags = GetDefaultRouteStartFlags();
		CreateAdaptors();
		if (!mRoute.TestShouldUsePortal(mPortalObject) || !mPortalObject.PortalComponent.OnApproachingPortalObject(mRoutingSim))
		{
			AddFailureExplanation(FailureExplanation.PortalFailure);
			return ActionResult.Terminate;
		}
		if (!preferredLaneSelected && SteeringAdaptor is SimSteeringAdaptor simSteeringAdaptor)
		{
			simSteeringAdaptor.DestinationObstructedEnabled = false;
		}
		if (!mPortalObject.PortalComponent.CanUseUmbrella)
		{
			Umbrella.PopUmbrellaPostureIfNecessary(mRoutingSim, overlay: true);
		}
		Vector3 positionOfSlot2 = mPortalObject.GetPositionOfSlot(laneInfo.mLaneSlots[1]);
		if (!World.IsPositionOutside(positionOfSlot2) && mRoutingSim.PopHoverboardPostureIfNecessary())
		{
			SimSteeringAdaptor simSteeringAdaptor2 = mSteeringAdaptor as SimSteeringAdaptor;
			Route currentRoute = mRoutingSim.RoutingComponent.GetCurrentRoute();
			if (simSteeringAdaptor2 != null && currentRoute != null)
			{
				simSteeringAdaptor2.ForceUpdateWalkStyle(currentRoute);
			}
		}
		ActionResult actionResult = PerformRoute(defaultRouteStartFlags);
		if (World.IsPositionOutside(positionOfSlot2))
		{
			mRoutingSim.PushHoverboardPostureIfNecessary();
		}
		if (!preferredLaneSelected && SteeringAdaptor is SimSteeringAdaptor simSteeringAdaptor3)
		{
			simSteeringAdaptor3.DestinationObstructedEnabled = true;
		}
		if (actionResult == ActionResult.Terminate || mKillType == KillType.Cancel || mKillType == KillType.Kill || mKillType == KillType.KillNoStop || mKillType == KillType.RouteFail)
		{
			mPortalObject.PortalComponent.CancelApproachingPortalObject(mRoutingSim);
		}
		return actionResult;
	}

	public override void ForceReplan(bool load)
	{
		if (mRoutingSim != null && mPortalObject != null && mPortalObject.PortalComponent != null)
		{
			mPortalObject.PortalComponent.FreeRoutingLane(mRoutingSim);
		}
		GameObject routingObject = RoutingObject;
		if (routingObject != null)
		{
			if (mPathAdaptor != null)
			{
				mPathAdaptor.Replan(routingObject.Position, !load);
			}
			else if (mRoute != null)
			{
				mRoute.Replan();
			}
		}
	}

	public override void Kill(KillType killType, StopMode stopMode)
	{
		base.Kill(killType, StopMode.kStop_Emergency);
	}

	public override FollowRouteAction Clone()
	{
		return new PortalRouteThroughAction(mRoutingSim, mRoute, mPortalObject, mPortalStartPos);
	}

	public override Route OnWalkStyleChange()
	{
		if (RoutingObject is Sim sim)
		{
			mbRegenerateWalkStyle = true;
			bool flag = false;
			uint oldWalkstyleHash = ResourceUtils.HashString32(SimWalkStyleRules.GetLocomotionStateForWalkStyle(mWalkStyle));
			SimWalkStyleRules simWalkStyleRules = new SimWalkStyleRules(sim);
			mWalkStyle = simWalkStyleRules.GetAdjustedWalkStyleForRoute(mRoute);
			uint newWalkstyleHash = ResourceUtils.HashString32(SimWalkStyleRules.GetLocomotionStateForWalkStyle(mWalkStyle));
			flag = Route.CanTransitionWalkstyle(oldWalkstyleHash, newWalkstyleHash, sim.SimDescription.Age | sim.SimDescription.Species);
			SimSteeringAdaptor simSteeringAdaptor = mSteeringAdaptor as SimSteeringAdaptor;
			if (flag && simSteeringAdaptor != null && sim.RoutingComponent.GetCurrentRoute() != null)
			{
				simSteeringAdaptor.ForceUpdateWalkStyle(sim.RoutingComponent.GetCurrentRoute());
				return null;
			}
			sim.RoutingComponent.KillRoute(success: false);
			return mRoute;
		}
		return null;
	}
}
