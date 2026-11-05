// Original PC 1.67 SimIFace.dll; complete type Sims3.SimIFace.PortalDirection.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

namespace Sims3.SimIFace;

public enum PortalDirection
{
	Back = 0,
	Down = Back,
	Up = 1,
	Front = Up,
	DownExitLeft = 2,
	DownExitRight = 3,
	Undefined = -1
}
