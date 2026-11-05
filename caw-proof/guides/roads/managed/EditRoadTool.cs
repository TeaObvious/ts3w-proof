using System;
using System.Windows.Forms;
using Sims3;
using Sims3.CSHost;
using Sims3.Math;
using Sims3.SimIFace;
using WorldBuilderCS.Localization;

namespace WorldBuilderCS;

public class EditRoadTool : WorldBuilderTool
{
	private enum Mode
	{
		kNone,
		Select,
		TranslateAll,
		TranslateKnot
	}

	private Mode mMode;

	private WorldBuilderMainForm mApp;

	private bool mbActive;

	private Sims3.CSHost.World mWorld;

	private WorldTerrain mWorldTerrain;

	private RoadObject mPickedObj;

	private int mPickedPart = -1;

	private Sims3.Math.Vector3 mMouseDragStartPos;

	private float kSnappedTangentMinLength = 1f;

	private string kTranslateAllExtendableId = "RoadsTranslateAll";

	private string kTranslateKnotExtendableId = "RoadsTranslateKnot";

	public EditRoadTool(WorldBuilderMainForm app)
	{
		mApp = app;
		mbActive = false;
		mWorld = mApp.GetCurrentWorld();
		mWorldTerrain = mWorld.GetTerrain();
		mMode = Mode.Select;
	}

	public override eToolID GetID()
	{
		return eToolID.kToolEditRoad;
	}

	public override string GetStatusInfo()
	{
		return Strings.kEditRoadTool_StatusString;
	}

	public override bool Init()
	{
		mMode = Mode.kNone;
		return true;
	}

	public override void Shutdown()
	{
		mMode = Mode.kNone;
	}

	public override bool MouseDown(object sender, MouseEventArgs e)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_00aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b4: Invalid comparison between Unknown and I4
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if ((e.Button & 0x100000) == 0)
		{
			return false;
		}
		mWorldTerrain.PickRoadObject(e.X, e.Y, out var hitGround, out mPickedObj, out mMouseDragStartPos, out mPickedPart);
		if (!hitGround)
		{
			return false;
		}
		if (mPickedObj == null)
		{
			mApp.DeselectAllRoadObjects();
			return false;
		}
		if (mPickedObj is RoadSpline && (mPickedObj as RoadSpline).IsRoadBridge)
		{
			return false;
		}
		mbActive = true;
		mApp.SnapToGridPosition(ref mMouseDragStartPos);
		bool flag = mApp.IsSelected(mPickedObj);
		if ((int)Control.ModifierKeys == 131072)
		{
			mApp.ToggleRoadObjectSelection(mPickedObj);
		}
		else if (!mApp.IsSelected(mPickedObj))
		{
			mApp.DeselectAllRoadObjects();
			mApp.SelectRoadObject(mPickedObj);
		}
		if (mMode == Mode.kNone || !flag)
		{
			mMode = Mode.Select;
			return true;
		}
		if (mPickedObj is RoadSpline && mPickedPart != -1)
		{
			mMode = Mode.TranslateKnot;
		}
		else
		{
			mMode = Mode.TranslateAll;
		}
		return true;
	}

	public override bool MouseUp(object sender, MouseEventArgs e, ref bool bRemoveTool)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if ((e.Button & 0x100000) == 0)
		{
			return false;
		}
		if (mbActive)
		{
			if (mMode == Mode.TranslateKnot && (mPickedPart == 0 || mPickedPart == 3))
			{
				RoadSpline pickedSpline = (RoadSpline)mPickedObj;
				uint pickedPort = ((mPickedPart != 0) ? 1u : 0u);
				SnapSplineEnd(pickedSpline, pickedPort);
			}
			else if (mMode == Mode.TranslateAll)
			{
				RoadIntersection singleSelectedRoadItersection = mApp.GetSingleSelectedRoadItersection();
				if (singleSelectedRoadItersection != null)
				{
					SnapIntersection(singleSelectedRoadItersection);
				}
			}
			mMode = Mode.Select;
			mbActive = false;
			return true;
		}
		return false;
	}

	public override bool MouseMove(object sender, MouseEventArgs e)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if ((e.Button & 0x100000) == 0)
		{
			return false;
		}
		if (mbActive)
		{
			RayCastHit rayHit = default;
			if (!Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit))
			{
				return false;
			}
			mApp.SnapToGridPosition(ref rayHit.mPoint);
			Sims3.Math.Vector2 deltaPos = new Sims3.Math.Vector2(rayHit.mPoint.x - mMouseDragStartPos.x, rayHit.mPoint.z - mMouseDragStartPos.z);
			mMouseDragStartPos = rayHit.mPoint;
			switch (mMode)
			{
			case Mode.TranslateAll:
				TranslateAll(deltaPos);
				break;
			case Mode.TranslateKnot:
				TranslateKnot(deltaPos);
				break;
			}
		}
		return mbActive;
	}

	public override bool KeyDown(object sender, KeyEventArgs e)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0010: Unknown result type (might be due to invalid IL or missing references)
		//IL_0013: Invalid comparison between Unknown and I4
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		Keys keyCode = e.KeyCode;
		if ((int)keyCode == 46)
		{
			mApp.DeleteAllSelectedRoadObjects();
			return true;
		}
		return false;
	}

	private void TranslateAll(Sims3.Math.Vector2 deltaPos)
	{
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Invalid comparison between Unknown and I4
		if (mWorld.TryEdit())
		{
			CompoundCommand compoundCommand = new CompoundCommand(groupWithPreviousCommand: false, kTranslateAllExtendableId);
			if ((int)Control.ModifierKeys == 65536)
			{
				DisconnectConnectedObjects(compoundCommand);
			}
			else
			{
				DisconnectConnectedIntersections(compoundCommand);
				TranslateConnectedSplineKnots(compoundCommand, deltaPos);
			}
			compoundCommand.Add(new CmdTranslateRoadObjects(groupWithPrev: false, deltaPos, mApp.SelectedRoadObjects));
			mApp.SubmitUndoCommand(compoundCommand);
		}
	}

	private void TranslateKnot(Sims3.Math.Vector2 deltaPos)
	{
		if (mWorld.TryEdit())
		{
			CompoundCommand compoundCommand = new CompoundCommand(groupWithPreviousCommand: false, kTranslateKnotExtendableId);
			switch (mPickedPart)
			{
			case 0:
			case 3:
				TranslateEndKnot(compoundCommand, deltaPos);
				break;
			case 1:
			case 2:
				TranslateTangentKnot(compoundCommand, deltaPos);
				break;
			}
			mApp.SubmitUndoCommand(compoundCommand);
		}
	}

	private void TranslateEndKnot(CompoundCommand compoundCmd, Sims3.Math.Vector2 deltaPos)
	{
		//IL_0069: Unknown result type (might be due to invalid IL or missing references)
		//IL_0073: Invalid comparison between Unknown and I4
		if (!mWorld.TryEdit())
		{
			return;
		}
		RoadSpline roadSpline = (RoadSpline)mPickedObj;
		uint port = ((mPickedPart > 1) ? 1u : 0u);
		int knotIndex = ((mPickedPart > 1) ? 3 : 0);
		int knotIndex2 = ((mPickedPart <= 1) ? 1 : 2);
		RoadObject connectedObject = mPickedObj.GetConnectedObject(port);
		if (connectedObject != null)
		{
			uint connectedPort = mPickedObj.GetConnectedPort(port);
			if ((int)Control.ModifierKeys == 65536 || connectedObject is RoadIntersection || connectedObject is RoadBridge)
			{
				compoundCmd.Add(new CmdDisconnectRoadPorts(groupWithPrev: true, roadSpline, port));
			}
			else if (connectedObject is RoadSpline)
			{
				RoadSpline spline = (RoadSpline)connectedObject;
				CmdTranslateSplineKnots cmdTranslateSplineKnots = new CmdTranslateSplineKnots(groupWithPrev: true);
				if (connectedPort == 0)
				{
					cmdTranslateSplineKnots.AddMove(spline, 0, deltaPos);
					cmdTranslateSplineKnots.AddMove(spline, 1, deltaPos);
				}
				else
				{
					cmdTranslateSplineKnots.AddMove(spline, 2, deltaPos);
					cmdTranslateSplineKnots.AddMove(spline, 3, deltaPos);
				}
				compoundCmd.Add(cmdTranslateSplineKnots);
			}
		}
		CmdTranslateSplineKnots cmdTranslateSplineKnots2 = new CmdTranslateSplineKnots(groupWithPrev: false);
		cmdTranslateSplineKnots2.AddMove(roadSpline, knotIndex, deltaPos);
		cmdTranslateSplineKnots2.AddMove(roadSpline, knotIndex2, deltaPos);
		compoundCmd.Add(cmdTranslateSplineKnots2);
	}

	private void TranslateTangentKnot(CompoundCommand compoundCmd, Sims3.Math.Vector2 deltaPos)
	{
		if (!mWorld.TryEdit())
		{
			return;
		}
		RoadSpline roadSpline = (RoadSpline)mPickedObj;
		CmdTranslateSplineKnots cmdTranslateSplineKnots = new CmdTranslateSplineKnots(groupWithPrev: false);
		uint port = ((mPickedPart > 1) ? 1u : 0u);
		int num = ((mPickedPart > 1) ? 3 : 0);
		int num2 = ((mPickedPart <= 1) ? 1 : 2);
		RoadObject connectedObject = mPickedObj.GetConnectedObject(port);
		if (connectedObject == null)
		{
			cmdTranslateSplineKnots.AddMove(roadSpline, num2, deltaPos);
		}
		else
		{
			uint connectedPort = mPickedObj.GetConnectedPort(port);
			Sims3.Math.Vector2[] knotArray = roadSpline.GetKnotArray();
			Sims3.Math.Vector2 vector = knotArray[num2] - knotArray[num];
			Sims3.Math.Vector2 vector2 = knotArray[num2] + deltaPos - knotArray[num];
			vector.Normalize();
			vector2.Normalize();
			if (connectedObject is RoadSpline roadSpline2)
			{
				int num3 = ((connectedPort != 0) ? 3 : 0);
				int num4 = ((connectedPort == 0) ? 1 : 2);
				cmdTranslateSplineKnots.AddMove(roadSpline, num2, deltaPos);
				Sims3.Math.Vector2[] knotArray2 = roadSpline2.GetKnotArray();
				float num5 = (knotArray2[num4] - knotArray2[num3]).Length();
				Sims3.Math.Vector2 vector3 = vector2 * (0f - num5);
				cmdTranslateSplineKnots.AddSet(roadSpline2, num4, knotArray2[num3] + vector3);
			}
			else
			{
				Sims3.Math.Vector2 vector4 = knotArray[num2] + deltaPos;
				float num6 = Math.Max(kSnappedTangentMinLength, Sims3.Math.Vector2.DotProduct(vector4 - knotArray[num], vector));
				Sims3.Math.Vector2 vector5 = num6 * vector;
				Sims3.Math.Vector2 newPosition = knotArray[num] + vector5;
				cmdTranslateSplineKnots.AddSet(roadSpline, mPickedPart, newPosition);
			}
		}
		compoundCmd.Add(cmdTranslateSplineKnots);
	}

	private void SnapSplineEnd(RoadSpline pickedSpline, uint pickedPort)
	{
		if (mWorld.TryEdit() && mWorldTerrain.CanSnapRoadObjectToAnyEmptyPort(pickedSpline, pickedPort, out var foundObject, out var foundPort))
		{
			Sims3.Math.Vector2[] knotArray = pickedSpline.GetKnotArray();
			Sims3.Math.Vector2 portPosition = foundObject.GetPortPosition(foundPort);
			CompoundCommand compoundCommand = new CompoundCommand(groupWithPreviousCommand: true, kTranslateAllExtendableId);
			CmdTranslateSplineKnots cmdTranslateSplineKnots = new CmdTranslateSplineKnots(groupWithPrev: false);
			cmdTranslateSplineKnots.AddSet(pickedSpline, mPickedPart, portPosition);
			int num = ((mPickedPart == 0) ? 1 : 2);
			Sims3.Math.Vector2 vector = knotArray[num];
			float val = (vector - knotArray[mPickedPart]).Length();
			float num2 = Math.Max(kSnappedTangentMinLength, val);
			Sims3.Math.Vector2 vector2 = foundObject.GetPortNormal(foundPort) * num2;
			Sims3.Math.Vector2 newPosition = vector2 + portPosition;
			cmdTranslateSplineKnots.AddSet(pickedSpline, num, newPosition);
			if (foundObject is RoadSpline)
			{
				AdjustSplineTangentLength(cmdTranslateSplineKnots, (RoadSpline)foundObject, foundPort);
			}
			compoundCommand.Add(cmdTranslateSplineKnots);
			mApp.SubmitUndoCommand(compoundCommand);
			mApp.SubmitUndoCommand(new CmdConnectRoadPorts(groupWithPrev: true, mPickedObj, pickedPort, foundObject, foundPort));
		}
	}

	private void SnapIntersection(RoadIntersection pickedIntersection)
	{
		if (!mWorld.TryEdit())
		{
			return;
		}
		RoadSpline roadSpline = null;
		uint num = 0u;
		uint num2 = 0u;
		float num3 = float.MaxValue;
		for (uint num4 = 0u; num4 < pickedIntersection.GetNumPorts(); num4++)
		{
			if (pickedIntersection.GetConnectedObject(num4) != null)
			{
				continue;
			}
			Sims3.Math.Vector2 portPosition = pickedIntersection.GetPortPosition(num4);
			if (mWorldTerrain.CanSnapRoadObjectToAnyEmptyPort(pickedIntersection, num4, out var foundObject, out var foundPort) && foundObject is RoadSpline)
			{
				Sims3.Math.Vector2 portPosition2 = foundObject.GetPortPosition(foundPort);
				float num5 = (portPosition - portPosition2).LengthSqr();
				if (num5 < num3)
				{
					num3 = num5;
					roadSpline = (RoadSpline)foundObject;
					num = foundPort;
					num2 = num4;
				}
			}
		}
		if (roadSpline == null)
		{
			return;
		}
		Sims3.Math.Vector2 portNormal = roadSpline.GetPortNormal(num);
		Sims3.Math.Vector2 vec = -portNormal;
		Sims3.Math.Vector2 portNormal2 = pickedIntersection.GetPortNormal(num2);
		float num6 = Sims3.Math.Vector2.ComputeAngle(vec, portNormal2);
		if (portNormal2.x * vec.y > portNormal2.y * vec.x)
		{
			num6 = 0f - num6;
		}
		mApp.SubmitUndoCommand(new CmdRotateRoadSquare(groupWithPrev: false, pickedIntersection, num6));
		Sims3.Math.Vector2 deltaPosition = roadSpline.GetPortPosition(num) - pickedIntersection.GetPortPosition(num2);
		mApp.SubmitUndoCommand(new CmdTranslateRoadObjects(groupWithPrev: true, deltaPosition, new RoadObject[1] { pickedIntersection }));
		CmdTranslateSplineKnots cmd = new CmdTranslateSplineKnots(groupWithPrev: true);
		if (AdjustSplineTangentLength(cmd, roadSpline, num))
		{
			mApp.SubmitUndoCommand(cmd);
		}
		mApp.SubmitUndoCommand(new CmdConnectRoadPorts(groupWithPrev: true, mPickedObj, num2, roadSpline, num));
		for (uint num7 = 0u; num7 < pickedIntersection.GetNumPorts(); num7++)
		{
			if (num7 != num2 && pickedIntersection.GetConnectedObject(num7) is RoadSpline roadSpline2)
			{
				Sims3.Math.Vector2[] knotArray = roadSpline2.GetKnotArray();
				Sims3.Math.Vector2 portPosition3 = pickedIntersection.GetPortPosition(num7);
				Sims3.Math.Vector2 portNormal3 = pickedIntersection.GetPortNormal(num7);
				CmdTranslateSplineKnots cmdTranslateSplineKnots = new CmdTranslateSplineKnots(groupWithPrev: true);
				if (pickedIntersection.GetConnectedPort(num7) == 0)
				{
					cmdTranslateSplineKnots.AddSet(roadSpline2, 0, portPosition3);
					cmdTranslateSplineKnots.AddSet(roadSpline2, 1, portPosition3 + (knotArray[1] - knotArray[0]).Length() * portNormal3);
				}
				else
				{
					cmdTranslateSplineKnots.AddSet(roadSpline2, 2, portPosition3 + (knotArray[2] - knotArray[3]).Length() * portNormal3);
					cmdTranslateSplineKnots.AddSet(roadSpline2, 3, portPosition3);
				}
				mApp.SubmitUndoCommand(cmdTranslateSplineKnots);
			}
		}
	}

	private bool AdjustSplineTangentLength(CmdTranslateSplineKnots cmd, RoadSpline spline, uint port)
	{
		if (mWorld.TryEdit())
		{
			Sims3.Math.Vector2[] knotArray = spline.GetKnotArray();
			int num = ((port != 0) ? 3 : 0);
			int num2 = ((port == 0) ? 1 : 2);
			float num3 = (knotArray[num2] - knotArray[num]).Length();
			if (num3 < kSnappedTangentMinLength)
			{
				Sims3.Math.Vector2 vector = (knotArray[num2] - knotArray[num]) * (kSnappedTangentMinLength / num3);
				cmd.AddSet(spline, num2, knotArray[num] + vector);
				return true;
			}
		}
		return false;
	}

	private void DisconnectConnectedObjects(CompoundCommand compoundCmd)
	{
		if (!mWorld.TryEdit())
		{
			return;
		}
		RoadObject[] selectedRoadObjects = mApp.SelectedRoadObjects;
		foreach (RoadObject roadObject in selectedRoadObjects)
		{
			uint numPorts = roadObject.GetNumPorts();
			for (uint num = 0u; num < numPorts; num++)
			{
				RoadObject connectedObject = roadObject.GetConnectedObject(num);
				if (connectedObject != null && !mApp.IsSelected(connectedObject))
				{
					compoundCmd.Add(new CmdDisconnectRoadPorts(groupWithPrev: false, roadObject, num));
				}
			}
		}
	}

	private void DisconnectConnectedIntersections(CompoundCommand compoundCmd)
	{
		if (!mWorld.TryEdit())
		{
			return;
		}
		RoadObject[] selectedRoadObjects = mApp.SelectedRoadObjects;
		foreach (RoadObject roadObject in selectedRoadObjects)
		{
			uint numPorts = roadObject.GetNumPorts();
			for (uint num = 0u; num < numPorts; num++)
			{
				if (roadObject.GetConnectedObject(num) is RoadIntersection obj && !mApp.IsSelected(obj))
				{
					compoundCmd.Add(new CmdDisconnectRoadPorts(groupWithPrev: true, roadObject, num));
				}
			}
		}
	}

	private void TranslateConnectedSplineKnots(CompoundCommand compoundCmd, Sims3.Math.Vector2 deltaPos)
	{
		if (!mWorld.TryEdit())
		{
			return;
		}
		RoadObject[] selectedRoadObjects = mApp.SelectedRoadObjects;
		foreach (RoadObject roadObject in selectedRoadObjects)
		{
			uint numPorts = roadObject.GetNumPorts();
			for (uint num = 0u; num < numPorts; num++)
			{
				if (roadObject.GetConnectedObject(num) is RoadSpline roadSpline && !mApp.IsSelected(roadSpline))
				{
					CmdTranslateSplineKnots cmdTranslateSplineKnots = new CmdTranslateSplineKnots(groupWithPrev: true);
					if (roadObject.GetConnectedPort(num) == 0)
					{
						cmdTranslateSplineKnots.AddMove(roadSpline, 0, deltaPos);
						cmdTranslateSplineKnots.AddMove(roadSpline, 1, deltaPos);
					}
					else
					{
						cmdTranslateSplineKnots.AddMove(roadSpline, 2, deltaPos);
						cmdTranslateSplineKnots.AddMove(roadSpline, 3, deltaPos);
					}
					compoundCmd.Add(cmdTranslateSplineKnots);
				}
			}
		}
	}
}
