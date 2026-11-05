using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class Random : IRandom
{
	[DllImport("Sims3Common.dll")]
	private static extern double Random_NextDoubleImpl();

	public Random()
	{
		AppDomain.CurrentDomain.SetData("RandomGen", this);
	}

	public double NextDouble()
	{
		return Random_NextDoubleImpl();
	}
}
