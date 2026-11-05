// Original PC 1.67 Sims3GameplaySystems.dll; complete type Sims3.Gameplay.Routing.PortalTraversalAction.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ObjectComponents;
using Sims3.SimIFace;

namespace Sims3.Gameplay.Routing;

public class PortalTraversalAction : PortalAction
{
	private bool mPreferredLaneSelected;

	public PortalTraversalAction()
	{
	}

	public PortalTraversalAction(Sim routingSim, Route r, GameObject portalObject, Vector3 portalStartPos, bool preferredLaneSelected)
		: this(routingSim, r, portalObject, portalStartPos, preferredLaneSelected, null, bSlavesRoute: false)
	{
	}

	public PortalTraversalAction(Sim masterRoutingSim, Route r, GameObject portalObject, Vector3 portalStartPos, bool preferredLaneSelected, List<GameObject> slaveRoutingObjects, bool bSlavesRoute)
		: base(masterRoutingSim, r, portalObject, portalStartPos, slaveRoutingObjects, bSlavesRoute)
	{
		mRoutingSim = masterRoutingSim;
		mPortalObject = portalObject;
		mPortalStartPos = portalStartPos;
		mPreferredLaneSelected = preferredLaneSelected;
	}

	protected override ActionResult DoPortal(ref PortalComponent.LaneInfo laneInfo, bool preferredLaneSelected)
	{
		return ActionResult.ContinueAndPopPath;
	}

	public override ActionResult PerformAction()
	{
		RouteStartFlags defaultRouteStartFlags = GetDefaultRouteStartFlags();
		CreateAdaptors();
		SimSteeringAdaptor simSteeringAdaptor = SteeringAdaptor as SimSteeringAdaptor;
		if (!mPortalObject.PortalComponent.OnPortalStart(mRoutingSim))
		{
			mPortalObject.PortalComponent.CancelApproachingPortalObject(mRoutingSim);
			AddFailureExplanation(FailureExplanation.PortalFailure);
			return ActionResult.Terminate;
		}
		mScriptAdaptor.SetExitReasonsInterrupt(ExitReason.None);
		if (simSteeringAdaptor != null)
		{
			simSteeringAdaptor.AvoidanceEnabled = false;
		}
		ActionResult actionResult = PerformRoute(defaultRouteStartFlags);
		if (simSteeringAdaptor != null)
		{
			simSteeringAdaptor.AvoidanceEnabled = true;
		}
		mScriptAdaptor.ResetExitReasonsInterrupt();
		mPortalObject.PortalComponent.OnPortalCompleted(mRoutingSim);
		if (mbReplan || mbWalkStyleChanged || (!mPreferredLaneSelected && actionResult == ActionResult.ContinueAndPopPath))
		{
			actionResult = ((!mbWalkStyleChanged) ? ActionResult.ContinueAndPopPathAndReplan : ActionResult.ContinueAndPopPathAndRestart);
		}
		HandleIntersectionsAtDestination();
		return actionResult;
	}

	public override FollowRouteAction Clone()
	{
		return new PortalTraversalAction(mRoutingSim, mRoute, mPortalObject, mPortalStartPos, mPreferredLaneSelected);
	}
}
