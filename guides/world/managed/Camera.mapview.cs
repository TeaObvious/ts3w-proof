/* Analyst: original PC 1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.Core.Camera.
   Complete selected original Camera members, including static initialization. sbMapViewActive is an independent allow-active-lot policy, not the native camera map-view state. GetLODInterestPosition feeds eligibility/nearest-lot selection. Tunable initializer values are defaults, not claims about all installed tuning.
   Original selected metadata tokens: 0x0600c81d, 0x0600c81e, 0x0600c81f, 0x0600c820, 0x0600c821, 0x0600c822, 0x0600c825, 0x0600c826, 0x0600c83d, 0x0600c846, 0x0600c847, 0x0600c848, 0x0600c849, 0x0600c84c, 0x0600c850, 0x04007178, 0x040071a7, 0x040071a9, 0x040071aa, 0x040071b0.
   Actual ILSpy member rendering; paired original IL controls exact semantics. */

using System;
using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.CAS;
using Sims3.Gameplay.EventSystem;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.Objects.Island;
using Sims3.Gameplay.Passport;
using Sims3.Gameplay.Telemetry;
using Sims3.Gameplay.Tutorial;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;
using Sims3.UI;

public override void Simulate()
{
	try
	{
		while (true)
		{
			if (TelemetryStats.Session != null)
			{
				TelemetryStats.Session.GatherCameraStats(CameraController.GetZoom());
			}
			if (LotManager.sIsBuildBuyModeOn || Sims3.SimIFace.Environment.HasEditInGameModeSwitch)
			{
				Simulator.Sleep(0u);
				continue;
			}
			if (sActiveLotOverride != null)
			{
				LotManager.ActiveLot = sActiveLotOverride;
				Simulator.Sleep(0u);
				continue;
			}
			Vector3 cameraTargetAsVec = CameraController.GetLODInterestPosition();
			Vector3 position = CameraController.GetPosition();
			Sim activeActor = Sim.ActiveActor;
			ObjectGuid objectGuid = activeActor?.ObjectId ?? ObjectGuid.InvalidObjectGuid;
			long currentTicks = SimClock.CurrentTicks;
			long num = currentTicks - mLastEvaluationTime;
			if (mPreviousPosition != position || mPreviousTarget != cameraTargetAsVec || mPreviousActiveActorId != objectGuid || num > kActiveLotEvaluationPeriod)
			{
				mPreviousPosition = position;
				mPreviousTarget = cameraTargetAsVec;
				mPreviousActiveActorId = objectGuid;
				mLastEvaluationTime = currentTicks;
				float terrainHeight = World.GetTerrainHeight(cameraTargetAsVec.x, cameraTargetAsVec.z);
				if (!sbMapViewActive && position.y - terrainHeight >= kMainHeightAtWhichVisibilityUpdatesStop)
				{
					LotManager.ActiveLot = null;
					LotManager.FocusLot = null;
				}
				else
				{
					Lot homeLot = activeActor?.LotHome;
					Lot closestLot = GetClosestVisibleLot(homeLot, ref cameraTargetAsVec);
					Lot focusLot = LotManager.GetLotAtPoint(cameraTargetAsVec);
					FilterActiveAndFocusLots(position, ref closestLot, ref focusLot);
					LotManager.ActiveLot = closestLot;
					if (focusLot != null && !focusLot.IsWorldLot)
					{
						LotManager.FocusLot = focusLot;
					}
				}
			}
			if (activeActor != null && (activeActor.Position - mLastCutawayFocusPos).LengthSqr() > 2f)
			{
				mLastCutawayFocusPos = activeActor.Position;
				World.SetWallCutawayFocusPos(mLastCutawayFocusPos);
			}
			Simulator.Sleep(0u);
		}
	}
	catch (ResetException)
	{
	}
}
private static void FilterActiveAndFocusLots(Vector3 cameraPosition, ref Lot closestLot, ref Lot focusLot)
{
	if (closestLot == null || !closestLot.IsHouseboatLot())
	{
		return;
	}
	Houseboat houseboat = closestLot.GetHouseboat();
	if (houseboat != null)
	{
		Lot lotCurrent = houseboat.LotCurrent;
		if (lotCurrent.IsDivingLot && cameraPosition.y < World.GetSeaLevel())
		{
			closestLot = lotCurrent;
		}
	}
	if (focusLot != null)
	{
		focusLot = closestLot;
	}
}
private Lot GetClosestVisibleLot(Lot homeLot, ref Vector3 cameraTargetAsVec3)
{
	Lot result = null;
	IActor selectedActor = PlumbBob.SelectedActor;
	Household household = selectedActor?.Household;
	Lot lot = LotManager.GetWorldLot();
	if (household != null)
	{
		List<Lot> list = new List<Lot>();
		list.AddRange(household.GreetedLots);
		if (household.RealEstateManager != null)
		{
			list.AddRange(household.RealEstateManager.GetPrivateLotMoveToLots());
		}
		if (selectedActor.CurrentInteraction is Windows.LookInWindow { IsPeeping: not false })
		{
			list.Add(selectedActor.LotCurrent);
		}
		if (homeLot != null && !list.Contains(homeLot))
		{
			list.Add(homeLot);
		}
		float hoursPassedOfDay = SimClock.HoursPassedOfDay;
		List<SimLotInfo> list2 = new List<SimLotInfo>();
		foreach (Sim allActor in household.AllActors)
		{
			SimLotInfo simLotInfo = new SimLotInfo();
			simLotInfo.mLot = allActor.LotCurrent;
			simLotInfo.mIsInside = !allActor.IsOutside;
			simLotInfo.mNotLevelZero = allActor.Level != 0;
			list2.Add(simLotInfo);
		}
		Sim hostedSim = Sims3.Gameplay.Passport.Passport.Instance.GetHostedSim();
		if (hostedSim != null)
		{
			SimLotInfo simLotInfo2 = new SimLotInfo();
			simLotInfo2.mLot = hostedSim.LotCurrent;
			simLotInfo2.mIsInside = !hostedSim.IsOutside;
			simLotInfo2.mNotLevelZero = hostedSim.Level != 0;
			list2.Add(simLotInfo2);
		}
		foreach (Lot allLot in LotManager.AllLots)
		{
			if (allLot.IsCommunityLot)
			{
				if (allLot.IsOpenVenue(hoursPassedOfDay) || allLot.CommercialLotSubType == CommercialLotSubType.kEP6_BigShow)
				{
					if (allLot.BuildableShells.Length == 0)
					{
						list.Add(allLot);
						continue;
					}
					foreach (SimLotInfo item in list2)
					{
						if (item.mLot == allLot && (item.mIsInside || item.mNotLevelZero || LotManager.ActiveLot == allLot))
						{
							list.Add(allLot);
							break;
						}
					}
					continue;
				}
				foreach (SimLotInfo item2 in list2)
				{
					if (item2.mLot == allLot && item2.mIsInside)
					{
						list.Add(allLot);
						break;
					}
				}
			}
			else if (allLot.HasVirtualResidentialSlots)
			{
				foreach (SimLotInfo item3 in list2)
				{
					if (item3.mLot == allLot && (item3.mIsInside || item3.mNotLevelZero || LotManager.ActiveLot == allLot))
					{
						list.Add(allLot);
						break;
					}
				}
			}
			else if (allLot.IsOwned)
			{
				list.Add(allLot);
			}
		}
		float num = float.MaxValue;
		foreach (Lot item4 in list)
		{
			if (item4 == null)
			{
				continue;
			}
			float distanceFromLot = float.MaxValue;
			NineQuadrants nineQuadrants = ComputeQuadrantAndDistanceFromLot(item4, cameraTargetAsVec3, ref distanceFromLot);
			if (nineQuadrants == NineQuadrants.MiddleCenter)
			{
				if (num > 0f || item4.IsHouseboatLot())
				{
					num = 0f;
					result = item4;
					lot = item4;
				}
			}
			else if (distanceFromLot < num)
			{
				num = distanceFromLot;
				result = item4;
			}
		}
	}
	if (lot != sCurrentFocusedGreetedLot)
	{
		sCurrentFocusedGreetedLot = lot;
		if (LotFocusChanged != null)
		{
			LotFocusChanged();
		}
	}
	return result;
}
private static NineQuadrants ComputeQuadrantAndDistanceFromLot(Lot lot, Vector3 cameraTargetAsVec3, ref float distanceFromLot)
{
	NineQuadrants nineQuadrants = ComputeQuadrantForLot(lot, ref cameraTargetAsVec3, out var transformedOriginVector, out var transformedExtentVector, out var transformedCameraTarget);
	float deltaXOriginTarget = Math.Abs(transformedCameraTarget.x - transformedOriginVector.x);
	float deltaZOriginTarget = Math.Abs(transformedCameraTarget.z - transformedOriginVector.z);
	float deltaXExtentTarget = Math.Abs(transformedCameraTarget.x - transformedExtentVector.x);
	float deltaZExtentTarget = Math.Abs(transformedCameraTarget.z - transformedExtentVector.z);
	distanceFromLot = 0f;
	if (nineQuadrants != NineQuadrants.MiddleCenter)
	{
		distanceFromLot = ComputeCameraTargetsDistanceFromLot(lot.Corners, nineQuadrants, cameraTargetAsVec3, deltaXOriginTarget, deltaZOriginTarget, deltaXExtentTarget, deltaZExtentTarget);
	}
	return nineQuadrants;
}
private static NineQuadrants ComputeQuadrantForLot(Lot lot, ref Vector3 cameraTargetAsVec3, out Vector3 transformedOriginVector3, out Vector3 transformedExtentVector3, out Vector3 transformedCameraTarget)
{
	NineQuadrants nineQuadrants = NineQuadrants.Zero;
	Corners corners = lot.Corners;
	if (lot == null || corners == null)
	{
		transformedOriginVector3 = Vector3.Invalid;
		transformedExtentVector3 = Vector3.Invalid;
		transformedCameraTarget = Vector3.Invalid;
		return nineQuadrants;
	}
	float num = 0f;
	if (lot.IsHouseboatLot() && World.GetHouseboatDisplayToWorldPosition(lot.LotId, cameraTargetAsVec3, out var outPos))
	{
		cameraTargetAsVec3 = outPos;
		num = 10f;
		Houseboat houseboat = lot.GetHouseboat();
		if (houseboat != null && houseboat.LotCurrent.IsDivingLot)
		{
			num = 0f;
		}
	}
	Matrix44 worldToLotTransform = lot.WorldToLotTransform;
	Vector3 vector = corners[Corner.Origin];
	Vector3 vector2 = new Vector3(vector.x, 0f, vector.z);
	transformedOriginVector3 = worldToLotTransform * vector2;
	vector = corners[Corner.Extent];
	Vector3 vector3 = new Vector3(vector.x, 0f, vector.z);
	transformedExtentVector3 = worldToLotTransform * vector3;
	Vector3 vector4 = new Vector3(cameraTargetAsVec3.x, 0f, cameraTargetAsVec3.z);
	transformedCameraTarget = worldToLotTransform * vector4;
	if (transformedCameraTarget.x < transformedOriginVector3.x - num)
	{
		nineQuadrants |= NineQuadrants.Left;
	}
	else
	{
		nineQuadrants = ((!(transformedCameraTarget.x > transformedExtentVector3.x + num)) ? (nineQuadrants | NineQuadrants.Center) : (nineQuadrants | NineQuadrants.Right));
	}
	if (transformedCameraTarget.z > transformedExtentVector3.z + num)
	{
		return nineQuadrants | NineQuadrants.Top;
	}
	if (transformedCameraTarget.z < transformedOriginVector3.z - num)
	{
		return nineQuadrants | NineQuadrants.Bottom;
	}
	return nineQuadrants | NineQuadrants.Middle;
}
private static float ComputeCameraTargetsDistanceFromLot(Corners lotCorners, NineQuadrants quadrant, Vector3 cameraTargetAsVec3, float deltaXOriginTarget, float deltaZOriginTarget, float deltaXExtentTarget, float deltaZExtentTarget)
{
	float num = float.MaxValue;
	Vector2 cameraTargetAsVec4 = new Vector2(cameraTargetAsVec3.x, cameraTargetAsVec3.z);
	return quadrant switch
	{
		NineQuadrants.TopLeft => ComputeDistanceSquare(cameraTargetAsVec4, lotCorners[Corner.YAxis]), 
		NineQuadrants.TopCenter => deltaZExtentTarget * deltaZExtentTarget, 
		NineQuadrants.TopRight => ComputeDistanceSquare(cameraTargetAsVec4, lotCorners[Corner.Extent]), 
		NineQuadrants.MiddleLeft => deltaXOriginTarget * deltaXOriginTarget, 
		NineQuadrants.MiddleCenter => 0f, 
		NineQuadrants.MiddleRight => deltaXExtentTarget * deltaXExtentTarget, 
		NineQuadrants.BottomLeft => ComputeDistanceSquare(cameraTargetAsVec4, lotCorners[Corner.Origin]), 
		NineQuadrants.BottomCenter => deltaZOriginTarget * deltaZOriginTarget, 
		NineQuadrants.BottomRight => ComputeDistanceSquare(cameraTargetAsVec4, lotCorners[Corner.XAxis]), 
		_ => 0f, 
	};
}
public static void StartUp()
{
	mCameraUpdateGuid = Simulator.AddObject(new Camera());
	foreach (Lot allLot in LotManager.AllLots)
	{
		if (allLot != null && !allLot.IsCommunityLot)
		{
			allLot.RoofUp();
		}
	}
	LoadSaveManager.ObjectGroupSaving += OnObjectGroupSaving;
	CameraController.OnCameraFollowEnabledCallback = (CameraController.CameraFollowEnabledHandler)Delegate.Combine(CameraController.OnCameraFollowEnabledCallback, new CameraController.CameraFollowEnabledHandler(OnCameraFollowEnabledEvent));
	CameraController.OnCameraFlyThroughFinishedCallback = (CameraController.CameraFlyThroughFinishedHandler)Delegate.Combine(CameraController.OnCameraFlyThroughFinishedCallback, new CameraController.CameraFlyThroughFinishedHandler(OnCameraFlyThroughFinishedEvent));
	CameraController.OnCameraMapViewEnabledCallback += OnCameraMapViewEnabledEvent;
	mSimSelectedListener = EventTracker.AddListener(EventTypeId.kEventSimSelected, OnSelectedSimChanged);
}
public static void ShutDown()
{
	Simulator.DestroyObject(mCameraUpdateGuid);
	EventTracker.RemoveListener(mSimSelectedListener);
	LoadSaveManager.ObjectGroupSaving -= OnObjectGroupSaving;
	CameraController.OnCameraFollowEnabledCallback = (CameraController.CameraFollowEnabledHandler)Delegate.Remove(CameraController.OnCameraFollowEnabledCallback, new CameraController.CameraFollowEnabledHandler(OnCameraFollowEnabledEvent));
	CameraController.OnCameraFlyThroughFinishedCallback = (CameraController.CameraFlyThroughFinishedHandler)Delegate.Remove(CameraController.OnCameraFlyThroughFinishedCallback, new CameraController.CameraFlyThroughFinishedHandler(OnCameraFlyThroughFinishedEvent));
	CameraController.OnCameraMapViewEnabledCallback -= OnCameraMapViewEnabledEvent;
}
private static float ComputeDistanceSquare(Vector2 cameraTargetAsVec2, Vector3 lotCorner)
{
	Vector2 vector = new Vector2(lotCorner.x, lotCorner.z);
	return (vector - cameraTargetAsVec2).LengthSqr();
}
public static void SetView(CameraView view, bool alsoFollowSelectedSim, bool useLerp)
{
	float zoom = -100f;
	float pitchDegrees = -100f;
	float yawDegrees = -100f;
	bool flag = false;
	switch (view)
	{
	case CameraView.SimView:
	{
		Sim selectedActor = PlumbBob.SelectedActor;
		if (selectedActor == null || selectedActor.Position == Vector3.Zero || selectedActor.Position == Vector3.Invalid)
		{
			return;
		}
		IntroTutorial.SimViewClicked();
		Tutorialette.TriggerLesson(Lessons.FindingYourSim, null);
		CameraController.DisableMapViewMode();
		flag = kSimViewButtonFollowsSim;
		RabbitHole rabbitHoleCurrent = selectedActor.RabbitHoleCurrent;
		if (rabbitHoleCurrent != null)
		{
			zoom = rabbitHoleCurrent.RabbitHoleTuning.CameraZoomOnRabbithole;
			pitchDegrees = rabbitHoleCurrent.RabbitHoleTuning.CameraPitchOnRabbithole;
		}
		else
		{
			zoom = kSimViewZoom;
			pitchDegrees = kSimViewPitch;
		}
		break;
	}
	case CameraView.LotView:
		CameraController.DisableMapViewMode();
		zoom = kLotViewZoom;
		pitchDegrees = kLotViewPitch;
		flag = kLotViewButtonFollowsSim;
		if (LotManager.ActiveLot != null)
		{
			CameraController.FocusOnLot(LotManager.ActiveLot.LotId, zoom, pitchDegrees, useLerp ? kDefaultLerpDuration : 0f);
		}
		break;
	case CameraView.HouseView:
	{
		CameraController.DisableMapViewMode();
		zoom = kHouseViewZoom;
		pitchDegrees = kHouseViewPitch;
		flag = kHouseViewButtonFollowsSim;
		Household activeHousehold = Household.ActiveHousehold;
		if (activeHousehold != null && activeHousehold.LotHome != null)
		{
			Door door = activeHousehold.LotHome.FindFrontDoor();
			if (door != null)
			{
				CameraController.RequestLerpToTarget(door.DisplayPosition, useLerp ? kDefaultLerpDuration : 0f, swingToTarget: true);
			}
			else
			{
				CameraController.FocusOnLot(activeHousehold.LotId, zoom, pitchDegrees, useLerp ? kDefaultLerpDuration : 0f);
			}
			CameraController.EnableHouseboatFollow(activeHousehold.LotId);
		}
		break;
	}
	case CameraView.MapView:
		CameraController.DisableNHoodPlopMode();
		CameraController.EnableMapViewMode();
		return;
	case CameraView.NHoodPlopView:
		CameraController.EnableNHoodPlopMode();
		return;
	}
	if (alsoFollowSelectedSim && view != CameraView.CurrentView && flag)
	{
		FollowSelectedSim();
	}
	CameraController.RequestLerpToZoomAndRotation(zoom, pitchDegrees, yawDegrees, useLerp ? kDefaultLerpDuration : 0f);
}
public static void ToggleMapView()
{
	if (IntroTutorial.IsRunning)
	{
		IntroTutorial.ExitTutorial(ToggleMapView);
		return;
	}
	bool flag = CameraController.IsMapViewModeEnabled();
	GameStates.GetInWorldSubState();
	InWorldState.SubState nextInWorldStateId = GameStates.NextInWorldStateId;
	if (GameStates.GetInWorldSubState() is LiveModeState && nextInWorldStateId != InWorldState.SubState.BuildMode && nextInWorldStateId != InWorldState.SubState.BuyMode)
	{
		if (flag)
		{
			CameraController.DisableMapViewMode(kZoomAfterExitFromMapView, kPitchAfterExitFromMapView);
			Audio.StartSound("ui_button_preset_zoom_in");
		}
		else
		{
			Tutorialette.TriggerLesson(Lessons.MapView, null);
			SetView(CameraView.MapView, alsoFollowSelectedSim: true, useLerp: true);
			Audio.StartSound("ui_button_preset_zoom_out");
		}
	}
}
public static void SetActiveLotOverride(ulong lotId)
{
	sActiveLotOverride = LotManager.GetLot(lotId);
}
public static void SetMapViewActiveLotMode(bool allowActive)
{
	sbMapViewActive = allowActive;
	World.SetMapViewActiveLotMode(allowActive);
}
public static void OnCameraMapViewEnabledEvent(bool enabled)
{
}
static Camera()
{
	kSimViewZoom = 6f;
	kSimViewPitch = -10f;
	kLotViewZoom = 20f;
	kLotViewPitch = -30f;
	kHouseViewZoom = 20f;
	kHouseViewPitch = -30f;
	kSimViewButtonFollowsSim = true;
	kLotViewButtonFollowsSim = false;
	kHouseViewButtonFollowsSim = false;
	kZoomAfterExitFromMapView = 30f;
	kPitchAfterExitFromMapView = -30f;
	kDefaultLerpDuration = 1f;
	kLotBoundaryTolerance = 5f;
	kMainKeyboardMoveDefaultSpeed = 5f;
	kMainKeyboardMoveBoostSpeed = 10f;
	kMainMouseMoveDefaultSpeed = 0.025f;
	kMainMouseMoveBoostSpeed = 0.05f;
	kMainControllerMoveDefaultSpeed = 2.5f;
	kMainControllerMoveBoostSpeed = 5f;
	kMainUIMoveDefaultSpeed = 2.5f;
	kMainUIMoveBoostSpeed = 5f;
	kMainKeyboardZoomInDefaultSpeed = 3f;
	kMainKeyboardZoomInBoostSpeed = 8f;
	kMainMouseZoomInDefaultSpeed = 1.5f;
	kMainMouseZoomInBoostSpeed = 4f;
	kMainControllerZoomInDefaultSpeed = 1.5f;
	kMainControllerZoomInBoostSpeed = 4f;
	kMainUIZoomInDefaultSpeed = 1.5f;
	kMainUIZoomInBoostSpeed = 4f;
	kMainKeyboardZoomOutDefaultSpeed = 3f;
	kMainKeyboardZoomOutBoostSpeed = 8f;
	kMainMouseZoomOutDefaultSpeed = 1.5f;
	kMainMouseZoomOutBoostSpeed = 4f;
	kMainControllerZoomOutDefaultSpeed = 1.5f;
	kMainControllerZoomOutBoostSpeed = 4f;
	kMainUIZoomOutDefaultSpeed = 1.5f;
	kMainUIZoomOutBoostSpeed = 4f;
	kMainKeyboardPitchDefaultSpeed = 6f;
	kMainKeyboardPitchBoostSpeed = 20f;
	kMainMousePitchDefaultSpeed = 0.03f;
	kMainMousePitchBoostSpeed = 0.1f;
	kMainControllerPitchDefaultSpeed = 3f;
	kMainControllerPitchBoostSpeed = 10f;
	kMainUIPitchDefaultSpeed = 3f;
	kMainUIPitchBoostSpeed = 10f;
	kMainKeyboardYawDefaultSpeed = 10f;
	kMainKeyboardYawBoostSpeed = 40f;
	kMainMouseYawDefaultSpeed = 0.05f;
	kMainMouseYawBoostSpeed = 0.2f;
	kMainControllerYawDefaultSpeed = 5f;
	kMainControllerYawBoostSpeed = 20f;
	kMainUIYawDefaultSpeed = 5f;
	kMainUIYawBoostSpeed = 20f;
	kMainDecayTrans = 0.02f;
	kMainDecayRot = 0.01f;
	kMainDecayZoom = 0.01f;
	kMainVelTransScale = 50f;
	kMainVelZoomScale = 100f;
	kMainTargetHeight = 1.75f;
	kMainMinPosHeight = 0.5f;
	kMainAllowLookAtSky = true;
	kMainLerpFromSkyDuration = 0.8f;
	kMainFOVDegrees = 45f;
	kMainZoom1 = 2.5f;
	kMainZoom2 = 7f;
	kMainZoom3 = 30f;
	kMainZoom4 = 350f;
	kMainZoom1China = 2.5f;
	kMainZoom2China = 7f;
	kMainZoom3China = 30f;
	kMainZoom4China = 350f;
	kMainZoom1Egypt = 2.5f;
	kMainZoom2Egypt = 7f;
	kMainZoom3Egypt = 30f;
	kMainZoom4Egypt = 350f;
	kMainZoom1France = 2.5f;
	kMainZoom2France = 7f;
	kMainZoom3France = 30f;
	kMainZoom4France = 350f;
	kMainZoom1Island = 2.5f;
	kMainZoom2Island = 7f;
	kMainZoom3Island = 100f;
	kMainZoom4Island = 700f;
	kMainPitch1 = 0f;
	kMainPitch2 = -10f;
	kMainPitch3 = -30f;
	kMainPitch4 = -50f;
	kMainMaxAngleUp1 = 85f;
	kMainMaxAngleUp2 = 55f;
	kMainMaxAngleUp3 = 15f;
	kMainMaxAngleUp4 = 10f;
	kMainMaxAngleDown1 = -85f;
	kMainMaxAngleDown2 = -85f;
	kMainMaxAngleDown3 = -85f;
	kMainMaxAngleDown4 = -85f;
	kMainMinTetherDistanceSim = 5f;
	kMainMaxTetherDistanceSim = 50f;
	kMainMinTetherDistanceLot = 5f;
	kMainMaxTetherDistanceLot = 50f;
	kMainTetherSlowDownDistanceSim = 2f;
	kMainTetherSlowDownDistanceLot = 2f;
	kMainHeightSpringConstant = 30f;
	kMainHeightDampingConstant = 10f;
	kMainHeightSpringConstantFollow = 40f;
	kMainHeightDampingConstantFollow = 10f;
	kMainMinZoomStopDistance = 1.5f;
	kMainMaxZoomStopDistance = 150f;
	kMainRoutableEdgeStopTime = 0.25f;
	kMainLerpDurationToActiveHousehold = 5f;
	kMainLerpDurationForBuildBuyLotVisibility = 2f;
	kMainDefaultBuildBuyZoom = 30f;
	kMainDefaultBuildBuyPitchDegrees = -45f;
	kMainLongDistanceLerpMinDistance = 50f;
	kMainLongDistanceLerpTimeAtMinDistance = 1f;
	kMainLongDistanceLerpTimeIncreasePerMeter = 0.001f;
	kMainLongDistanceHeightAtMinDistance = 100f;
	kMainLongDistanceLerpHeightIncreasePerMeter = 1f;
	kMainLongDistanceLerpMaxHeight = 300f;
	kMainLongDistanceLerpVelocityUp = 200f;
	kMainLongDistanceLerpVelocityDown = 100f;
	kMainLongDistanceLerpEaseInExponentUp = 1.5f;
	kMainLongDistanceLerpEaseInExponentDown = 1f;
	kMainTargetToPositionHeightRatioTerrain = 0.6f;
	kMainTargetToPositionHeightRatioLot = 1f;
	kMainHeightSpringMinClamp = 0.3f;
	kTargetMoveDefaultSpeed = 2f;
	kTargetMoveBoostSpeed = 25f;
	kTargetZoomDefaultSpeed = 30f;
	kTargetZoomBoostSpeed = 60f;
	kTargetTurnDefaultSpeed = 45f;
	kTargetTurnBoostSpeed = 90f;
	kTargetPitchInPlaceSpeed = 40f;
	kTargetDoZoomPitching = false;
	kTargetMinZoom = 2f;
	kTargetMaxZoom = 192f;
	kTargetMinAltitude = -85f;
	kTargetMaxAltitude = 85f;
	kTargetTargetHeight = 1.75f;
	kTargetMinPosHeight = 0.5f;
	kTargetZoomRadiusAtZeroPitch = -1f;
	kTargetPitchInPlaceAngle = 0f;
	kFlyMoveDefaultSpeed = 30f;
	kFlyMoveBoostSpeed = 60f;
	kFlyZoomDefaultSpeed = 30f;
	kFlyZoomBoostSpeed = 60f;
	kFlyTurnDefaultSpeed = 45f;
	kFlyTurnBoostSpeed = 90f;
	kFlyMinZoom = 0f;
	kFlyMaxZoom = 192f;
	kFlyConstantHeight = false;
	kEditInGameZoom1 = 2.5f;
	kEditInGameZoom2 = 7f;
	kEditInGameZoom3 = 900f;
	kEditInGameZoom4 = 950f;
	sbSmartFollowEnabled = false;
}
[TunableComment("Threshold for distance between the camera position and the terrain height at camera target. Once this is crossed, the visibility updates stop. Positive float.")]
[Tunable]
private static float kMainHeightAtWhichVisibilityUpdatesStop = 200f;
[Tunable]
[TunableComment("Time in simulation ticks after which we re-evaluate the active lot even if nothing changed")]
private static long kActiveLotEvaluationPeriod = 60L;
private static Lot sActiveLotOverride = null;
private static bool sbMapViewActive = false;
private static Lot sCurrentFocusedGreetedLot = null;
