using Sims3;
using Sims3.CSHost;
using Sims3.Math;

namespace WorldBuilderCS;

public class CmdCreateRoadSpline : Command
{
	private Vector2[] mKnots = new Vector2[4];

	private RoadSpline mNewSpline;

	private WorldTerrain mWorldTerrain;

	private bool mIsSidewalk;

	private bool mIsDirt;

	public RoadSpline NewRoadSpline => mNewSpline;

	public CmdCreateRoadSpline(bool groupWithPrev, WorldTerrain worldTerrain, Vector2 k0, Vector2 k1, Vector2 k2, Vector2 k3, bool isSidewalk, bool isDirt)
		: base(groupWithPrev)
	{
		mWorldTerrain = worldTerrain;
		mKnots[0] = k0;
		mKnots[1] = k1;
		mKnots[2] = k2;
		mKnots[3] = k3;
		mIsSidewalk = isSidewalk;
		mIsDirt = isDirt;
	}

	public override bool Execute()
	{
		mNewSpline = mWorldTerrain.CreateRoadSpline(mKnots[0], mKnots[1], mKnots[2], mKnots[3], mIsSidewalk, mIsDirt, isRoadBridge: false);
		return mNewSpline != null;
	}

	public override void Undo()
	{
		mNewSpline.Visible = false;
	}

	public override void Redo()
	{
		mNewSpline.Visible = true;
	}
}
