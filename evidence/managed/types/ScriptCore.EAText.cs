using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class EAText : IEAText
{
	private class Collator : IComparer<string>
	{
		public int Compare(string x, string y)
		{
			return EAText_Compare(x, y);
		}
	}

	private Collator mCollator;

	public IComparer<string> Comparer => mCollator;

	[DllImport("Sims3Common.dll")]
	private static extern int EAText_Compare([MarshalAs(UnmanagedType.LPWStr)] string s1, [MarshalAs(UnmanagedType.LPWStr)] string s2);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string EAText_GetMoneyString(long amount);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string EAText_GetNumberString(double number);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string EAText_GetTimeString(int hour, int minute, int second, [MarshalAs(UnmanagedType.I1)] bool useTwelveHourClock);

	public EAText()
	{
		mCollator = new Collator();
		AppDomain.CurrentDomain.SetData("EAText", this);
	}

	public int Compare(string s1, string s2)
	{
		return EAText_Compare(s1, s2);
	}

	public string GetMoneyString(long amount)
	{
		return EAText_GetMoneyString(amount);
	}

	public string GetNumberString(double number)
	{
		return EAText_GetNumberString(number);
	}

	public string GetTimeString(int hour, int minute, int second, bool useTwelveHourClock)
	{
		return EAText_GetTimeString(hour, minute, second, useTwelveHourClock);
	}
}
