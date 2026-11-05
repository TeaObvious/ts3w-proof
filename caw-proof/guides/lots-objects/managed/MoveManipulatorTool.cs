using System;
using System.Collections;
using System.Windows.Forms;
using Sims3.CSHost;
using Sims3.Math;
using Sims3.SimIFace;
using WorldBuilderCS.Localization;
using WorldBuilderCS.WorldHost;

namespace WorldBuilderCS;

internal sealed class MoveManipulatorTool : BaseManipulatorTool
{
	private sealed class Axis
	{
		internal Sims3.Math.Vector3 mStartPt;

		internal Sims3.Math.Vector3 mEndPt;

		internal uint mColor;

		internal MoveMode mMoveMode;

		internal Axis(Sims3.Math.Vector3 startPt, Sims3.Math.Vector3 endPt, uint color, MoveMode moveMode)
		{
			mStartPt = startPt;
			mEndPt = endPt;
			mColor = color;
			mMoveMode = moveMode;
		}

		internal void Draw()
		{
			GraphicsUtil.DrawWorldLine(ref mStartPt, ref mEndPt, mColor, bClamped: true);
		}
	}

	private sealed class GameObjectMover : GameObjectModifier
	{
		private MoveManipulatorTool mMoveTool;

		private Sims3.Math.Vector2 mLastScreenPos = default;

		private Sims3.Math.Vector3 mObjectStartPos = default;

		private Sims3.Math.Vector3 mObjectRot = default;

		private Sims3.Math.Vector3 mSavedWorldOffset = default;

		private Sims3.CSHost.World mWorld;

		private WorldBuilderMainForm mMainForm;

		internal GameObjectMover(RCSGameObject gameObject, MoveManipulatorTool moveTool, int curCursorX, int curCursorY)
		{
			mMainForm = WorldBuilderMainForm.Instance;
			mWorld = mMainForm.GetCurrentWorld();
			mGameObject = gameObject;
			mMoveTool = moveTool;
			mObjectStartPos = gameObject.Position;
			mObjectRot = gameObject.Rotation;
			mLastScreenPos.Set(curCursorX, curCursorY);
			RayCastHit rayHit = default;
			if (Sims3.CSHost.World.Pick(curCursorX, curCursorY, CollisionLayer.Ground, ref rayHit, bTryPickWater: true))
			{
				mSavedWorldOffset = rayHit.mPoint - mObjectStartPos;
			}
		}

		internal override bool PreliminaryMod(int screenX, int screenY)
		{
			//IL_018a: Unknown result type (might be due to invalid IL or missing references)
			//IL_0194: Invalid comparison between Unknown and I4
			//IL_01ff: Unknown result type (might be due to invalid IL or missing references)
			//IL_0209: Invalid comparison between Unknown and I4
			if (mGameObject == null)
			{
				return false;
			}
			if (mGameObject.Manager != null && mGameObject.Manager is Lot)
			{
				return false;
			}
			Sims3.Math.Vector2 mouseDir = new Sims3.Math.Vector2(screenX, screenY);
			mouseDir -= mLastScreenPos;
			mLastScreenPos.Set(screenX, screenY);
			Sims3.Math.Vector3 pos = mGameObject.Position;
			MoveMode curMoveMode = mMoveTool.CurMoveMode;
			bool flag = false;
			switch (curMoveMode)
			{
			case MoveMode.kEntireObject:
			{
				RayCastHit rayHit = default;
				if (!Sims3.CSHost.World.Pick(screenX, screenY, CollisionLayer.Ground, ref rayHit, bTryPickWater: true))
				{
					return false;
				}
				Sims3.Math.Vector3 vector = default;
				vector = rayHit.mPoint;
				vector = rayHit.mPoint - mSavedWorldOffset;
				Sims3.Math.Vector2 screenPos = default;
				if (!Sims3.CSHost.World.GetScreenCoordinates(ref vector, ref screenPos))
				{
					return false;
				}
				RayCastHit rayHit2 = default;
				if (!Sims3.CSHost.World.Pick((int)screenPos.x, (int)screenPos.y, CollisionLayer.Ground, ref rayHit2, bTryPickWater: true))
				{
					return false;
				}
				flag = true;
				pos = rayHit2.mPoint;
				mGameObject.ApplyTreeVerticalOffset(ref pos);
				break;
			}
			case MoveMode.kXAxis:
				pos.x += mMoveTool.CalculateAxisAlignedShift(mouseDir);
				break;
			case MoveMode.kYAxis:
				pos.y += mMoveTool.CalculateAxisAlignedShift(mouseDir);
				break;
			case MoveMode.kZAxis:
				pos.z += mMoveTool.CalculateAxisAlignedShift(mouseDir);
				break;
			}
			if (mWorld.IsWorldPosOnAnyLot(pos.x, pos.z))
			{
				return false;
			}
			mMainForm.SnapToCenterPosition(ref pos);
			if ((int)Control.ModifierKeys == 131072 || flag)
			{
				float terrainHeight = mWorld.GetTerrainHeight(pos.x, pos.z);
				Sea sea = mWorld.GetSea();
				if (sea != null)
				{
					pos.y = Math.Max(terrainHeight, sea.GetSeaLevel());
				}
				else
				{
					pos.y = terrainHeight;
				}
				mGameObject.ApplyTreeVerticalOffset(ref pos);
			}
			mGameObject.SetPreliminaryPosition(ref pos);
			if ((int)Control.ModifierKeys == 131072 || flag)
			{
				mGameObject.TreeComponent?.SnapTreesInClusterToTerrain();
			}
			mMoveTool.UpdatePosition(pos);
			return true;
		}

		internal override bool FinalizeMod(int screenX, int screenY)
		{
			if (mGameObject == null)
			{
				return false;
			}
			mGameObject.Move(mGameObject.Position, mObjectRot, mObjectStartPos, mObjectRot, groupWithPreviousCommand: false);
			mMainForm.RefreshPropertyBrowser();
			return true;
		}
	}

	private sealed class LotMover : LotModifier
	{
		private MoveManipulatorTool mMoveTool;

		private Sims3.Math.Vector3 mLotStartPos = default;

		private Sims3.Math.Vector3 mLotCurPos = default;

		private float mLotRotationDegree;

		private Sims3.Math.Vector2 mLastScreenPos = default;

		private Sims3.Math.Vector3 mStartMousePick = default;

		private Sims3.CSHost.World mWorld;

		private WorldBuilderMainForm mMainForm;

		internal LotMover(Lot lot, MoveManipulatorTool moveTool, int curCursorX, int curCursorY)
		{
			mMainForm = WorldBuilderMainForm.Instance;
			mWorld = mMainForm.GetCurrentWorld();
			mLot = lot;
			mLot.KeepTerrain = KeepTerrain();
			mMoveTool = moveTool;
			mLotStartPos = mLot.Position;
			mLotCurPos = mLotStartPos;
			mLotRotationDegree = mLot.RotationDegree;
			mLastScreenPos.Set(curCursorX, curCursorY);
			RayCastHit rayHit = default;
			if (Sims3.CSHost.World.Pick(curCursorX, curCursorY, CollisionLayer.Ground, ref rayHit))
			{
				mStartMousePick = rayHit.mPoint;
			}
		}

		internal override bool PreliminaryMod(int screenX, int screenY)
		{
			if (mLot == null)
			{
				return false;
			}
			Sims3.Math.Vector3 pos = mLotCurPos;
			Sims3.Math.Vector2 mouseDir = new Sims3.Math.Vector2(screenX, screenY);
			mouseDir -= mLastScreenPos;
			mLastScreenPos.Set(screenX, screenY);
			switch (mMoveTool.CurMoveMode)
			{
			case MoveMode.kEntireObject:
			{
				RayCastHit rayHit = default;
				if (Sims3.CSHost.World.Pick(screenX, screenY, CollisionLayer.Ground, ref rayHit))
				{
					pos = rayHit.mPoint - mStartMousePick;
					pos += mLotStartPos;
				}
				break;
			}
			case MoveMode.kXAxis:
				pos.x += mMoveTool.CalculateAxisAlignedShift(mouseDir);
				break;
			case MoveMode.kZAxis:
				pos.z += mMoveTool.CalculateAxisAlignedShift(mouseDir);
				break;
			}
			pos.y = mWorld.GetTerrainHeight(pos.x, pos.z);
			mMainForm.SnapToGridPosition(ref pos);
			mLotCurPos = pos;
			mLot.EnableDrawPreliminaryLot(bEnable: true);
			mLot.MovePreliminary(ref mLotCurPos, mLotRotationDegree);
			mMoveTool.UpdatePosition(pos);
			return true;
		}

		internal override bool FinalizeMod(int screenX, int screenY)
		{
			if (mLot == null)
			{
				return false;
			}
			mLot.Move(ref mLotCurPos, mLotRotationDegree);
			mLot.EnableDrawPreliminaryLot(bEnable: false);
			mMoveTool.UpdatePosition(mLot.Position);
			mLot = null;
			mMainForm.RefreshPropertyBrowser();
			return true;
		}
	}

	private const float kAxisLength = 5f;

	private ArrayList mAxisList = new ArrayList();

	private WorldBuilderTool mSubTool;

	public override eToolID GetID()
	{
		return eToolID.kToolMove;
	}

	public override string GetStatusInfo()
	{
		if (mSubTool == null)
		{
			return Strings.kMoveTool_Status;
		}
		return mSubTool.GetStatusInfo();
	}

	public override void Shutdown()
	{
		mAxisList.Clear();
		RemoveSubTool();
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
				RemoveSubTool();
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
			return new GameObjectMover(curObject as RCSGameObject, this, curCursorX, curCursorY);
		}
		if ((object)objectType == typeof(Lot))
		{
			return new LotMover(curObject as Lot, this, curCursorX, curCursorY);
		}
		return null;
	}

	protected override void Rebuild(Type selObjectType)
	{
		mAxisList.Clear();
		Sims3.Math.Vector3 pos;
		if ((object)selObjectType == typeof(RoadObject) || (object)selObjectType == typeof(RoadSpline) || (object)selObjectType == typeof(RoadIntersection))
		{
			RemoveSubTool();
			mSubTool = new EditRoadTool(WorldBuilderMainForm.Instance);
			WorldBuilderMainForm.Instance.StatusInfo = mSubTool.GetStatusInfo();
		}
		else if (GetCurrentSelectionPos(out pos))
		{
			float scaledLength = BaseManipulatorTool.GetScaledLength(pos, 5f);
			mAxisList.Add(new Axis(pos, new Sims3.Math.Vector3(pos.x + scaledLength, pos.y, pos.z), 4294901760u, MoveMode.kXAxis));
			mAxisList.Add(new Axis(pos, new Sims3.Math.Vector3(pos.x, pos.y, pos.z + scaledLength), 4278190335u, MoveMode.kZAxis));
			if ((object)selObjectType != typeof(Lot))
			{
				mAxisList.Add(new Axis(pos, new Sims3.Math.Vector3(pos.x, pos.y + scaledLength, pos.z), 4278255360u, MoveMode.kYAxis));
			}
		}
	}

	protected override void ResetColor()
	{
		foreach (Axis mAxis in mAxisList)
		{
			ref uint mColor = ref mAxis.mColor;
			uint num;
			if (mAxis.mMoveMode == MoveMode.kXAxis)
			{
				num = 4294901760u;
			}
			else
			{
				num = ((mAxis.mMoveMode == MoveMode.kYAxis) ? 4278255360u : 4278190335u);
			}
			mColor = num;
		}
	}

	protected override MoveMode Pick(int screenX, int screenY)
	{
		WorldBuilderMainForm instance = WorldBuilderMainForm.Instance;
		Sims3.Math.Vector2 mouseScreenPt = new Sims3.Math.Vector2(screenX, screenY);
		foreach (Axis mAxis in mAxisList)
		{
			if (BaseManipulatorTool.PickLine(mAxis.mStartPt, mAxis.mEndPt, mouseScreenPt))
			{
				mAxis.mColor = 4294967040u;
				if (instance.SnapToGridToolActive)
				{
					return MoveMode.kEntireObject;
				}
				return mAxis.mMoveMode;
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
		Sims3.Math.Vector2 mouseScreenPt = new Sims3.Math.Vector2(screenX, screenY);
		foreach (Axis mAxis in mAxisList)
		{
			if (BaseManipulatorTool.PickLine(mAxis.mStartPt, mAxis.mEndPt, mouseScreenPt))
			{
				mAxis.mColor = 4294967040u;
			}
			else if (mAxis.mColor == 4294967040u)
			{
				ref uint mColor = ref mAxis.mColor;
				uint num;
				if (mAxis.mMoveMode == MoveMode.kXAxis)
				{
					num = 4294901760u;
				}
				else
				{
					num = ((mAxis.mMoveMode == MoveMode.kYAxis) ? 4278255360u : 4278190335u);
				}
				mColor = num;
			}
		}
	}

	protected override void DrawPrimitive()
	{
		UpdateManipulator();
		foreach (Axis mAxis in mAxisList)
		{
			mAxis.Draw();
		}
	}

	internal void UpdatePosition(Sims3.Math.Vector3 newPosition)
	{
		foreach (Axis mAxis in mAxisList)
		{
			mAxis.mStartPt = newPosition;
			float scaledLength = BaseManipulatorTool.GetScaledLength(newPosition, 5f);
			switch (mAxis.mMoveMode)
			{
			case MoveMode.kXAxis:
				mAxis.mEndPt = new Sims3.Math.Vector3(newPosition.x + scaledLength, newPosition.y, newPosition.z);
				break;
			case MoveMode.kYAxis:
				mAxis.mEndPt = new Sims3.Math.Vector3(newPosition.x, newPosition.y + scaledLength, newPosition.z);
				break;
			case MoveMode.kZAxis:
				mAxis.mEndPt = new Sims3.Math.Vector3(newPosition.x, newPosition.y, newPosition.z + scaledLength);
				break;
			}
		}
	}

	internal float CalculateAxisAlignedShift(Sims3.Math.Vector2 mouseDir)
	{
		foreach (Axis mAxis in mAxisList)
		{
			if (mAxis.mMoveMode == CurMoveMode)
			{
				Sims3.Math.Vector3 vector = mAxis.mEndPt - mAxis.mStartPt;
				Sims3.Math.Vector2 screenPos = default;
				if (Sims3.CSHost.World.GetScreenCoordinates(ref mAxis.mStartPt, ref screenPos))
				{
					Sims3.Math.Vector2 screenPos2 = default;
					if (Sims3.CSHost.World.GetScreenCoordinates(ref mAxis.mEndPt, ref screenPos2))
					{
						Sims3.Math.Vector2 b = screenPos2 - screenPos;
						float num = b.Length();
						float num2 = Sims3.Math.Vector2.DotProduct(mouseDir, b) / num;
						return num2 * vector.Length() / num;
					}
					break;
				}
				break;
			}
		}
		return 0f;
	}

	private void RemoveSubTool()
	{
		if (mSubTool != null)
		{
			mSubTool.Shutdown();
			mSubTool = null;
		}
	}
}
