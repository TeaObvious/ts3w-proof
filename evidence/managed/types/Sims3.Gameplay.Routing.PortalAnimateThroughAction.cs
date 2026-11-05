// Original PC 1.67 Sims3GameplaySystems.dll; complete type Sims3.Gameplay.Routing.PortalAnimateThroughAction.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Objects;
using Sims3.Gameplay.Objects.Island;
using Sims3.Gameplay.Pools;
using Sims3.SimIFace;

namespace Sims3.Gameplay.Routing;

public class PortalAnimateThroughAction : PortalAction
{
	public bool AnimationStarted;

	public virtual bool UseStartAnimWhenExitingPortal => mPortalObject.PortalComponent.UseStartAnimWhenExitingPortal;

	public PortalAnimateThroughAction()
	{
	}

	public PortalAnimateThroughAction(Sim routingSim, Route r, GameObject portalObject, Vector3 portalStartPos)
		: base(routingSim, r, portalObject, portalStartPos)
	{
	}

	protected override ActionResult DoPortal(ref PortalComponent.LaneInfo laneInfo, bool preferredLaneSelected)
	{
		if (!preferredLaneSelected || laneInfo.ForcePortalPlan)
		{
			Route pathToLane = mPortalObject.PortalComponent.GetPathToLane(mRoutingSim, ref laneInfo);
			if (!pathToLane.PlanResult.Succeeded())
			{
				AddFailureExplanation(FailureExplanation.PortalFailure);
				mRoutingSim.PlayRouteFailure();
				return ActionResult.Terminate;
			}
			mRoute.PopPath();
			PathData pathData = new PathData
			{
				ObjectId = mPortalObject.ObjectId,
				PortalStartPos = mPortalStartPos,
				PathType = PathType.PortalPath
			};
			pathToLane.SetPathData(ref pathData);
			mRoute.InsertRouteSubPathsAtIndex(0u, pathToLane);
		}
		RouteStartFlags defaultRouteStartFlags = GetDefaultRouteStartFlags();
		defaultRouteStartFlags = ((!(mPortalObject is IPortalIgnoreStartStopAnim)) ? (defaultRouteStartFlags | RouteStartFlags.UseStopAnim) : (defaultRouteStartFlags & ~RouteStartFlags.UseStopAnim));
		CreateAdaptors();
		ActionResult actionResult = ActionResult.ContinueAndPopPath;
		bool flag = (!(mPortalObject is IPortalIgnoreStartStopAnim portalIgnoreStartStopAnim) || portalIgnoreStartStopAnim.AllowAnimateThroughActionPreRoute(mRoutingSim, laneInfo)) && !(mPortalObject is Ocean);
		if (flag & !(mPortalObject is Houseboat))
		{
			SimSteeringAdaptor simSteeringAdaptor = SteeringAdaptor as SimSteeringAdaptor;
			if (simSteeringAdaptor != null)
			{
				simSteeringAdaptor.DestinationObstructedEnabled = false;
			}
			if (mPortalObject is IElevatorObject || mPortalObject is ISubway || mPortalObject is IHoverTrainStation)
			{
				actionResult = PerformRoute(defaultRouteStartFlags);
			}
			else
			{
				mScriptAdaptor.SetExitReasonsInterrupt(ExitReason.CancelExternal);
				actionResult = PerformRoute(defaultRouteStartFlags);
				mScriptAdaptor.ResetExitReasonsInterrupt();
			}
			if (simSteeringAdaptor != null)
			{
				simSteeringAdaptor.DestinationObstructedEnabled = true;
			}
			if (mbReplan)
			{
				mbReplan = false;
				mRoutingSim.ClearExitReasons();
				ReplanRouteInterruptAction routeAction = new ReplanRouteInterruptAction(mRoutingSim);
				mRoutingSim.RoutingComponent.InsertRouteActionNext(routeAction);
				mRoute.RouteBackwards = false;
				return ActionResult.Continue;
			}
		}
		mRoute.RouteBackwards = false;
		if ((mKillType == KillType.None || mKillType == KillType.Success) && (actionResult == ActionResult.Continue || actionResult == ActionResult.ContinueAndPopPath || actionResult == ActionResult.ContinueAndPopPathAndReplan))
		{
			mScriptAdaptor.SetExitReasonsInterrupt(ExitReason.None);
			mbRegenerateWalkStyle = true;
			AnimationStarted = true;
			mRoutingSim.PopCanePostureIfNecessary();
			if (mPortalObject.PortalComponent is PoolPortalComponent)
			{
				mRoutingSim.PopBackpackPostureIfNecessary();
			}
			if (!mPortalObject.PortalComponent.CanUseUmbrella)
			{
				Umbrella.PopUmbrellaPostureIfNecessary(mRoutingSim, overlay: false);
			}
			if (!(mPortalObject.PortalComponent is Stairs.StairsPortalComponent))
			{
				mRoutingSim.PopHoverboardPostureIfNecessary();
			}
			if (mPortalObject.PortalComponent is PoolPortalComponent)
			{
				mRoutingSim.PopJetpackPostureIfNecessary();
			}
			if (mPortalObject.PortalComponent.OnPortalStart(mRoutingSim))
			{
				if (mPortalObject.HasBeenDestroyed)
				{
					AddFailureExplanation(FailureExplanation.PortalFailure);
					actionResult = ActionResult.Terminate;
				}
				else
				{
					mPortalObject.PortalComponent.OnPortalCompleted(mRoutingSim);
					if (!preferredLaneSelected && actionResult == ActionResult.ContinueAndPopPath)
					{
						actionResult = ActionResult.ContinueAndPopPathAndReplan;
					}
					HandleIntersectionsAtDestination();
				}
			}
			else
			{
				AddFailureExplanation(FailureExplanation.PortalFailure);
				actionResult = ActionResult.Terminate;
			}
			mRoutingSim.PushCanePostureIfNecessary();
			mPortalObject.GetPositionOfSlot(laneInfo.mLaneSlots[1]);
			mRoutingSim.PopHoverboardPostureIfRemainingDistanceIsTooShort();
			mRoutingSim.PushJetpackPostureIfNecessary();
			mScriptAdaptor.ResetExitReasonsInterrupt();
		}
		return actionResult;
	}

	public override void ForceReplan(bool load)
	{
		if (load && mPortalObject is IHorseJump)
		{
			Kill(KillType.Cancel, StopMode.kStop_Hard);
			return;
		}
		base.ForceReplan(load);
		if (!AnimationStarted)
		{
			mRoutingSim.AddExitReason(ExitReason.InterruptionRequested);
		}
	}

	public override FollowRouteAction Clone()
	{
		return new PortalAnimateThroughAction(mRoutingSim, mRoute, mPortalObject, mPortalStartPos);
	}
}
