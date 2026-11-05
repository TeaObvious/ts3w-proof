using System.Windows.Forms;

namespace WorldBuilderCS;

public abstract class WorldBuilderTool
{
	public enum eToolID
	{
		kToolSelect,
		kToolMove,
		kToolRotate,
		kToolObject,
		kToolPond,
		kToolPlaceNewLot,
		kToolLotLevelRect,
		kToolCloneLot,
		kToolNewRoad,
		kToolNewIntersection,
		kToolEditRoad,
		kToolRotateRoad,
		kToolRoadGrading,
		kToolChangeSeaLevel,
		kToolPaintTerrain,
		kToolTerrainAutoPaint,
		kToolSnapLot,
		kToolLotConformEdges
	}

	protected static bool sbEnabled = true;

	public static bool Enabled
	{
		get
		{
			return sbEnabled;
		}
		set
		{
			sbEnabled = value;
		}
	}

	public virtual bool Init()
	{
		return true;
	}

	public virtual void Shutdown()
	{
	}

	public virtual void Reset()
	{
		Shutdown();
		Init();
	}

	public abstract eToolID GetID();

	public abstract string GetStatusInfo();

	public virtual bool MouseDown(object sender, MouseEventArgs e)
	{
		return false;
	}

	public virtual bool MouseUp(object sender, MouseEventArgs e, ref bool bRemoveTool)
	{
		return false;
	}

	public virtual bool MouseMove(object sender, MouseEventArgs e)
	{
		return false;
	}

	public virtual bool KeyDown(object sender, KeyEventArgs e)
	{
		return false;
	}

	public virtual void Draw()
	{
	}

	protected void SetFlag(uint flag, ref uint flagSet, bool setFlag)
	{
		if (setFlag)
		{
			flagSet |= flag;
		}
		else if (GetFlag(flag, flagSet))
		{
			flagSet ^= flag;
		}
	}

	protected bool GetFlag(uint flag, uint flagSet)
	{
		return (flagSet & flag) != 0;
	}
}
