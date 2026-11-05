using System;
using System.Runtime.InteropServices;

namespace Sims3.Pipeline;

public class SpeedTreeUtils
{
	[DllImport("Sims3PipelineHelper", EntryPoint = "CreateSpeedTreeConverter")]
	private static extern IntPtr RawCreateSpeedTreeConverter();

	public static INativeSpeedTreeConverter CreateSpeedTreeConverter()
	{
		IntPtr pUnk = RawCreateSpeedTreeConverter();
		try
		{
			return (INativeSpeedTreeConverter)Marshal.GetTypedObjectForIUnknown(pUnk, typeof(INativeSpeedTreeConverter));
		}
		finally
		{
			Marshal.Release(pUnk);
		}
	}
}
