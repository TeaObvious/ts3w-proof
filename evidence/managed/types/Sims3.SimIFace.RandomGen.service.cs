// Original PC 1.67 SimIFace.dll; selected complete actual ILSpy member, no fabricated class wrapper.
// Declaring type Sims3.SimIFace.RandomGen; field gRandomGen is the original static IRandom reference.
// Complete paired IL06000BD9: lazy cache, zero only while still unavailable, otherwise delegates NextDouble.
	public static double NextDouble()
	{
		if (gRandomGen == null)
		{
			gRandomGen = (IRandom)AppDomain.CurrentDomain.GetData("RandomGen");
			if (gRandomGen == null)
			{
				return 0.0;
			}
		}
		return gRandomGen.NextDouble();
	}
