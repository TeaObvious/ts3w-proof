using System;
using System.Collections;
using System.Windows.Forms;
using Sims3.CSHost;
using Sims3.Math;
using WorldBuilderCS.Localization;
using WorldBuilderCS.WorldHost;

namespace WorldBuilderCS;

internal sealed class RotateManipulatorTool : BaseManipulatorTool
{
	private sealed class Line
	{
		internal Vector3 mStartPt;

		internal Vector3 mEndPt;

		internal Line(Vector3 startPt, Vector3 endPt)
		{
			mStartPt = startPt;
			mEndPt = endPt;
		}

		internal void Draw(uint color)
		{
			GraphicsUtil.DrawWorldLine(ref mStartPt, ref mEndPt, color, bClamped: true);
		}
	}

	private sealed class Circle
	{
		private const uint kNumPoints = 33u;

		private ArrayList mLines = new ArrayList();

		internal uint mColor;

		internal MoveMode mRotationType;

		internal Circle(Matrix44 transform, float radius, uint color, MoveMode rotationType)
		{
			mColor = color;
			mRotationType = rotationType;
			Rebuild(transform, radius);
		}

		internal void Rebuild(Matrix44 transform, float radius)
		{
			mLines.Clear();
			float num = (float)Math.PI / 16f;
			Vector3 vec = new Vector3(0f, 0f, 1f);
			vec *= radius;
			vec = transform.TransformVector(vec) + transform.pos.ToVector3();
			for (uint num2 = 1u; num2 < 33; num2++)
			{
				Vector3 startPt = vec;
				vec.Set((float)Math.Sin((float)num2 * num), 0f, (float)Math.Cos((float)num2 * num));
				vec *= radius;
				vec = transform.TransformVector(vec) + transform.pos.ToVector3();
				mLines.Add(new Line(startPt, vec));
			}
		}

		internal void Draw()
		{
			foreach (Line mLine in mLines)
			{
				mLine.Draw(mColor);
			}
		}

		internal bool Pick(int screenX, int screenY)
		{
			foreach (Line mLine in mLines)
			{
				if (BaseManipulatorTool.PickLine(mLine.mStartPt, mLine.mEndPt, new Vector2(screenX, screenY)))
				{
					mColor = 4294967040u;
					return true;
				}
			}
			return false;
		}
	}

	private sealed class GameObjectRotator : GameObjectModifier
	{
		private RotateManipulatorTool mRotateTool;

		private Vector3 mObjectInitialPos = default;

		private Vector3 mObjectInitialRot = default;

		private Vector2 mRotationAnchor = default;

		private Vector2 mPrevMousePt = default;

		private Vector2 mPrevMouseOffset = Vector2.gZero;

		private bool mbInvertAngle;

		private World mWorld;

		private WorldBuilderMainForm mMainForm;

		internal GameObjectRotator(RCSGameObject gameObject, RotateManipulatorTool rotateTool, int curCursorX, int curCursorY)
		{
			mMainForm = WorldBuilderMainForm.Instance;
			mWorld = mMainForm.GetCurrentWorld();
			mGameObject = gameObject;
			mRotateTool = rotateTool;
			mObjectInitialPos = gameObject.Position;
			mObjectInitialRot = gameObject.Rotation;
			mRotationAnchor.Set(curCursorX, curCursorY);
			mPrevMousePt = mRotationAnchor;
		}

		internal override bool PreliminaryMod(int screenX, int screenY)
		{
			//IL_00ac: Unknown result type (might be due to invalid IL or missing references)
			//IL_00b6: Invalid comparison between Unknown and I4
			if (mGameObject == null)
			{
				return false;
			}
			if (mGameObject.Manager != null && mGameObject.Manager is Lot)
			{
				return false;
			}
			Vector2 vector = new Vector2(screenX, screenY);
			Vector3 newRotation = Vector3.gZero;
			switch (mRotateTool.CurMoveMode)
			{
			case MoveMode.kEntireObject:
			case MoveMode.kYAxis:
				newRotation.y = CalculateRotationAngleByCircle(vector);
				break;
			case MoveMode.kXAxis:
				newRotation.x = CalculateRotationAngleByCircle(vector);
				break;
			case MoveMode.kZAxis:
				newRotation.z = CalculateRotationAngleByCircle(vector);
				break;
			}
			mPrevMouseOffset = vector - mPrevMousePt;
			mPrevMousePt = vector;
			mGameObject.SetPreliminaryRotation(ref newRotation);
			if ((int)Control.ModifierKeys == 131072)
			{
				mGameObject.TreeComponent?.SnapTreesInClusterToTerrain();
			}
			mRotateTool.UpdateTransform(typeof(RCSGameObject));
			return true;
		}

		internal override bool FinalizeMod(int screenX, int screenY)
		{
			mbInvertAngle = false;
			if (mGameObject == null)
			{
				return false;
			}
			mGameObject.Move(mObjectInitialPos, mGameObject.Rotation, mObjectInitialPos, mObjectInitialRot, groupWithPreviousCommand: false);
			mMainForm.RefreshPropertyBrowser();
			return true;
		}

		private float CalculateRotationAngleByCircle(Vector2 curMousePt)
		{
			Vector2 screenPos = default;
			if (!World.GetScreenCoordinates(ref mObjectInitialPos, ref screenPos))
			{
				return 0f;
			}
			Vector2 vec = mRotationAnchor - screenPos;
			Vector2 vec2 = curMousePt - screenPos;
			float num = Vector2.ComputeAngle(vec, vec2);
			num /= 10f;
			Vector2 a = curMousePt - mPrevMousePt;
			if (Vector2.DotProduct(a, mPrevMouseOffset) < 0f)
			{
				mbInvertAngle = !mbInvertAngle;
			}
			if (!mbInvertAngle)
			{
				return num;
			}
			return 0f - num;
		}
	}

	private sealed class LotRotator : LotModifier
	{
		private RotateManipulatorTool mRotateTool;

		private Vector3 mLotPos = default;

		private float mLotStartRotationDegree;

		private float mLotCurRotationDegree;

		private int mRotationAnchorX;

		private World mWorld;

		private WorldBuilderMainForm mMainForm;

		internal LotRotator(Lot lot, RotateManipulatorTool rotateTool, int curCursorX, int curCursorY)
		{
			mMainForm = WorldBuilderMainForm.Instance;
			mWorld = mMainForm.GetCurrentWorld();
			mLot = lot;
			mLot.KeepTerrain = KeepTerrain();
			mRotateTool = rotateTool;
			mLotPos = mLot.Position;
			mLotCurRotationDegree = (mLotStartRotationDegree = mLot.RotationDegree);
			mRotationAnchorX = curCursorX;
		}

		internal override bool PreliminaryMod(int screenX, int screenY)
		{
			if (mLot == null)
			{
				return false;
			}
			MoveMode curMoveMode = mRotateTool.CurMoveMode;
			if (curMoveMode == MoveMode.kEntireObject || curMoveMode == MoveMode.kYAxis)
			{
				mLotCurRotationDegree = Geometry.Degrees(CalculateRotationAngle(screenX, mRotationAnchorX));
			}
			mLot.EnableDrawPreliminaryLot(bEnable: true);
			mLot.MovePreliminary(ref mLotPos, mLotCurRotationDegree);
			return true;
		}

		internal override bool FinalizeMod(int screenX, int screenY)
		{
			if (mLot == null)
			{
				return false;
			}
			mLot.Move(ref mLotPos, mLotCurRotationDegree);
			mLot.EnableDrawPreliminaryLot(bEnable: false);
			mLot = null;
			mMainForm.RefreshPropertyBrowser();
			return true;
		}

		private float CalculateRotationAngle(int screenX, int rotationAnchorX)
		{
			bool flag = mRotateTool.SnapRotation();
			int num = screenX - rotationAnchorX;
			int num2 = Math.Abs(num) % 152;
			num = ((num < 0) ? (-num2) : num2);
			if (Math.Abs(num) < 8)
			{
				num = 0;
				flag = false;
			}
			else
			{
				num += ((num > 0) ? (-8) : 8);
			}
			float num3 = num;
			float num4 = Geometry.Radians(2.5f);
			float num5 = num3 * num4;
			num5 += Geometry.Radians(mLotStartRotationDegree);
			if (flag)
			{
				float num6 = Geometry.Radians(15f);
				int num7 = (int)(num5 / num6);
				num5 = (float)num7 * num6;
			}
			return num5;
		}
	}

	private const float kCircleRadius = 3f;

	private const float kHalfPI = (float)Math.PI / 2f;

	internal const int kDragRotateThreshold = 8;

	private ArrayList mCirclesList = new ArrayList();

	private WorldBuilderTool mSubTool;

	public override eToolID GetID()
	{
		return eToolID.kToolRotate;
	}

	public override string GetStatusInfo()
	{
		if (mSubTool == null)
		{
			return Strings.kRotateTool_Status;
		}
		return mSubTool.GetStatusInfo();
	}

	public override void Shutdown()
	{
		if (mSubTool != null)
		{
			mSubTool.Shutdown();
		}
		base.Shutdown();
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
		if (mSubTool == null)
		{
			return base.MouseDown(sender, e);
		}
		return mSubTool.MouseDown(sender, e);
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
		if (mSubTool == null)
		{
			return base.MouseUp(sender, e, ref bRemoveTool);
		}
		return mSubTool.MouseUp(sender, e, ref bRemoveTool);
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
			Highlight(e.X, e.Y);
			return false;
		}
		if (mSubTool == null)
		{
			return base.MouseMove(sender, e);
		}
		return mSubTool.MouseMove(sender, e);
	}

	public override bool KeyDown(object sender, KeyEventArgs e)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0011: Invalid comparison between Unknown and I4
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if ((int)e.KeyCode == 27)
		{
			if (mSubTool != null)
			{
				mSubTool.Shutdown();
				mSubTool = null;
				WorldBuilderMainForm.Instance.StatusInfo = GetStatusInfo();
				return true;
			}
		}
		else if (mSubTool != null)
		{
			return mSubTool.KeyDown(sender, e);
		}
		return base.KeyDown(sender, e);
	}

	protected override BaseModifier CreateModifier(object curObject, Type objectType, int curCursorX, int curCursorY)
	{
		if ((object)objectType == typeof(RCSGameObject))
		{
			return new GameObjectRotator(curObject as RCSGameObject, this, curCursorX, curCursorY);
		}
		if ((object)objectType == typeof(Lot))
		{
			return new LotRotator(curObject as Lot, this, curCursorX, curCursorY);
		}
		return null;
	}

	protected override void Rebuild(Type selObjectType)
	{
		mCirclesList.Clear();
		if ((object)selObjectType == typeof(RoadObject) || (object)selObjectType == typeof(RoadSpline) || (object)selObjectType == typeof(RoadIntersection))
		{
			mSubTool = new RotateRoadTool(WorldBuilderMainForm.Instance);
			WorldBuilderMainForm.Instance.StatusInfo = mSubTool.GetStatusInfo();
			return;
		}
		WorldBuilderMainForm instance = WorldBuilderMainForm.Instance;
		if ((object)selObjectType == typeof(Lot))
		{
			Lot currentlySelectedLot = instance.GetCurrentlySelectedLot();
			if (currentlySelectedLot != null)
			{
				Matrix44 gIdentity = Matrix44.gIdentity;
				gIdentity.pos = currentlySelectedLot.Position.ToVector4();
				float scaledLength = BaseManipulatorTool.GetScaledLength(currentlySelectedLot.Position, 3f);
				mCirclesList.Add(new Circle(gIdentity, scaledLength, 4278255360u, MoveMode.kYAxis));
			}
		}
		else
		{
			if ((object)selObjectType != typeof(RCSGameObject))
			{
				return;
			}
			RCSGameObject currentlySelectedObject = WorldBuilderMainForm.Instance.GetCurrentlySelectedObject();
			if (currentlySelectedObject == null || currentlySelectedObject.TransformComponent == null)
			{
				return;
			}
			Matrix44 transform = currentlySelectedObject.TransformComponent.Transform;
			float scaledLength2 = BaseManipulatorTool.GetScaledLength(currentlySelectedObject.TransformComponent.Transform.pos.ToVector3(), 3f);
			uint color = ((CurMoveMode == MoveMode.kYAxis) ? 4294967040u : 4278255360u);
			mCirclesList.Add(new Circle(transform, scaledLength2, color, MoveMode.kYAxis));
			if (currentlySelectedObject.TreeComponent == null)
			{
				GameObject gameObject = currentlySelectedObject.GameObject;
				if (gameObject == null || !gameObject.HasCatalogProductTypeFlag(CatalogProductObject.eTypeFlag.IsRoadBridge))
				{
					Matrix44 gIdentity2 = Matrix44.gIdentity;
					gIdentity2.SetRotationX((float)Math.PI / 2f);
					uint color2 = ((CurMoveMode == MoveMode.kZAxis) ? 4294967040u : 4278190335u);
					mCirclesList.Add(new Circle(gIdentity2 * transform, scaledLength2, color2, MoveMode.kZAxis));
					Matrix44 gIdentity3 = Matrix44.gIdentity;
					gIdentity3.SetRotationZ((float)Math.PI / 2f);
					uint color3 = ((CurMoveMode == MoveMode.kXAxis) ? 4294967040u : 4294901760u);
					mCirclesList.Add(new Circle(gIdentity3 * transform, scaledLength2, color3, MoveMode.kXAxis));
				}
			}
		}
	}

	protected override void ResetColor()
	{
		foreach (Circle mCircles in mCirclesList)
		{
			ref uint mColor = ref mCircles.mColor;
			uint num;
			if (mCircles.mRotationType == MoveMode.kXAxis)
			{
				num = 4294901760u;
			}
			else
			{
				num = ((mCircles.mRotationType == MoveMode.kYAxis) ? 4278255360u : 4278190335u);
			}
			mColor = num;
		}
	}

	protected override MoveMode Pick(int screenX, int screenY)
	{
		WorldBuilderMainForm instance = WorldBuilderMainForm.Instance;
		foreach (Circle mCircles in mCirclesList)
		{
			if (mCircles.Pick(screenX, screenY))
			{
				if (instance.SnapToGridToolActive)
				{
					return MoveMode.kEntireObject;
				}
				return mCircles.mRotationType;
			}
		}
		RCSGameObject rCSGameObject = PickGameObject(screenX, screenY);
		if (rCSGameObject != null)
		{
			RCSGameObject currentlySelectedObject = instance.GetCurrentlySelectedObject();
			if (currentlySelectedObject != null && currentlySelectedObject.ObjectId == rCSGameObject.ObjectId)
			{
				return MoveMode.kEntireObject;
			}
		}
		Lot lot = PickLot(screenX, screenY);
		if (lot != null)
		{
			Lot currentlySelectedLot = instance.GetCurrentlySelectedLot();
			if (currentlySelectedLot != null && currentlySelectedLot.Id == lot.Id)
			{
				lot.Dispose();
				return MoveMode.kEntireObject;
			}
			lot.Dispose();
			lot = null;
		}
		return MoveMode.kNoMove;
	}

	protected override void Highlight(int screenX, int screenY)
	{
		foreach (Circle mCircles in mCirclesList)
		{
			if (mCircles.Pick(screenX, screenY))
			{
				mCircles.mColor = 4294967040u;
			}
			else if (mCircles.mColor == 4294967040u)
			{
				ref uint mColor = ref mCircles.mColor;
				uint num;
				if (mCircles.mRotationType == MoveMode.kXAxis)
				{
					num = 4294901760u;
				}
				else
				{
					num = ((mCircles.mRotationType == MoveMode.kYAxis) ? 4278255360u : 4278190335u);
				}
				mColor = num;
			}
		}
	}

	protected override void DrawPrimitive()
	{
		UpdateManipulator();
		foreach (Circle mCircles in mCirclesList)
		{
			mCircles.Draw();
		}
	}

	internal void UpdateTransform(Type selObjectType)
	{
		Rebuild(selObjectType);
	}

	internal bool SnapRotation()
	{
		//IL_0000: Unknown result type (might be due to invalid IL or missing references)
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_000c: Invalid comparison between Unknown and I4
		return (Control.ModifierKeys & 0x10000) != 0;
	}
}
