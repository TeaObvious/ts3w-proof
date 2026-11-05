using System;
using System.Collections.Generic;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using System.Xml;
using System.Xml.XPath;
using Sims3;
using Sims3.CSHost;
using Sims3.DbDataLayer;
using Sims3.Math;
using Sims3.Metadata;
using Sims3.SimIFace;
using WorldBuilderCS.Localization;
using WorldBuilderCS.WorldHost;

namespace WorldBuilderCS;

internal sealed class PlaceNewObjectTool : WorldBuilderTool
{
	internal enum eToolSubType
	{
		kEffect,
		kSpeedTree,
		kDataBase
	}

	internal enum ToolMode
	{
		kNone,
		kPlaceNewObject,
		kRotateNewObject
	}

	private const string kContentCategoryElement = "contentCategory";

	private const string kContentCategoryQuery = "//contentCategory";

	private const float kAltitudeIncrement = 0.1f;

	private WorldBuilderMainForm mApp;

	private int mRotationAnchorX;

	private int mRotationAnchorY;

	private Sims3.Math.Vector3 mSavedPosition;

	private Sims3.Math.Vector3 mSavedRotation;

	private Sims3.Math.Vector3 mSavedWorldOffset;

	private Sims3.Math.Vector3 mSavedRotationBeforeRotationOp;

	private Sims3.CSHost.ResourceKey[] mSpeedTreeResourceKeys;

	private Random mRandGen = new Random();

	private Point mCurMousePt = new Point(0, 0);

	private ToolMode mMode;

	private Command mPendingCommand;

	[CompilerGenerated]
	private static Predicate<string> _003C_003E9__CachedAnonymousMethodDelegate1;

	internal ToolMode Mode
	{
		set
		{
			if (mApp != null && value != ToolMode.kPlaceNewObject && value != ToolMode.kRotateNewObject)
			{
				mApp.ClearCurrentSelection();
			}
			mMode = value;
			if (mApp != null)
			{
				mApp.StatusInfo = GetStatusInfo();
			}
		}
	}

	internal PlaceNewObjectTool(WorldBuilderMainForm app)
	{
		mApp = app;
	}

	public override bool Init()
	{
		mSavedWorldOffset.Set(0f, 0f, 0f);
		Mode = ToolMode.kNone;
		return true;
	}

	public override void Shutdown()
	{
		ClearCurrentSelection();
	}

	private void ClearCurrentSelection()
	{
		if (mMode == ToolMode.kPlaceNewObject)
		{
			RCSGameObject currentlySelectedObject = mApp.GetCurrentlySelectedObject();
			mApp.DeleteGameObject(currentlySelectedObject);
		}
		else
		{
			mApp.ClearCurrentObjectSelection();
		}
		Mode = ToolMode.kNone;
		mSavedWorldOffset.Set(0f, 0f, 0f);
	}

	public override eToolID GetID()
	{
		return eToolID.kToolObject;
	}

	public override string GetStatusInfo()
	{
		switch (mMode)
		{
		case ToolMode.kPlaceNewObject:
		case ToolMode.kRotateNewObject:
			return Strings.kObjectTool_PlaceNewObjectModeStatusString;
		default:
			return string.Empty;
		}
	}

	private RCSGameObject PickObject(MouseEventArgs e)
	{
		RayCastHit rayHit = default;
		if (!Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.GameplayPick, ref rayHit))
		{
			return null;
		}
		RCSGameObject rCSGameObject = mApp.GetGameObjectGivenId(rayHit.mObjectId);
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

	private RCSGameObject CloneObject(RCSGameObject sourceObject)
	{
		if (sourceObject != null)
		{
			mPendingCommand = new CmdCloneGameObject(sourceObject, groupWithPreviousCommand: false);
			if ((mPendingCommand as CmdCloneGameObject).CreateGameObjectClone())
			{
				return (mPendingCommand as CmdCloneGameObject).GetClonedObject();
			}
		}
		return null;
	}

	private void SaveObjectOriginalLocation(RCSGameObject gameObject, MouseEventArgs e)
	{
		if (gameObject == null)
		{
			return;
		}
		RCSTransformComponent transformComponent = gameObject.TransformComponent;
		if (transformComponent != null)
		{
			mSavedPosition = transformComponent.Position;
			mSavedRotation = transformComponent.EulerRotation;
			RayCastHit rayHit = default;
			if (Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit, bTryPickWater: true))
			{
				mSavedWorldOffset = rayHit.mPoint - mSavedPosition;
			}
		}
	}

	private bool MoveObject(RCSGameObject gameObject, MouseEventArgs e, bool bSnapRotation)
	{
		if (gameObject == null)
		{
			return false;
		}
		if (gameObject.Manager != null && gameObject.Manager is Lot)
		{
			return false;
		}
		RayCastHit rayHit = default;
		if (!Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit, bTryPickWater: true))
		{
			return false;
		}
		Sims3.Math.Vector3 vector = default;
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
		Sims3.CSHost.World currentWorld = mApp.GetCurrentWorld();
		if (currentWorld != null && currentWorld.IsWorldPosOnAnyLot(rayHit2.mPoint.x, rayHit2.mPoint.z))
		{
			return false;
		}
		mApp.SnapToCenterPosition(ref rayHit2.mPoint);
		gameObject.ApplyTreeVerticalOffset(ref rayHit2.mPoint);
		gameObject.SetPreliminaryPosition(ref rayHit2.mPoint);
		if (bSnapRotation)
		{
			Sims3.Math.Vector3 rotation = gameObject.Rotation;
			float rotY = 0f;
			if (mApp.SnapEulerRotationY(ref rotY))
			{
				rotation.Set(0f, rotY, 0f);
			}
			gameObject.ReplaceEulerRotation(rotation);
		}
		return true;
	}

	private bool RotateObject(RCSGameObject gameObject, MouseEventArgs e)
	{
		if (gameObject == null)
		{
			return false;
		}
		if (gameObject.Manager != null && gameObject.Manager is Lot)
		{
			return false;
		}
		bool flag = SnapRotation();
		int num = e.X - mRotationAnchorX;
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
		if (flag)
		{
			float num6 = Geometry.Radians(15f);
			int num7 = (int)(num5 / num6);
			num5 = (float)num7 * num6;
		}
		Sims3.Math.Vector3 newRotation = mSavedRotationBeforeRotationOp;
		newRotation.y += num5;
		gameObject.ReplaceEulerRotation(newRotation);
		return true;
	}

	private void PickAndSelectObject(MouseEventArgs e, bool bCheckForCloneRequest)
	{
		//IL_0032: Unknown result type (might be due to invalid IL or missing references)
		//IL_003c: Invalid comparison between Unknown and I4
		RCSGameObject rCSGameObject = PickObject(e);
		if (rCSGameObject == null)
		{
			return;
		}
		if (rCSGameObject.Manager != null && rCSGameObject.Manager is Lot)
		{
			mApp.SelectGameObject(rCSGameObject);
			return;
		}
		bool flag = false;
		if (bCheckForCloneRequest && (int)Control.ModifierKeys == 65536)
		{
			rCSGameObject = CloneObject(rCSGameObject);
			flag = true;
		}
		if (rCSGameObject != null)
		{
			SaveObjectOriginalLocation(rCSGameObject, e);
			mApp.SelectGameObject(rCSGameObject);
			if (flag)
			{
				Mode = ToolMode.kPlaceNewObject;
			}
		}
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
		mCurMousePt.X = e.X;
		mCurMousePt.Y = e.Y;
		ToolMode toolMode = mMode;
		if (toolMode == ToolMode.kPlaceNewObject)
		{
			RCSGameObject currentlySelectedObject = mApp.GetCurrentlySelectedObject();
			if (currentlySelectedObject != null)
			{
				Mode = ToolMode.kRotateNewObject;
				mRotationAnchorX = e.X;
				mRotationAnchorY = e.Y;
				mSavedRotationBeforeRotationOp = currentlySelectedObject.Rotation;
			}
			else
			{
				Mode = ToolMode.kNone;
			}
			mApp.RefreshPropertyBrowser();
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
		ToolMode toolMode = mMode;
		if (toolMode == ToolMode.kRotateNewObject)
		{
			RCSGameObject currentlySelectedObject = mApp.GetCurrentlySelectedObject();
			if (currentlySelectedObject != null)
			{
				if (mPendingCommand != null)
				{
					mApp.SubmitUndoCommand(mPendingCommand);
					mPendingCommand = null;
				}
				currentlySelectedObject.Move(currentlySelectedObject.Position, currentlySelectedObject.Rotation, mSavedPosition, mSavedRotation, groupWithPreviousCommand: true);
				if (currentlySelectedObject.GameObject.HasCatalogProductTypeFlag(CatalogProductObject.eTypeFlag.IsRoadBridge))
				{
					CmdCreateRoadBridge cmd = new CmdCreateRoadBridge(mApp.GetCurrentWorld().GetTerrain(), currentlySelectedObject, groupWithPreviousCommand: true);
					mApp.SubmitUndoCommand(cmd);
				}
				mApp.ClearCurrentObjectSelection();
			}
			Mode = ToolMode.kNone;
			mSavedWorldOffset.Set(0f, 0f, 0f);
			if (currentlySelectedObject != null)
			{
				RCSGameObject rCSGameObject = CloneObject(currentlySelectedObject);
				if (rCSGameObject != null)
				{
					mApp.SelectGameObject(rCSGameObject);
					Mode = ToolMode.kPlaceNewObject;
				}
			}
		}
		return true;
	}

	public override bool MouseMove(object sender, MouseEventArgs e)
	{
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if (e.X == mCurMousePt.X && e.Y == mCurMousePt.Y)
		{
			return false;
		}
		mCurMousePt.X = e.X;
		mCurMousePt.Y = e.Y;
		RCSGameObject currentlySelectedObject = mApp.GetCurrentlySelectedObject();
		if (currentlySelectedObject == null)
		{
			return false;
		}
		bool result = false;
		switch (mMode)
		{
		case ToolMode.kPlaceNewObject:
			result = MoveObject(currentlySelectedObject, e, bSnapRotation: true);
			break;
		case ToolMode.kRotateNewObject:
			result = RotateObject(currentlySelectedObject, e);
			break;
		}
		return result;
	}

	public override bool KeyDown(object sender, KeyEventArgs e)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0011: Invalid comparison between Unknown and I4
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if ((int)e.KeyCode == 27 && (mMode == ToolMode.kPlaceNewObject || mMode == ToolMode.kRotateNewObject))
		{
			RCSGameObject currentlySelectedObject = mApp.GetCurrentlySelectedObject();
			if (currentlySelectedObject != null && mApp.DeleteGameObject(currentlySelectedObject) && mPendingCommand != null)
			{
				mPendingCommand.Dispose();
				mPendingCommand = null;
			}
			Mode = ToolMode.kNone;
		}
		return false;
	}

	private ContentCategory GetContentCategory(ItemKey instanceKey)
	{
		try
		{
			DataStore instance = DataStore.Instance;
			string instanceData = instance.GetInstanceData(instanceKey);
			ContentCategory result = ContentCategory.kNone;
			if (!string.IsNullOrEmpty(instanceData))
			{
				XmlDocument xmlDocument = new XmlDocument();
				xmlDocument.LoadXml(instanceData);
				XPathNavigator xPathNavigator = xmlDocument.CreateNavigator();
				XPathNavigator xPathNavigator2 = xPathNavigator.SelectSingleNode("//contentCategory");
				if (xPathNavigator2 != null && !string.IsNullOrEmpty(xPathNavigator2.Value))
				{
					result = (ContentCategory)Enum.Parse(typeof(ContentCategory), xPathNavigator2.Value);
				}
			}
			return result;
		}
		catch (Exception)
		{
			return ContentCategory.kNone;
		}
	}

	internal void AddNewAssetInstance(Sims3.CSHost.ResourceKey resKey, string objectName)
	{
		//IL_0056: Unknown result type (might be due to invalid IL or missing references)
		ClearCurrentSelection();
		Sims3.CSHost.ResourceKey key = new Sims3.CSHost.ResourceKey(47985727u, resKey.mGroup, resKey.mInstance);
		mPendingCommand = new CmdAddDatabaseObject(key, CmdAddDatabaseObject.KeyType.kResourceKey, objectName, groupWithPreviousCommand: false);
		if ((mPendingCommand as CmdAddDatabaseObject).CreateGameObject())
		{
			Mode = ToolMode.kPlaceNewObject;
		}
		else
		{
			MessageBox.Show(Strings.kObjectTool_ErrorCreatingInstance, Strings.kObjectTool_Error, (MessageBoxButtons)0, (MessageBoxIcon)48);
		}
	}

	internal void AddNewDatabaseInstance(List<ItemKey> instanceKeys)
	{
		//IL_0143: Unknown result type (might be due to invalid IL or missing references)
		//IL_0148: Unknown result type (might be due to invalid IL or missing references)
		//IL_014a: Unknown result type (might be due to invalid IL or missing references)
		//IL_014c: Unknown result type (might be due to invalid IL or missing references)
		//IL_014e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0151: Unknown result type (might be due to invalid IL or missing references)
		//IL_0163: Expected I4, but got Unknown
		ClearCurrentSelection();
		bool flag = false;
		int num = 0;
		int count = instanceKeys.Count;
		while (num < count)
		{
			ItemKey itemKey = instanceKeys[num];
			ItemKey instancePrototypeKey = DataStore.Instance.GetInstancePrototypeKey(itemKey);
			uint type = (uint)DataStore.Instance.GetClassResourceIdByPrototype(instancePrototypeKey);
			ContentCategory contentCategory = GetContentCategory(itemKey);
			if (itemKey.ResourceType == 329217425)
			{
				Sims3.CSHost.ResourceKey key = new Sims3.CSHost.ResourceKey((uint)itemKey.ResourceType, (uint)itemKey.GroupId, (ulong)itemKey.Id);
				key.mGroup |= (uint)contentCategory;
				mPendingCommand = new CmdAddDatabaseObject(key, CmdAddDatabaseObject.KeyType.kMetadataKey, itemKey.Name, groupWithPreviousCommand: false);
				flag = (mPendingCommand as CmdAddDatabaseObject).CreateGameObject();
			}
			else
			{
				Sims3.CSHost.ResourceKey key2 = ResourceMgr.CreateKeyFromName(itemKey.Name, type, (uint)itemKey.GroupId);
				key2.mGroup |= (uint)contentCategory;
				mPendingCommand = new CmdAddDatabaseObject(key2, CmdAddDatabaseObject.KeyType.kResourceKey, itemKey.Name, groupWithPreviousCommand: false);
				flag = (mPendingCommand as CmdAddDatabaseObject).CreateGameObject();
			}
			if (flag)
			{
				num++;
				continue;
			}
			DialogResult val = MessageBox.Show(Strings.kObjectTool_ErrorCreatingInstance + " \"" + itemKey.Name + "\".  " + Strings.kObjectTool_MakeSureItemExported, Strings.kObjectTool_Error, (MessageBoxButtons)2, (MessageBoxIcon)48, (MessageBoxDefaultButton)512);
			DialogResult val2 = val;
			switch (val2 - 3)
			{
			case 0:
				num = count;
				break;
			case 2:
				num++;
				break;
			}
		}
		if (flag)
		{
			Mode = ToolMode.kPlaceNewObject;
		}
	}

	internal bool AddEffectObject(string instanceName, string localizedName)
	{
		if (!string.IsNullOrEmpty(instanceName))
		{
			mPendingCommand = new CmdAddEffectObject(instanceName, localizedName, groupWithPreviousCommand: false);
			if ((mPendingCommand as CmdAddEffectObject).CreateEffectObject())
			{
				Mode = ToolMode.kPlaceNewObject;
				return true;
			}
		}
		return false;
	}

	public static List<string> GetEffectNames(bool bUserMode)
	{
		List<string> list = new List<string>((string[])EffectComponent.GetEffectNameList().ToArray(typeof(string)));
		if (bUserMode)
		{
			list.RemoveAll((string match) => !BaseGameWorldObjects.ValidUserFX.Contains(match));
		}
		return list;
	}

	internal bool AddSpeedTreeObject(Sims3.CSHost.ResourceKey treeKey, string treeName)
	{
		mPendingCommand = new CmdAddTreeObject(treeKey, treeName, (uint)mRandGen.Next(), groupWithPreviousCommand: false);
		if ((mPendingCommand as CmdAddTreeObject).CreateTreeObject())
		{
			Mode = ToolMode.kPlaceNewObject;
			return true;
		}
		return false;
	}

	private bool SnapRotation()
	{
		//IL_0000: Unknown result type (might be due to invalid IL or missing references)
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_000c: Invalid comparison between Unknown and I4
		return (Control.ModifierKeys & 0x10000) != 0;
	}
}
