using System;
using System.Windows.Forms;
using Sims3.CSHost;
using Sims3.SimIFace;
using WorldBuilderCS.Localization;
using WorldBuilderCS.WorldHost;

namespace WorldBuilderCS;

internal class SelectTool : WorldBuilderTool
{
	public override eToolID GetID()
	{
		return eToolID.kToolSelect;
	}

	public override string GetStatusInfo()
	{
		return Strings.kSelectTool_Status;
	}

	public override bool MouseDown(object sender, MouseEventArgs e)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cb: Invalid comparison between Unknown and I4
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if ((e.Button & 0x100000) == 0)
		{
			return false;
		}
		WorldBuilderMainForm instance = WorldBuilderMainForm.Instance;
		RCSGameObject rCSGameObject = PickGameObject(e.X, e.Y);
		if (rCSGameObject != null)
		{
			instance.ClearCurrentSelection();
			instance.SelectGameObject(rCSGameObject);
			GameObject gameObject = rCSGameObject.GameObject;
			if (gameObject != null && gameObject.HasCatalogProductTypeFlag(CatalogProductObject.eTypeFlag.IsRoadBridge))
			{
				SelectRoadBridgeSpline(rCSGameObject.ObjectId);
			}
			return true;
		}
		RoadObject roadObject = PickRoadObject(e.X, e.Y);
		if (roadObject != null)
		{
			instance.ClearCurrentSelection();
			instance.SelectRoadObject(roadObject);
			return true;
		}
		Lot lot = PickLot(e.X, e.Y);
		if (lot != null)
		{
			instance.ClearCurrentSelection();
			Lot lotNodeGivenId = instance.GetLotNodeGivenId(lot.Id);
			instance.SelectLot(lotNodeGivenId);
			if ((int)Control.ModifierKeys == 65536)
			{
				instance.SetCurrentTool(eToolID.kToolCloneLot);
				if (instance.GetCurrentTool() is CloneLotTool cloneLotTool)
				{
					cloneLotTool.MouseDown(sender, e);
				}
			}
			lot.Dispose();
			lot = null;
			return true;
		}
		return false;
	}

	public override bool KeyDown(object sender, KeyEventArgs e)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0010: Unknown result type (might be due to invalid IL or missing references)
		//IL_0013: Invalid comparison between Unknown and I4
		//IL_0015: Unknown result type (might be due to invalid IL or missing references)
		//IL_0018: Invalid comparison between Unknown and I4
		//IL_005e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0064: Invalid comparison between Unknown and I4
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		Keys keyCode = e.KeyCode;
		if ((int)keyCode != 27)
		{
			if ((int)keyCode == 46)
			{
				WorldBuilderMainForm instance = WorldBuilderMainForm.Instance;
				RCSGameObject currentlySelectedObject = instance.GetCurrentlySelectedObject();
				if (currentlySelectedObject != null && WorldBuilderUtils.DeleteGameObject(currentlySelectedObject, bGroupWithPreviousCommand: false))
				{
					instance.ClearCurrentObjectSelection();
					return true;
				}
				Lot currentlySelectedLot = instance.GetCurrentlySelectedLot();
				if (currentlySelectedLot != null)
				{
					if ((int)MessageBox.Show(Strings.kLayers_DoYouWantDeleteLot, Strings.kLayers_Delete, (MessageBoxButtons)3) != 6)
					{
						return true;
					}
					currentlySelectedLot.EnableDrawPreliminaryLot(bEnable: false);
					if (instance.SubmitUndoCommand(new CmdDeleteLot(currentlySelectedLot, instance.GetCurrentWorld())))
					{
						instance.ClearCurrentLotSelection();
						return true;
					}
				}
				instance.DeleteAllSelectedRoadObjects();
				return true;
			}
			return false;
		}
		WorldBuilderMainForm.Instance.ClearCurrentSelection();
		return true;
	}

	protected RCSGameObject PickGameObject(int screenX, int screenY)
	{
		RayCastHit rayHit = default;
		if (!Sims3.CSHost.World.Pick(screenX, screenY, CollisionLayer.GameplayPick, ref rayHit))
		{
			return null;
		}
		RCSGameObject rCSGameObject = WorldBuilderMainForm.Instance.GetGameObjectGivenId(rayHit.mObjectId);
		if (rCSGameObject == null)
		{
			IntPtr intPtr = GameObjectFactory.Find(rayHit.mObjectId);
			if (!(intPtr != IntPtr.Zero))
			{
				return null;
			}
			rCSGameObject = new RCSGameObject(rayHit.mObjectId);
		}
		return rCSGameObject;
	}

	protected Lot PickLot(int screenX, int screenY)
	{
		RayCastHit rayHit = default;
		if (Sims3.CSHost.World.Pick(screenX, screenY, CollisionLayer.Ground, ref rayHit))
		{
			Sims3.CSHost.World currentWorld = WorldBuilderMainForm.Instance.GetCurrentWorld();
			if (currentWorld != null)
			{
				return currentWorld.GetLotAtLocation(rayHit.mPoint.x, rayHit.mPoint.z);
			}
		}
		return null;
	}

	protected RoadObject PickRoadObject(int screenX, int screenY)
	{
		Sims3.CSHost.World currentWorld = WorldBuilderMainForm.Instance.GetCurrentWorld();
		if (currentWorld != null)
		{
			WorldTerrain terrain = currentWorld.GetTerrain();
			if (terrain != null)
			{
				terrain.PickRoadObject(screenX, screenY, out var hitGround, out var hitObject, out var _, out var _);
				if (hitGround)
				{
					return hitObject;
				}
			}
		}
		return null;
	}

	private void SelectRoadBridgeSpline(ulong roadBrigeObjectId)
	{
		WorldBuilderMainForm instance = WorldBuilderMainForm.Instance;
		Sims3.CSHost.World currentWorld = instance.GetCurrentWorld();
		if (currentWorld == null)
		{
			return;
		}
		WorldTerrain terrain = currentWorld.GetTerrain();
		if (terrain != null)
		{
			RoadSpline roadBridgeSpline = terrain.GetRoadBridgeSpline(roadBrigeObjectId);
			if (roadBridgeSpline != null)
			{
				instance.SelectRoadObject(roadBridgeSpline);
			}
		}
	}
}
