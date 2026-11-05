using System.Collections;
using Sims3;
using Sims3.CSHost;
using Sims3.Math;

namespace WorldBuilderCS;

public class CmdTranslateSplineKnots(bool groupWithPrev) : Command(groupWithPrev)
{
	private class Move
	{
		public Vector2[] mDeltaPos = new Vector2[4];

		public Vector2[] mOrigPos = new Vector2[4];
	}

	private Hashtable mMoveTable = new Hashtable();

	public void AddMove(RoadSpline spline, int knotIndex, Vector2 deltaPosition)
	{
		if (mMoveTable.ContainsKey(spline))
		{
			((Move)mMoveTable[spline]).mDeltaPos[knotIndex] += deltaPosition;
			return;
		}
		Move move = new Move();
		spline.GetKnots(out move.mOrigPos[0], out move.mOrigPos[1], out move.mOrigPos[2], out move.mOrigPos[3]);
		move.mDeltaPos[knotIndex] = deltaPosition;
		mMoveTable.Add(spline, move);
	}

	public void AddSet(RoadSpline spline, int knotIndex, Vector2 newPosition)
	{
		if (mMoveTable.ContainsKey(spline))
		{
			Move move = (Move)mMoveTable[spline];
			ref Vector2 reference = ref move.mDeltaPos[knotIndex];
			reference = newPosition - move.mOrigPos[knotIndex];
		}
		else
		{
			Move move2 = new Move();
			spline.GetKnots(out move2.mOrigPos[0], out move2.mOrigPos[1], out move2.mOrigPos[2], out move2.mOrigPos[3]);
			ref Vector2 reference2 = ref move2.mDeltaPos[knotIndex];
			reference2 = newPosition - move2.mOrigPos[knotIndex];
			mMoveTable.Add(spline, move2);
		}
	}

	public override bool Execute()
	{
		foreach (DictionaryEntry item in mMoveTable)
		{
			RoadSpline roadSpline = (RoadSpline)item.Key;
			Move move = (Move)item.Value;
			if (!roadSpline.TranslateKnots(move.mDeltaPos[0], move.mDeltaPos[1], move.mDeltaPos[2], move.mDeltaPos[3], isStillMoving: false))
			{
				Undo();
				return false;
			}
		}
		return true;
	}

	public override bool IsExtendable(Command possibleExtension)
	{
		if (!(possibleExtension is CmdTranslateSplineKnots cmdTranslateSplineKnots))
		{
			return false;
		}
		foreach (DictionaryEntry item in cmdTranslateSplineKnots.mMoveTable)
		{
			RoadSpline key = (RoadSpline)item.Key;
			_ = (Move)item.Value;
			if (!mMoveTable.ContainsKey(key))
			{
				return false;
			}
		}
		return true;
	}

	public override void Extend(Command possibleExtension)
	{
		CmdTranslateSplineKnots cmdTranslateSplineKnots = (CmdTranslateSplineKnots)possibleExtension;
		foreach (DictionaryEntry item in cmdTranslateSplineKnots.mMoveTable)
		{
			RoadSpline key = (RoadSpline)item.Key;
			Move move = (Move)item.Value;
			Move move2 = (Move)mMoveTable[key];
			move2.mDeltaPos[0] += move.mDeltaPos[0];
			move2.mDeltaPos[1] += move.mDeltaPos[1];
			move2.mDeltaPos[2] += move.mDeltaPos[2];
			move2.mDeltaPos[3] += move.mDeltaPos[3];
		}
	}

	public override void Undo()
	{
		foreach (DictionaryEntry item in mMoveTable)
		{
			RoadSpline roadSpline = (RoadSpline)item.Key;
			Move move = (Move)item.Value;
			roadSpline.SetKnots(move.mOrigPos[0], move.mOrigPos[1], move.mOrigPos[2], move.mOrigPos[3]);
		}
	}
}
