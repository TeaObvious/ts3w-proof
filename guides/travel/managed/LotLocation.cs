// Original PC 1.67 SimIFace.dll; complete original type.
using System;
using System.Runtime.InteropServices;

namespace Sims3.SimIFace;

[ComVisible(false)]
public struct LotLocation(int x, int z, sbyte level, short room) : IComparable<LotLocation>
{
	public int mX = x;

	public int mZ = z;

	public sbyte mLevel = level;

	public short mRoom = room;

	public static readonly LotLocation Invalid = new LotLocation(-1, -1, 0, 0);

	public static bool operator ==(LotLocation a, LotLocation b)
	{
		if (a.mX == b.mX && a.mZ == b.mZ)
		{
			return a.mLevel == b.mLevel;
		}
		return false;
	}

	public static bool operator !=(LotLocation a, LotLocation b)
	{
		if (a.mX == b.mX && a.mZ == b.mZ)
		{
			return a.mLevel != b.mLevel;
		}
		return true;
	}

	public override bool Equals(object obj)
	{
		if (obj == null || GetType() != obj.GetType())
		{
			return false;
		}
		LotLocation lotLocation = (LotLocation)obj;
		return lotLocation == this;
	}

	public override int GetHashCode()
	{
		return mX.GetHashCode() ^ mZ.GetHashCode() ^ mLevel.GetHashCode();
	}

	public int CompareTo(LotLocation other)
	{
		if (other.mLevel > mLevel)
		{
			return 1;
		}
		if (other.mLevel < mLevel)
		{
			return -1;
		}
		if (other.mZ > mZ)
		{
			return 1;
		}
		if (other.mZ < mZ)
		{
			return -1;
		}
		if (other.mX > mX)
		{
			return 1;
		}
		if (other.mX < mX)
		{
			return -1;
		}
		return 0;
	}
}
