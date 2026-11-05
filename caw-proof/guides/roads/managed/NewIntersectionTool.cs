using System;
using System.Windows.Forms;
using Sims3.CSHost;
using Sims3.Math;
using Sims3.SimIFace;
using WorldBuilderCS.Localization;

namespace WorldBuilderCS;

internal class NewIntersectionTool : WorldBuilderTool
{
	private enum Manupulation
	{
		kMove,
		kRotate
	}

	private WorldBuilderMainForm mApp;

	private Sims3.CSHost.World mWorld;

	private WorldTerrain mWorldTerrain;

	private bool mbActive;

	private NewRoadTool.Mode mMode;

	private RoadIntersection mNewIntersectionTemplate;

	private Manupulation mManipulation;

	private Sims3.Math.Vector3 mMouseMoveStartPos;

	private int mMouseDragStartPosX;

	private float mOriginalRotation;

	public NewRoadTool.Mode RoadMode
	{
		set
		{
			if (value != mMode)
			{
				mMode = value;
				Reset();
			}
		}
	}

	public NewIntersectionTool(WorldBuilderMainForm app)
	{
		mApp = app;
		mWorld = mApp.GetCurrentWorld();
		mWorldTerrain = mWorld.GetTerrain();
		mMode = NewRoadTool.Mode.kStreet;
	}

	public override eToolID GetID()
	{
		return eToolID.kToolNewIntersection;
	}

	public override string GetStatusInfo()
	{
		return Strings.kNewIntersectionTool_StatusString;
	}

	public override bool Init()
	{
		mManipulation = Manupulation.kMove;
		mNewIntersectionTemplate = null;
		mbActive = true;
		return true;
	}

	public override void Shutdown()
	{
		if (mNewIntersectionTemplate != null)
		{
			mNewIntersectionTemplate.Visible = false;
			mNewIntersectionTemplate = null;
		}
		mbActive = false;
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
		if (!mbActive)
		{
			Init();
			return true;
		}
		RayCastHit rayHit = default;
		if (!Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit))
		{
			return false;
		}
		if (mNewIntersectionTemplate != null && mManipulation == Manupulation.kMove)
		{
			mManipulation = Manupulation.kRotate;
			mMouseDragStartPosX = e.X;
			mOriginalRotation = mNewIntersectionTemplate.Rotation;
		}
		return true;
	}

	public override bool MouseUp(object sender, MouseEventArgs e, ref bool bRemoveTool)
	{
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if (!mbActive)
		{
			return false;
		}
		if ((e.Button & 0x100000) == 0)
		{
			return false;
		}
		bool result = false;
		if (mNewIntersectionTemplate != null && mManipulation == Manupulation.kRotate)
		{
			mManipulation = Manupulation.kMove;
			result = mApp.SubmitUndoCommand(new CmdCreateRoadIntersection(groupWithPrev: false, mWorldTerrain, mNewIntersectionTemplate.Position, mNewIntersectionTemplate.Rotation, mMode == NewRoadTool.Mode.kSidewalk, isDirt: false));
		}
		return result;
	}

	public override bool MouseMove(object sender, MouseEventArgs e)
	{
		//IL_0164: Unknown result type (might be due to invalid IL or missing references)
		//IL_016e: Invalid comparison between Unknown and I4
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if (!mbActive)
		{
			return false;
		}
		RayCastHit rayHit = default;
		if (!Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit))
		{
			return false;
		}
		mApp.SnapToGridPosition(ref rayHit.mPoint);
		float rotY = 0f;
		mApp.SnapEulerRotationY(ref rotY);
		if (mNewIntersectionTemplate == null)
		{
			mNewIntersectionTemplate = mWorldTerrain.CreateRoadIntersection(new Sims3.Math.Vector2(rayHit.mPoint.x, rayHit.mPoint.z), rotY, mMode == NewRoadTool.Mode.kSidewalk, isDirt: false);
			if (mNewIntersectionTemplate != null)
			{
				mMouseMoveStartPos = rayHit.mPoint;
			}
		}
		else
		{
			switch (mManipulation)
			{
			case Manupulation.kMove:
			{
				Sims3.Math.Vector2 deltaPos = new Sims3.Math.Vector2(rayHit.mPoint.x - mMouseMoveStartPos.x, rayHit.mPoint.z - mMouseMoveStartPos.z);
				mMouseMoveStartPos = rayHit.mPoint;
				mNewIntersectionTemplate.Translate(deltaPos, isStillMoving: false);
				break;
			}
			case Manupulation.kRotate:
			{
				float num = e.X - mMouseDragStartPosX;
				float num2 = 2f;
				float num3 = num2 * (num / (float)((Control)mApp).Width) * ((float)Math.PI * 2f);
				float num4 = mOriginalRotation + num3;
				if ((int)Control.ModifierKeys == 65536)
				{
					float num5 = Geometry.Radians(15f);
					num4 = (float)Math.Round(num4 / num5) * num5;
				}
				float rotation = mNewIntersectionTemplate.Rotation;
				float deltaRadians = num4 - rotation;
				mNewIntersectionTemplate.Rotate(deltaRadians, isStillMoving: false);
				break;
			}
			}
		}
		return true;
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
		if ((int)keyCode == 27 && mbActive)
		{
			Shutdown();
			return true;
		}
		return false;
	}
}
