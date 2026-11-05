using Sims3;
using Sims3.CSHost;
using Sims3.Math;

namespace WorldBuilderCS;

public class CmdCreateRoadIntersection : Command
{
	private Vector2 mPosition;

	private float mRotation;

	private RoadIntersection mNewIntersection;

	private WorldTerrain mWorldTerrain;

	private bool mIsSidewalk;

	private bool mIsDirt;

	public RoadIntersection NewRoadIntersection => mNewIntersection;

	public CmdCreateRoadIntersection(bool groupWithPrev, WorldTerrain worldTerrain, Vector2 position, float rotation, bool isSidewalk, bool isDirt)
		: base(groupWithPrev)
	{
		mWorldTerrain = worldTerrain;
		mPosition = position;
		mRotation = rotation;
		mIsSidewalk = isSidewalk;
		mIsDirt = isDirt;
	}

	public override bool Execute()
	{
		mNewIntersection = mWorldTerrain.CreateRoadIntersection(mPosition, mRotation, mIsSidewalk, mIsDirt);
		return true;
	}

	public override void Undo()
	{
		mNewIntersection.Visible = false;
	}

	public override void Redo()
	{
		mNewIntersection.Visible = true;
	}
}
