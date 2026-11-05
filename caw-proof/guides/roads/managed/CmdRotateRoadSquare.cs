using Sims3;
using Sims3.CSHost;

namespace WorldBuilderCS;

public class CmdRotateRoadSquare : Command
{
	private RoadSquare mRoadSquare;

	private float mDeltaRot;

	private float mOrigRot;

	public CmdRotateRoadSquare(bool groupWithPrev, RoadSquare square, float deltaRot)
		: base(groupWithPrev)
	{
		mRoadSquare = square;
		mDeltaRot = deltaRot;
		mOrigRot = square.Rotation;
	}

	public override bool Execute()
	{
		mRoadSquare.Rotate(mDeltaRot, isStillMoving: false);
		return true;
	}

	public override void Undo()
	{
		mRoadSquare.Rotation = mOrigRot;
	}

	public override bool IsExtendable(Command possibleExtension)
	{
		if (!(possibleExtension is CmdRotateRoadSquare cmdRotateRoadSquare))
		{
			return false;
		}
		return mRoadSquare == cmdRotateRoadSquare.mRoadSquare;
	}

	public override void Extend(Command possibleExtension)
	{
		CmdRotateRoadSquare cmdRotateRoadSquare = possibleExtension as CmdRotateRoadSquare;
		mDeltaRot += cmdRotateRoadSquare.mDeltaRot;
	}
}
