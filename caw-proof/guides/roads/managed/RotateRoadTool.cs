using System;
using System.Windows.Forms;
using Sims3;
using Sims3.CSHost;
using Sims3.Math;
using Sims3.SimIFace;
using WorldBuilderCS.Localization;

namespace WorldBuilderCS;

public class RotateRoadTool : WorldBuilderTool
{
	private enum Mode
	{
		Select,
		Rotate
	}

	private Mode mMode;

	private WorldBuilderMainForm mApp;

	private bool mbActive;

	private Sims3.CSHost.World mWorld;

	private WorldTerrain mWorldTerrain;

	private RoadObject mPickedObj;

	private int mPickedPart = -1;

	private int mMouseDragStartPosX;

	private float mOrigRot;

	public RotateRoadTool(WorldBuilderMainForm app)
	{
		mApp = app;
		mbActive = false;
		mWorld = mApp.GetCurrentWorld();
		mWorldTerrain = mWorld.GetTerrain();
		mMode = Mode.Select;
	}

	public override eToolID GetID()
	{
		return eToolID.kToolRotateRoad;
	}

	public override string GetStatusInfo()
	{
		return Strings.kRotateRoadTool_StatusString;
	}

	public override bool MouseDown(object sender, MouseEventArgs e)
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
		if (!mWorld.TryEdit())
		{
			return false;
		}
		mWorldTerrain.PickRoadObject(e.X, e.Y, out var hitGround, out mPickedObj, out var _, out mPickedPart);
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
		mMouseDragStartPosX = e.X;
		if (!mApp.IsSelected(mPickedObj))
		{
			mApp.DeselectAllRoadObjects();
			mApp.SelectRoadObject(mPickedObj);
		}
		RoadSquare singleSelectedRoadSquare = mApp.GetSingleSelectedRoadSquare();
		if (singleSelectedRoadSquare != null)
		{
			mMode = Mode.Rotate;
			mOrigRot = singleSelectedRoadSquare.Rotation;
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
		//IL_0095: Unknown result type (might be due to invalid IL or missing references)
		//IL_009f: Invalid comparison between Unknown and I4
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if ((e.Button & 0x100000) == 0)
		{
			return false;
		}
		if (!mbActive || mMode != Mode.Rotate)
		{
			return false;
		}
		RoadSquare singleSelectedRoadSquare = mApp.GetSingleSelectedRoadSquare();
		if (singleSelectedRoadSquare == null)
		{
			return false;
		}
		RayCastHit rayHit = default;
		if (!Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit))
		{
			return false;
		}
		float num = e.X - mMouseDragStartPosX;
		float num2 = 2f;
		float num3 = num2 * (num / (float)((Control)mApp).Width) * ((float)Math.PI * 2f);
		float num4 = mOrigRot + num3;
		if ((int)Control.ModifierKeys == 65536)
		{
			float num5 = Geometry.Radians(15f);
			num4 = (float)Math.Round(num4 / num5) * num5;
		}
		if (!(singleSelectedRoadSquare is RoadIntersection roadIntersection))
		{
			mApp.SubmitUndoCommand(new CmdRotateRoadSquare(groupWithPrev: false, singleSelectedRoadSquare, num3));
		}
		else
		{
			CompoundCommand compoundCommand = new CompoundCommand(groupWithPreviousCommand: false, "RotateIntersectionAndConnectedSplines");
			float rotation = roadIntersection.Rotation;
			float num6 = num4 - rotation;
			compoundCommand.Add(new CmdRotateRoadSquare(groupWithPrev: false, roadIntersection, num6));
			roadIntersection.Rotate(num6, isStillMoving: false);
			for (uint num7 = 0u; num7 < roadIntersection.GetNumPorts(); num7++)
			{
				if (roadIntersection.GetConnectedObject(num7) is RoadSpline roadSpline)
				{
					Sims3.Math.Vector2[] knotArray = roadSpline.GetKnotArray();
					Sims3.Math.Vector2 portPosition = roadIntersection.GetPortPosition(num7);
					Sims3.Math.Vector2 portNormal = roadIntersection.GetPortNormal(num7);
					CmdTranslateSplineKnots cmdTranslateSplineKnots = new CmdTranslateSplineKnots(groupWithPrev: true);
					if (roadIntersection.GetConnectedPort(num7) == 0)
					{
						cmdTranslateSplineKnots.AddSet(roadSpline, 0, portPosition);
						cmdTranslateSplineKnots.AddSet(roadSpline, 1, portPosition + (knotArray[1] - knotArray[0]).Length() * portNormal);
					}
					else
					{
						cmdTranslateSplineKnots.AddSet(roadSpline, 2, portPosition + (knotArray[2] - knotArray[3]).Length() * portNormal);
						cmdTranslateSplineKnots.AddSet(roadSpline, 3, portPosition);
					}
					compoundCommand.Add(cmdTranslateSplineKnots);
				}
			}
			roadIntersection.Rotate(rotation - roadIntersection.Rotation, isStillMoving: false);
			mApp.SubmitUndoCommand(compoundCommand);
		}
		return true;
	}

	public override bool KeyDown(object sender, KeyEventArgs e)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0010: Unknown result type (might be due to invalid IL or missing references)
		//IL_0013: Unknown result type (might be due to invalid IL or missing references)
		//IL_0025: Expected I4, but got Unknown
		//IL_0025: Unknown result type (might be due to invalid IL or missing references)
		//IL_0028: Invalid comparison between Unknown and I4
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		Keys keyCode = e.KeyCode;
		switch (keyCode - 37)
		{
		default:
			if ((int)keyCode == 46)
			{
				mApp.DeleteAllSelectedRoadObjects();
				return true;
			}
			break;
		case 0:
			RotateInPlace(turnRight: false);
			return true;
		case 2:
			RotateInPlace(turnRight: true);
			return true;
		case 1:
			break;
		}
		return false;
	}

	private void RotateInPlace(bool turnRight)
	{
		RoadSquare singleSelectedRoadSquare = mApp.GetSingleSelectedRoadSquare();
		if (singleSelectedRoadSquare == null)
		{
			return;
		}
		float deltaRot = (turnRight ? Geometry.Radians(90f) : Geometry.Radians(-90f));
		if (singleSelectedRoadSquare is RoadIntersection roadIntersection)
		{
			int num = (turnRight ? 1 : (-1));
			uint numPorts = roadIntersection.GetNumPorts();
			RoadObject[] array = new RoadObject[numPorts];
			uint[] array2 = new uint[numPorts];
			for (uint num2 = 0u; num2 < numPorts; num2++)
			{
				array[num2] = roadIntersection.GetConnectedObject(num2);
				if (array[num2] != null)
				{
					array2[num2] = roadIntersection.GetConnectedPort(num2);
					mApp.SubmitUndoCommand(new CmdDisconnectRoadPorts(groupWithPrev: true, roadIntersection, num2));
				}
			}
			for (uint num3 = 0u; num3 < numPorts; num3++)
			{
				if (array[num3] != null)
				{
					uint portA = (uint)(numPorts + num3 + num) % numPorts;
					mApp.SubmitUndoCommand(new CmdConnectRoadPorts(groupWithPrev: true, roadIntersection, portA, array[num3], array2[num3]));
				}
			}
		}
		mApp.SubmitUndoCommand(new CmdRotateRoadSquare(groupWithPrev: false, singleSelectedRoadSquare, deltaRot));
	}
}
