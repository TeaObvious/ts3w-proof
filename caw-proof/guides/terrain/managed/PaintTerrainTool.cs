using System;
using System.Windows.Forms;
using Sims3.CSHost;
using Sims3.Math;
using Sims3.SimIFace;
using WorldBuilderCS.Localization;

namespace WorldBuilderCS;

public sealed class PaintTerrainTool : WorldBuilderTool, IPerFrameUpdateTarget
{
	public enum BrushMode
	{
		kPainting,
		kSculpting,
		kMasking,
		kRoutingSurface,
		kVisualizeLayer
	}

	public enum SculptModifier
	{
		kNothingSelected = -1
	}

	private enum Flags : uint
	{
		kEmpty = 0u,
		kMaskActive = 1u,
		kMaskShowAlpha = 2u,
		kMaskUseRoads = 4u
	}

	private enum MouseMoveDir : uint
	{
		kUnknown,
		kHorizontal,
		kVertical
	}

	public enum RoutableSurfaceType
	{
		kErase,
		kSims,
		kCamera
	}

	private enum WorldBuilderLayers : byte
	{
		kNonRoutable,
		kMaskLayer,
		kNumWorldBuilderLayers
	}

	private WorldBuilderMainForm mApp;

	private Sims3.CSHost.World mWorld;

	private WorldTerrain mWorldTerrain;

	private TerrainBrushesManager mBrushesManager;

	private BrushMode mBrushMode;

	private TerrainBrushBase mBrush;

	private int mColor = 255;

	private int mPrevColor = 255;

	private uint mFlags;

	private Sims3.Math.Vector2 mStartMousePt;

	private MouseMoveDir mStartMouseMoveDir;

	private byte mGrayscaleLayerId;

	private bool mbIndividualPaintMode;

	public WorldBuilderMainForm CurApp => mApp;

	public Sims3.CSHost.World CurWorld => mWorld;

	public WorldTerrain CurWorldTerrain => mWorldTerrain;

	public TerrainBrushForm ToolForm => mApp.TerrainPaintingToolForm;

	public TerrainBrushesManager BrushesManager => mBrushesManager;

	public BrushMode CurBrushMode
	{
		get
		{
			return mBrushMode;
		}
		set
		{
			if (mBrushMode == BrushMode.kVisualizeLayer && value != BrushMode.kVisualizeLayer)
			{
				DisableLayerGrayscaleView();
			}
			mBrushMode = value;
			switch (value)
			{
			case BrushMode.kMasking:
				IsMaskActive = true;
				mWorldTerrain.ShowPaintingMask(!IsMaskShowAlpha, IsMaskShowAlpha);
				break;
			case BrushMode.kVisualizeLayer:
			{
				byte layerId = 0;
				if (ToolForm.GetSelectedPaintingLayer(ref layerId))
				{
					EnableLayerGrayscaleView(layerId);
				}
				break;
			}
			}
		}
	}

	private bool IsMaskActive
	{
		get
		{
			return GetFlag(1u, mFlags);
		}
		set
		{
			SetFlag(1u, ref mFlags, value);
		}
	}

	public bool IsMaskShowAlpha
	{
		get
		{
			return GetFlag(2u, mFlags);
		}
		set
		{
			SetFlag(2u, ref mFlags, value);
		}
	}

	public bool IsMaskUseRoads
	{
		get
		{
			return GetFlag(4u, mFlags);
		}
		set
		{
			SetFlag(4u, ref mFlags, value);
		}
	}

	public int Color
	{
		get
		{
			return mColor;
		}
		set
		{
			mColor = value;
		}
	}

	public int PrevColor
	{
		set
		{
			mPrevColor = value;
		}
	}

	public bool IndividualPaintMode
	{
		get
		{
			return mbIndividualPaintMode;
		}
		set
		{
			mbIndividualPaintMode = value;
		}
	}

	public PaintTerrainTool(WorldBuilderMainForm app)
	{
		mApp = app;
		mWorld = mApp.GetCurrentWorld();
		mWorldTerrain = mWorld.GetTerrain();
		mBrushesManager = TerrainBrushesManager.Instance;
	}

	public override bool Init()
	{
		mFlags = 0u;
		mBrushesManager.Load();
		mApp.ShowTerrainPaintingForm(this);
		mStartMousePt.Set(0f, 0f);
		mStartMouseMoveDir = MouseMoveDir.kUnknown;
		return true;
	}

	public override void Shutdown()
	{
		mBrush = null;
		IsMaskActive = false;
		mWorldTerrain.ShowPaintingMask(bShow: false, bShowAlpha: false);
		mWorld.ShowBrushVisual(bShow: false);
		mWorld.SetRoutableSurfaceVisible(bVisible: false);
		mBrushesManager.Save();
		mApp.HideTerrainPaintingForm();
		mStartMousePt.Set(0f, 0f);
		mStartMouseMoveDir = MouseMoveDir.kUnknown;
	}

	public override eToolID GetID()
	{
		return eToolID.kToolPaintTerrain;
	}

	public override string GetStatusInfo()
	{
		return Strings.kPaintTerrainTool_StatusString;
	}

	public override bool MouseDown(object sender, MouseEventArgs e)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Unknown result type (might be due to invalid IL or missing references)
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if ((e.Button & 0x100000) != 0 && (Control.ModifierKeys & 0x40000) == 0)
		{
			RayCastHit rayHit = default;
			if (Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit))
			{
				Sims3.Math.Vector2 posXZ = new Sims3.Math.Vector2(rayHit.mPoint.x, rayHit.mPoint.z);
				Sims3.Math.Vector2 mousePt = new Sims3.Math.Vector2(e.X, e.Y);
				mBrush = null;
				switch (mBrushMode)
				{
				case BrushMode.kPainting:
					mBrush = new TerrainPaintBrush(this);
					break;
				case BrushMode.kMasking:
				case BrushMode.kVisualizeLayer:
					mBrush = new TerrainMaskBrush(this);
					break;
				case BrushMode.kSculpting:
					mBrush = new TerrainSculptBrush(this);
					break;
				case BrushMode.kRoutingSurface:
					mBrush = new RoutableSurfaceBrush(this);
					break;
				}
				mStartMouseMoveDir = MouseMoveDir.kUnknown;
				mStartMousePt = mousePt;
				if (mBrush != null && !mBrush.BeginApply(posXZ, mousePt, mApp.TerrainPaintingToolForm.CurBrush))
				{
					mBrush = null;
				}
			}
			return true;
		}
		return false;
	}

	public override bool MouseUp(object sender, MouseEventArgs e, ref bool bRemoveTool)
	{
		//IL_0012: Unknown result type (might be due to invalid IL or missing references)
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if (mBrush != null && (e.Button & 0x100000) != 0)
		{
			mBrush.FinishApply();
			mBrush = null;
			mStartMousePt.Set(0f, 0f);
			mStartMouseMoveDir = MouseMoveDir.kUnknown;
		}
		return true;
	}

	public override bool MouseMove(object sender, MouseEventArgs e)
	{
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0028: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f2: Unknown result type (might be due to invalid IL or missing references)
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		Sims3.Math.Vector2 vector = new Sims3.Math.Vector2(e.X, e.Y);
		if ((Control.ModifierKeys & 0x10000) != 0)
		{
			if (mStartMouseMoveDir == MouseMoveDir.kUnknown)
			{
				if (Math.Abs(vector.x - mStartMousePt.x) >= Math.Abs(vector.y - mStartMousePt.y))
				{
					mStartMouseMoveDir = MouseMoveDir.kHorizontal;
				}
				else
				{
					mStartMouseMoveDir = MouseMoveDir.kVertical;
				}
			}
			if (mStartMouseMoveDir == MouseMoveDir.kHorizontal)
			{
				vector.y = mStartMousePt.y;
			}
			else if (mStartMouseMoveDir == MouseMoveDir.kVertical)
			{
				vector.x = mStartMousePt.x;
			}
		}
		RayCastHit rayHit = default;
		if (Sims3.CSHost.World.Pick((int)vector.x, (int)vector.y, CollisionLayer.Ground, ref rayHit))
		{
			if ((e.Button & 0x100000) != 0 && mBrush != null && (Control.ModifierKeys & 0x40000) == 0)
			{
				Sims3.Math.Vector2 posXZ = new Sims3.Math.Vector2(rayHit.mPoint.x, rayHit.mPoint.z);
				mBrush.Apply(posXZ);
			}
			mWorld.ShowBrushVisual(bShow: true);
			mWorld.SetBrushVisualPos(rayHit.mPoint.x, rayHit.mPoint.z);
			return true;
		}
		mWorld.ShowBrushVisual(bShow: false);
		return false;
	}

	public override bool KeyDown(object sender, KeyEventArgs e)
	{
		//IL_000b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0015: Invalid comparison between Unknown and I4
		//IL_0066: Unknown result type (might be due to invalid IL or missing references)
		//IL_006d: Invalid comparison between Unknown and I4
		//IL_0018: Unknown result type (might be due to invalid IL or missing references)
		//IL_001d: Unknown result type (might be due to invalid IL or missing references)
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Unknown result type (might be due to invalid IL or missing references)
		//IL_002f: Expected I4, but got Unknown
		//IL_002f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Invalid comparison between Unknown and I4
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		bool result = false;
		if ((int)Control.ModifierKeys == 131072)
		{
			Keys keyCode = e.KeyCode;
			switch (keyCode - 33)
			{
			default:
				if ((int)keyCode == 68)
				{
					result = ClearMask();
				}
				break;
			case 0:
				result = mApp.TerrainPaintingToolForm.AddBrushSizeValue(1);
				break;
			case 1:
				result = mApp.TerrainPaintingToolForm.AddBrushSizeValue(-1);
				break;
			}
		}
		else if ((int)e.KeyCode == 67)
		{
			result = SwapPaintColors();
		}
		return result;
	}

	public void DoPerFrameUpdate(float elapsedMilliSecs)
	{
	}

	public bool ClearMask()
	{
		if (IsMaskActive)
		{
			Cursor current = Cursor.Current;
			Cursor.Current = Cursors.WaitCursor;
			mWorldTerrain.ShowPaintingMask(bShow: false, bShowAlpha: false);
			if (mBrushMode == BrushMode.kMasking)
			{
				mWorldTerrain.ShowPaintingMask(!IsMaskShowAlpha, IsMaskShowAlpha);
			}
			else
			{
				IsMaskActive = false;
				IsMaskShowAlpha = false;
			}
			Cursor.Current = current;
			return true;
		}
		return false;
	}

	public void InvertMask()
	{
		if (IsMaskActive)
		{
			Cursor current = Cursor.Current;
			Cursor.Current = Cursors.WaitCursor;
			mWorld.InvertMaskWeight();
			Cursor.Current = current;
		}
	}

	public void SetBrushVisualSize(float size)
	{
		float num = size;
		if (mBrushMode == BrushMode.kSculpting)
		{
			num *= 2f;
		}
		mWorld.SetBrushVisualSize(num);
	}

	public void SetBrushVisualShape(int shapeId)
	{
		mWorld.SetBrushVisualShape(shapeId);
	}

	public bool SwapPaintColors()
	{
		if (mbIndividualPaintMode)
		{
			int num = mColor;
			mColor = mPrevColor;
			mPrevColor = num;
			mApp.TerrainPaintingToolForm?.OnSwapPaintColors();
			return true;
		}
		return false;
	}

	internal void EnableLayerGrayscaleView(byte layerId)
	{
		mGrayscaleLayerId = layerId;
		mWorldTerrain.WorldToWorldBuilderLayer(mGrayscaleLayerId, 1);
		IsMaskActive = true;
		IsMaskShowAlpha = true;
		mWorldTerrain.ShowPaintingMask(bShow: false, bShowAlpha: true);
	}

	internal void DisableLayerGrayscaleView()
	{
		mWorldTerrain.WorldBuilderToWorldLayer(1, mGrayscaleLayerId);
		ClearMask();
	}
}
