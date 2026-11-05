using System.Collections;
using System.Windows.Forms;
using Sims3.CSHost;
using Sims3.Math;
using Sims3.SimIFace;
using WorldBuilderCS.Localization;

namespace WorldBuilderCS;

public class NewRoadTool : WorldBuilderTool
{
	public enum Mode
	{
		kStreet,
		kSidewalk
	}

	private WorldBuilderMainForm mApp;

	private bool mbActive;

	private Sims3.CSHost.World mWorld;

	private WorldTerrain mWorldTerrain;

	private ArrayList mPolySpline = new ArrayList();

	private Mode mMode;

	private bool mIsPending;

	private Sims3.Math.Vector3 mPendingStartPos;

	private Sims3.Math.Vector3 mPendingTangentPos;

	private float kElevation = 0.25f;

	private Sims3.Math.Vector2 mMouseDragStartPos;

	private RoadSpline mTempSpline;

	private RoadSpline mPrevSpline;

	public Mode SplineMode
	{
		get
		{
			return mMode;
		}
		set
		{
			if (value != mMode)
			{
				mMode = value;
				Reset();
			}
		}
	}

	public NewRoadTool(WorldBuilderMainForm app)
	{
		mMouseDragStartPos = new Sims3.Math.Vector2(0f, 0f);
		mApp = app;
		mbActive = false;
		mWorld = mApp.GetCurrentWorld();
		mWorldTerrain = mWorld.GetTerrain();
	}

	public override eToolID GetID()
	{
		return eToolID.kToolNewRoad;
	}

	public override string GetStatusInfo()
	{
		return Strings.kNewRoadTool_StatusString;
	}

	public override bool Init()
	{
		mPolySpline.Clear();
		mIsPending = false;
		mbActive = false;
		mApp.DeselectAllRoadObjects();
		mTempSpline = null;
		mPrevSpline = null;
		return true;
	}

	public override void Shutdown()
	{
		if (mTempSpline != null)
		{
			mTempSpline.Visible = false;
			mTempSpline = null;
		}
		mPolySpline.Clear();
		mIsPending = false;
		mbActive = false;
	}

	public override bool MouseDown(object sender, MouseEventArgs e)
	{
		//IL_001f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0029: Unknown result type (might be due to invalid IL or missing references)
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if (!mWorld.TryEdit())
		{
			return false;
		}
		float num = 15f;
		if ((e.Button & 0x100000) == 0)
		{
			return false;
		}
		RayCastHit rayHit = default;
		if (!Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit))
		{
			return false;
		}
		mbActive = true;
		mApp.SnapToGridPosition(ref rayHit.mPoint);
		mMouseDragStartPos.Set(rayHit.mPoint.x, rayHit.mPoint.z);
		if (mIsPending)
		{
			Sims3.Math.Vector2 vector = new Sims3.Math.Vector2(mPendingStartPos.x, mPendingStartPos.z);
			Sims3.Math.Vector2 vector2 = new Sims3.Math.Vector2(mPendingTangentPos.x, mPendingTangentPos.z);
			if (mPrevSpline != null && mPolySpline.Count > 0 && mPolySpline.Contains(mPrevSpline))
			{
				vector = mPrevSpline.GetKnot(3);
				vector2 = vector + vector - mPrevSpline.GetKnot(2);
			}
			else if ((vector2 - vector).Length() < 1f)
			{
				float num2 = 0.4f;
				vector2 = num2 * mMouseDragStartPos + (1f - num2) * vector;
			}
			float num3 = 0.6f;
			Sims3.Math.Vector2 k = num3 * mMouseDragStartPos + (1f - num3) * vector;
			CmdCreateRoadSpline cmdCreateRoadSpline = new CmdCreateRoadSpline(groupWithPrev: false, mWorldTerrain, vector, vector2, k, mMouseDragStartPos, mMode == Mode.kSidewalk, isDirt: false);
			bool flag = mApp.SubmitUndoCommand(cmdCreateRoadSpline);
			if (flag && mPrevSpline != null)
			{
				flag = mApp.SubmitUndoCommand(new CmdConnectRoadPorts(groupWithPrev: true, mPrevSpline, 1u, cmdCreateRoadSpline.NewRoadSpline, 0u));
			}
			if (!flag)
			{
				mbActive = false;
				mIsPending = false;
				return true;
			}
			mApp.SelectRoadObject(cmdCreateRoadSpline.NewRoadSpline);
			mPolySpline.Add(cmdCreateRoadSpline.NewRoadSpline);
			mPrevSpline = cmdCreateRoadSpline.NewRoadSpline;
			if (mWorldTerrain.CanSnapRoadObjectToAnyEmptyPort(cmdCreateRoadSpline.NewRoadSpline, 1u, out var foundObject, out var foundPort))
			{
				RoadObject.Type objectType = foundObject.GetObjectType();
				if (objectType == RoadObject.Type.RoadIntersection || objectType == RoadObject.Type.FootpathIntersection)
				{
					Sims3.Math.Vector2 portPosition = foundObject.GetPortPosition(foundPort);
					CmdTranslateSplineKnots cmdTranslateSplineKnots = new CmdTranslateSplineKnots(groupWithPrev: true);
					cmdTranslateSplineKnots.AddMove(cmdCreateRoadSpline.NewRoadSpline, 3, portPosition - cmdCreateRoadSpline.NewRoadSpline.GetKnot(3));
					Sims3.Math.Vector2 knot = cmdCreateRoadSpline.NewRoadSpline.GetKnot(2);
					Sims3.Math.Vector2 vector3 = foundObject.GetPortNormal(foundPort) * num;
					Sims3.Math.Vector2 vector4 = vector3 + portPosition;
					cmdTranslateSplineKnots.AddMove(cmdCreateRoadSpline.NewRoadSpline, 2, vector4 - knot);
					mApp.SubmitUndoCommand(cmdTranslateSplineKnots);
					mApp.SubmitUndoCommand(new CmdConnectRoadPorts(groupWithPrev: true, cmdCreateRoadSpline.NewRoadSpline, 1u, foundObject, foundPort));
					Shutdown();
					Init();
					return true;
				}
			}
		}
		mIsPending = true;
		mPendingStartPos = rayHit.mPoint;
		mPendingStartPos.y += kElevation;
		mPendingTangentPos = rayHit.mPoint;
		mPendingTangentPos.y += kElevation;
		return true;
	}

	public override bool MouseUp(object sender, MouseEventArgs e, ref bool bRemoveTool)
	{
		//IL_0025: Unknown result type (might be due to invalid IL or missing references)
		//IL_002f: Unknown result type (might be due to invalid IL or missing references)
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if (mTempSpline != null)
		{
			mTempSpline.Visible = false;
			mTempSpline = null;
		}
		if ((e.Button & 0x100000) == 0)
		{
			return false;
		}
		if (!mbActive)
		{
			return false;
		}
		mbActive = false;
		return true;
	}

	public override bool MouseMove(object sender, MouseEventArgs e)
	{
		//IL_0196: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a0: Unknown result type (might be due to invalid IL or missing references)
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		bool flag = false;
		RayCastHit rayHit = default;
		if (mIsPending && Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit))
		{
			flag = true;
			mApp.SnapToGridPosition(ref rayHit.mPoint);
			Sims3.Math.Vector2 vector = new Sims3.Math.Vector2(rayHit.mPoint.x, rayHit.mPoint.z);
			Sims3.Math.Vector2 vector2 = new Sims3.Math.Vector2(mPendingStartPos.x, mPendingStartPos.z);
			Sims3.Math.Vector2 vector3 = new Sims3.Math.Vector2(mPendingTangentPos.x, mPendingTangentPos.z);
			if (mPrevSpline != null && mPolySpline.Count > 0 && mPolySpline.Contains(mPrevSpline))
			{
				vector2 = mPrevSpline.GetKnot(3);
				vector3 = vector2 + vector2 - mPrevSpline.GetKnot(2);
			}
			else if ((vector3 - vector2).Length() < 1f)
			{
				float num = 0.4f;
				vector3 = num * vector + (1f - num) * vector2;
			}
			float num2 = 0.6f;
			Sims3.Math.Vector2 knot = num2 * vector + (1f - num2) * vector2;
			RoadSpline roadSpline = mWorldTerrain.CreateRoadSpline(vector2, vector3, knot, vector, mMode == Mode.kSidewalk, isDirt: false, isRoadBridge: false);
			if (roadSpline != null)
			{
				if (mTempSpline != null)
				{
					mTempSpline.Visible = false;
				}
				mTempSpline = roadSpline;
			}
		}
		if ((e.Button & 0x100000) == 0)
		{
			return false;
		}
		if (!mbActive)
		{
			return false;
		}
		if (!flag)
		{
			if (!Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit))
			{
				return false;
			}
			mApp.SnapToGridPosition(ref rayHit.mPoint);
		}
		mPendingTangentPos = rayHit.mPoint;
		mPendingTangentPos.y += kElevation;
		if (mPrevSpline != null && mPolySpline.Count > 0 && mPolySpline.Contains(mPrevSpline))
		{
			mPrevSpline.GetKnots(out var _, out var _, out var knot4, out var knot5);
			Sims3.Math.Vector2 deltaPosition = new Sims3.Math.Vector2(2f * knot5.x - mPendingTangentPos.x - knot4.x, 2f * knot5.y - mPendingTangentPos.z - knot4.y);
			CmdTranslateSplineKnots cmdTranslateSplineKnots = new CmdTranslateSplineKnots(groupWithPrev: false);
			cmdTranslateSplineKnots.AddMove(mPrevSpline, 2, deltaPosition);
			mApp.SubmitUndoCommand(cmdTranslateSplineKnots);
		}
		mMouseDragStartPos.Set(rayHit.mPoint.x, rayHit.mPoint.z);
		return true;
	}

	public override void Draw()
	{
		if (mbActive)
		{
			Sims3.Math.Matrix44 transform = Sims3.Math.Matrix44.gIdentity;
			uint color = 4278255360u;
			GraphicsUtil.DrawLine(ref mPendingStartPos, ref mPendingTangentPos, ref transform, color);
		}
	}

	public override bool KeyDown(object sender, KeyEventArgs e)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0010: Unknown result type (might be due to invalid IL or missing references)
		//IL_0013: Invalid comparison between Unknown and I4
		//IL_0015: Unknown result type (might be due to invalid IL or missing references)
		//IL_0018: Invalid comparison between Unknown and I4
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		Keys keyCode = e.KeyCode;
		if ((int)keyCode != 27)
		{
			if ((int)keyCode == 46)
			{
				mApp.DeleteAllSelectedRoadObjects();
				return true;
			}
		}
		else if (mbActive || mIsPending)
		{
			Shutdown();
			Init();
			return true;
		}
		return false;
	}
}
