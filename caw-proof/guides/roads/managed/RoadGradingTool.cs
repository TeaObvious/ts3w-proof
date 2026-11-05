using System.Windows.Forms;
using Sims3.CSHost;
using Sims3.Math;
using Sims3.SimIFace;
using WorldBuilderCS.Localization;

namespace WorldBuilderCS;

public class RoadGradingTool : WorldBuilderTool
{
	public enum ToolModes : uint
	{
		kFlattenRoad,
		kFlattenSlope,
		kLimitRoadGrade
	}

	public enum ApplyModes : uint
	{
		kApplyToSegment,
		kApplyToConnectedRoads
	}

	public enum EdgeSculptingModes : uint
	{
		kNone,
		kSmooth
	}

	private const float kDefaultEdgeWidth = 3f;

	private const int kDefaultRepeatCount = 3;

	private WorldBuilderMainForm mApp;

	private Sims3.CSHost.World mWorld;

	private WorldTerrain mWorldTerrain;

	private ToolModes mToolMode;

	private ApplyModes mApplyMode;

	private EdgeSculptingModes mEdgeSculptingMode;

	private float mEdgeWidth;

	private int mRepeatCount;

	private int mGradeLimit;

	private HeightMapUpdateRect mDirtyRect;

	public ToolModes ToolMode
	{
		get
		{
			return mToolMode;
		}
		set
		{
			mToolMode = value;
		}
	}

	public ApplyModes ApplyMode
	{
		get
		{
			return mApplyMode;
		}
		set
		{
			mApplyMode = value;
		}
	}

	public EdgeSculptingModes EdgeSculptingMode
	{
		get
		{
			return mEdgeSculptingMode;
		}
		set
		{
			mEdgeSculptingMode = value;
		}
	}

	public float EdgeWidth
	{
		get
		{
			return mEdgeWidth;
		}
		set
		{
			mEdgeWidth = value;
		}
	}

	public int RepeatCount
	{
		get
		{
			return mRepeatCount;
		}
		set
		{
			mRepeatCount = value;
		}
	}

	public int GradeLimit
	{
		get
		{
			return mGradeLimit;
		}
		set
		{
			mGradeLimit = value;
		}
	}

	public RoadGradingTool(WorldBuilderMainForm app)
	{
		mApp = app;
		mWorld = mApp.GetCurrentWorld();
		mWorldTerrain = mWorld.GetTerrain();
	}

	public override eToolID GetID()
	{
		return eToolID.kToolRoadGrading;
	}

	public override string GetStatusInfo()
	{
		return Strings.kGradingRoadTool_StatusString;
	}

	public override bool Init()
	{
		mToolMode = ToolModes.kFlattenSlope;
		mApplyMode = ApplyModes.kApplyToSegment;
		mEdgeSculptingMode = EdgeSculptingModes.kNone;
		mEdgeWidth = 3f;
		mRepeatCount = 3;
		mGradeLimit = 0;
		ClearDirtyRect();
		mApp.ShowRoadGradingToolForm(this);
		return true;
	}

	public override void Shutdown()
	{
		mApp.HideRoadGradingToolForm();
	}

	public override bool MouseDown(object sender, MouseEventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_000b: Unknown result type (might be due to invalid IL or missing references)
		if ((e.Button & 0x100000) == 0)
		{
			return false;
		}
		RayCastHit rayHit = default;
		if (!Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit))
		{
			return false;
		}
		int hitPart = -1;
		mWorldTerrain.PickRoadObject(e.X, e.Y, out var hitGround, out var hitObject, out var _, out hitPart);
		if (!hitGround)
		{
			return false;
		}
		if (hitObject == null)
		{
			mApp.DeselectAllRoadObjects();
			return false;
		}
		switch (hitObject.GetObjectType())
		{
		case RoadObject.Type.RoadSpline:
		case RoadObject.Type.Footpath:
		{
			InitDirtyRect();
			SculptingBrushCmd cmd2 = new SculptingBrushCmd(mWorldTerrain, mDirtyRect, bUpdateObjectsYPos: false);
			RoadSpline roadSpline = hitObject as RoadSpline;
			ModifyRoadSpline(roadSpline, rayHit.mPoint);
			InflateDirtyRect();
			mApp.SubmitUndoCommand(cmd2);
			ClearDirtyRect();
			break;
		}
		case RoadObject.Type.RoadIntersection:
		case RoadObject.Type.FootpathIntersection:
		{
			InitDirtyRect();
			SculptingBrushCmd cmd = new SculptingBrushCmd(mWorldTerrain, mDirtyRect, bUpdateObjectsYPos: false);
			RoadIntersection roadIntersection = hitObject as RoadIntersection;
			ModifyRoadIntersection(roadIntersection, rayHit.mPoint);
			InflateDirtyRect();
			mApp.SubmitUndoCommand(cmd);
			ClearDirtyRect();
			break;
		}
		}
		return true;
	}

	private void ModifyRoadSpline(RoadSpline roadSpline, Sims3.Math.Vector3 hitPoint)
	{
		for (int i = 0; i < mRepeatCount; i++)
		{
			switch (mToolMode)
			{
			case ToolModes.kFlattenRoad:
			{
				float terrainHeight = mWorld.GetTerrainHeight(hitPoint.x, hitPoint.z);
				roadSpline.FlattenRoad(terrainHeight, mEdgeWidth, (uint)mEdgeSculptingMode, (uint)mApplyMode, ref mDirtyRect);
				break;
			}
			case ToolModes.kFlattenSlope:
				roadSpline.FlattenRoadSlope(mEdgeWidth, (uint)mEdgeSculptingMode, (uint)mApplyMode, ref mDirtyRect);
				break;
			case ToolModes.kLimitRoadGrade:
				roadSpline.LimitRoadGrade(mEdgeWidth, mGradeLimit, ref mDirtyRect);
				return;
			}
		}
	}

	private void ModifyRoadIntersection(RoadIntersection roadIntersection, Sims3.Math.Vector3 hitPoint)
	{
		//IL_008c: Unknown result type (might be due to invalid IL or missing references)
		for (int i = 0; i < mRepeatCount; i++)
		{
			switch (mToolMode)
			{
			case ToolModes.kFlattenRoad:
			{
				float terrainHeight = mWorld.GetTerrainHeight(hitPoint.x, hitPoint.z);
				roadIntersection.Flatten(terrainHeight, mEdgeWidth, (uint)mEdgeSculptingMode, (uint)mApplyMode, ref mDirtyRect);
				break;
			}
			case ToolModes.kFlattenSlope:
				roadIntersection.FlattenSlope(mEdgeWidth, (uint)mEdgeSculptingMode, (uint)mApplyMode, ref mDirtyRect);
				break;
			case ToolModes.kLimitRoadGrade:
				MessageBox.Show(Strings.kRoadGradingTool_GradeLimitOnIntersection, Strings.kRoadGradingTool_MessageCaption, (MessageBoxButtons)0, (MessageBoxIcon)64);
				return;
			}
		}
	}

	private void ClearDirtyRect()
	{
		mDirtyRect.mLeft = (mDirtyRect.mTop = (mDirtyRect.mRight = (mDirtyRect.mBottom = 0)));
	}

	private void InitDirtyRect()
	{
		mDirtyRect.mLeft = (mDirtyRect.mTop = int.MaxValue);
		mDirtyRect.mRight = (mDirtyRect.mBottom = int.MinValue);
	}

	private void InflateDirtyRect()
	{
		if (mDirtyRect.mLeft > int.MinValue)
		{
			mDirtyRect.mLeft--;
		}
		if (mDirtyRect.mTop > int.MinValue)
		{
			mDirtyRect.mTop--;
		}
		if (mDirtyRect.mRight < int.MaxValue)
		{
			mDirtyRect.mRight++;
		}
		if (mDirtyRect.mBottom < int.MaxValue)
		{
			mDirtyRect.mBottom++;
		}
	}
}
