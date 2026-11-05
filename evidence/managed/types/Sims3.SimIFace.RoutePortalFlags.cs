// Original PC 1.67 SimIFace.dll; complete type Sims3.SimIFace.RoutePortalFlags.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using System;

namespace Sims3.SimIFace;

[Flags]
public enum RoutePortalFlags
{
	None = 0,
	OneWayPortal = 1,
	RabbitHoleEntry = 2,
	RabbitHoleExit = 4
}
