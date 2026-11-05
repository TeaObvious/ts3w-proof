// Original PC 1.67 Sims3GameplaySystems.dll; complete type Sims3.Gameplay.Routing.PortalAction.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.ObjectComponents;
using Sims3.SimIFace;

namespace Sims3.Gameplay.Routing;

public abstract class PortalAction : FollowRouteAction
{
	protected Sim mRoutingSim;

	protected GameObject mPortalObject;

	protected Vector3 mPortalStartPos;

	protected bool mbReplan;

	protected bool mbWalkStyleChanged;

	public Vector3 PortalStartPos => mPortalStartPos;

	public GameObject PortalObject => mPortalObject;

	public PortalAction()
	{
	}

	public PortalAction(Sim routingSim, Route r, GameObject portalObject, Vector3 portalStartPos)
		: this(routingSim, r, portalObject, portalStartPos, null, bSlavesRoute: false)
	{
	}

	public PortalAction(Sim masterRoutingSim, Route r, GameObject portalObject, Vector3 portalStartPos, List<GameObject> slaveRoutingObjects, bool bSlavesRoute)
		: base(masterRoutingSim, r, slaveRoutingObjects, bSlavesRoute)
	{
		mRoutingSim = masterRoutingSim;
		mPortalObject = portalObject;
		mPortalStartPos = portalStartPos;
	}

	protected abstract ActionResult DoPortal(ref PortalComponent.LaneInfo laneInfo, bool preferredLaneSelected);

	protected void HandleIntersectionsAtDestination()
	{
		Sim[] objects = Queries.GetObjects<Sim>(mRoutingSim.PositionOnFloor, 0.15f);
		Sim[] array = objects;
		foreach (Sim sim in array)
		{
			if (sim != mRoutingSim && !sim.SimRoutingComponent.ShouldIgnoreAllObstacles)
			{
				mRoutingSim.SimRoutingComponent.StartIgnoringObstacles(SimRoutingComponent.EndOfPortalInvicibilityDuration);
				break;
			}
		}
	}

	public override ActionResult PerformAction()
	{
		mRoutingSim.RoutingComponent.OnRouteActionsFinished -= mPortalObject.PortalComponent.OnSimRouteActionsFinished;
		mRoutingSim.RoutingComponent.OnRouteActionsFinished += mPortalObject.PortalComponent.OnSimRouteActionsFinished;
		if (mPortalObject.PortalComponent.LockRoutingLane(mRoutingSim, mPortalStartPos, checkForSims: false, Route.RouteOption.None, out var preferredLaneSelected))
		{
			mPortalObject.PortalComponent.GetLaneInfo(mRoutingSim, out var lane);
			ActionResult actionResult = DoPortal(ref lane, preferredLaneSelected);
			if ((mbReplan || mbWalkStyleChanged) && (mKillType == KillType.None || mKillType == KillType.Success) && (actionResult == ActionResult.Continue || actionResult == ActionResult.ContinueAndPopPath))
			{
				actionResult = ((!mbWalkStyleChanged) ? ActionResult.ContinueAndPopPathAndReplan : ActionResult.ContinueAndPopPathAndRestart);
			}
			if (mKillType == KillType.Cancel || mKillType == KillType.Kill || mKillType == KillType.KillNoStop || mKillType == KillType.RouteFail)
			{
				mPortalObject.PortalComponent.FreeRoutingLane(mRoutingSim);
			}
			return actionResult;
		}
		if (mPortalObject.PortalComponent.NoLanesAvailableFailsRoute)
		{
			if (mRoutingSim.IsHorse && mPortalObject is Platform)
			{
				mRoute.AddObjectToIgnoreForRoute(mPortalObject.ObjectId);
				return ActionResult.ContinueAndPopPathAndReplan;
			}
			mRoutingSim.SimRoutingComponent.PlayRouteFailureIfAppropriate(null);
			AddFailureExplanation(FailureExplanation.PortalFailure);
			return ActionResult.Terminate;
		}
		CreateAdaptors();
		mRoutingSim.RequestRouteInterruptAction(mPortalObject.PortalComponent.WaitForLaneAndPlantToItRouteInterruptCallback, StopMode.kStop_Hard);
		return ActionResult.Continue;
	}

	public override void ForceReplan(bool load)
	{
		mbReplan = true;
		if (load)
		{
			base.ForceReplan(load);
		}
		if (mPortalObject.HasBeenDestroyed)
		{
			base.ForceReplan(load);
		}
	}

	public override Route OnWalkStyleChange()
	{
		mbRegenerateWalkStyle = true;
		mbWalkStyleChanged = true;
		return mRoute;
	}

	public override void OnReset()
	{
		base.OnReset();
		if (!mPortalObject.HasBeenDestroyed)
		{
			mPortalObject.PortalComponent.FreeRoutingLane(mRoutingSim);
			mPortalObject.PortalComponent.OnPortalActionReset(mRoutingSim);
		}
	}
}
