using System.Collections.Generic;
using Sims3;
using Sims3.CSHost;
using Sims3.Math;
using WorldBuilderCS.WorldHost;

namespace WorldBuilderCS;

public sealed class SculptingBrushCmd : Command
{
	private Dictionary<ulong, float> mGameObjectShifts = new Dictionary<ulong, float>();

	private WorldTerrain mTerrain;

	private HeightMapUpdateRect mDirtyRect;

	private HeightMapUpdateRect mDirtyRectForSea;

	private bool mbUpdateObjectsYPos;

	public SculptingBrushCmd(WorldTerrain terrain, HeightMapUpdateRect updateRect, bool bUpdateObjectsYPos)
		: base(groupWithPreviousCommand: false)
	{
		mTerrain = terrain;
		mDirtyRect = updateRect;
		mDirtyRectForSea = updateRect;
		mbUpdateObjectsYPos = bUpdateObjectsYPos;
		mTerrain.BackupCurrentHeightData();
		SaveGameObjectsYShift();
	}

	public override bool Execute()
	{
		ModifyTerrain();
		mTerrain.BackupUpdatedHeightData();
		return true;
	}

	public override void Undo()
	{
		mTerrain.UndoHeightData();
		ModifyTerrain();
	}

	public override void Redo()
	{
		mTerrain.RedoHeightData();
		ModifyTerrain();
	}

	public void SetDirtyRectForSea(HeightMapUpdateRect rect)
	{
		mDirtyRectForSea = rect;
		if (mDirtyRectForSea.mRight > mDirtyRectForSea.mLeft)
		{
			mDirtyRectForSea.mLeft -= 64;
			mDirtyRectForSea.mRight += 64;
			mDirtyRectForSea.mTop -= 64;
			mDirtyRectForSea.mBottom += 64;
		}
	}

	private void SaveGameObjectsYShift()
	{
		if (!mbUpdateObjectsYPos)
		{
			return;
		}
		mGameObjectShifts.Clear();
		WorldBuilderMainForm instance = WorldBuilderMainForm.Instance;
		World currentWorld = instance.GetCurrentWorld();
		List<RCSGameObject> allWorldObjects = instance.GetAllWorldObjects();
		if (allWorldObjects == null || currentWorld == null)
		{
			return;
		}
		foreach (RCSGameObject item in allWorldObjects)
		{
			float positionX = item.PositionX;
			float positionZ = item.PositionZ;
			if (positionX >= (float)mDirtyRect.mTop && positionX <= (float)mDirtyRect.mBottom && positionZ >= (float)mDirtyRect.mLeft && positionZ <= (float)mDirtyRect.mRight)
			{
				float terrainHeight = currentWorld.GetTerrainHeight(positionX, positionZ);
				mGameObjectShifts.Add(item.ObjectId, item.PositionY - terrainHeight);
			}
		}
	}

	private void ModifyTerrain()
	{
		UpdateDirtyLotEdges();
		UpdateSeaWaterGeometry();
		if (!mbUpdateObjectsYPos)
		{
			return;
		}
		WorldBuilderMainForm instance = WorldBuilderMainForm.Instance;
		World currentWorld = instance.GetCurrentWorld();
		List<RCSGameObject> allWorldObjects = instance.GetAllWorldObjects();
		if (allWorldObjects == null || currentWorld == null)
		{
			return;
		}
		foreach (RCSGameObject item in allWorldObjects)
		{
			Vector3 newPosition = new Vector3(item.PositionX, 0f, item.PositionZ);
			if (newPosition.x >= (float)mDirtyRect.mTop && newPosition.x <= (float)mDirtyRect.mBottom && newPosition.z >= (float)mDirtyRect.mLeft && newPosition.z <= (float)mDirtyRect.mRight)
			{
				newPosition.y = currentWorld.GetTerrainHeight(newPosition.x, newPosition.z);
				if (mGameObjectShifts.ContainsKey(item.ObjectId))
				{
					newPosition.y += mGameObjectShifts[item.ObjectId];
				}
				item.SetPreliminaryPosition(ref newPosition);
			}
		}
	}

	private void UpdateDirtyLotEdges()
	{
		WorldBuilderMainForm instance = WorldBuilderMainForm.Instance;
		if (instance == null)
		{
			return;
		}
		List<Lot> allLots = instance.GetAllLots();
		if (allLots == null)
		{
			return;
		}
		foreach (Lot item in allLots)
		{
			if (item != null && item.IsOverlapped(mDirtyRect))
			{
				item.ConformEdgesToTerrain();
			}
		}
	}

	private void UpdateSeaWaterGeometry()
	{
		WorldBuilderMainForm instance = WorldBuilderMainForm.Instance;
		if (instance == null)
		{
			return;
		}
		World currentWorld = instance.GetCurrentWorld();
		if (currentWorld != null)
		{
			Sea sea = currentWorld.GetSea();
			if (sea != null && mDirtyRectForSea.mRight > mDirtyRectForSea.mLeft)
			{
				sea.RebuildWaterGeometry(mDirtyRectForSea.mLeft, mDirtyRectForSea.mTop, mDirtyRectForSea.mRight, mDirtyRectForSea.mBottom);
			}
		}
	}
}
