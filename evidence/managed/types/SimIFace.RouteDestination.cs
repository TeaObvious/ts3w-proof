// Original PC 1.67 SimIFace.dll; actual ILSpy type decompilation.
// Analyst: use the paired original IL for exact arithmetic, option constants and method identity.
namespace Sims3.SimIFace;

[Persistable]
public abstract class RouteDestination
{
	private float[] mfScoreWeights;

	private uint mTag;

	private float mWeight = 1f;

	public uint Tag
	{
		get
		{
			return mTag;
		}
		set
		{
			mTag = value;
		}
	}

	public float Weight
	{
		get
		{
			return mWeight;
		}
		set
		{
			mWeight = value;
		}
	}

	public float[] ScoreFunctionWeights
	{
		get
		{
			InitializeScoreWeights();
			return mfScoreWeights;
		}
	}

	private void CreateScoreWeights()
	{
		mfScoreWeights = new float[7];
		for (int i = 0; i < 7; i++)
		{
			mfScoreWeights[i] = 0f;
		}
	}

	private void InitializeScoreWeights()
	{
		if (mfScoreWeights == null)
		{
			CreateScoreWeights();
		}
		else if (mfScoreWeights.Length < 7)
		{
			float[] array = mfScoreWeights;
			CreateScoreWeights();
			for (int i = 0; i < array.Length; i++)
			{
				mfScoreWeights[i] = array[i];
			}
		}
	}
}
