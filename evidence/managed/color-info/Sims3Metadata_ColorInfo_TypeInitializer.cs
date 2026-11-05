// PC1.67 identified original managed method(s); execution-free ILSpy rendering.
// Original metadata names/tokens retained; accessor fragments need not be standalone compilable C#.
// See guides/appearance/color-info-serialization.md and the central managed reference inputs.
using System;
using Sims3.SimIFace.CAS;

static ColorInfo()
{
	kVersion = 6u;
	sCASUtils = null;
	kHSVPostNames = new string[7] { "", " Bg", " 0", " 1", " 2", " 3", " 4" };
	sCASUtils = (ICASUtils)AppDomain.CurrentDomain.GetData("CASUtils");
}
