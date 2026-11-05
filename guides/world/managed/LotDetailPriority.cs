/* Analyst: original PC1.67 SimIFace enum. Camera is numeric3; its C# expression as PlayerSim|Home is the decompiler rendering. These numeric priorities do not by themselves prove bitmask policy in the native consumer. */

using System;
using System.Runtime.InteropServices;

namespace Sims3.SimIFace;

[ComVisible(false)]
[Flags]
public enum LotDetailPriority
{
	None = 0,
	PlayerSim = 1,
	Home = 2,
	Camera = PlayerSim | Home,
	Active = 4
}
