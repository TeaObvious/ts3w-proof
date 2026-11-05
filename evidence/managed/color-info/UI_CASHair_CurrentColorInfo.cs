// PC1.67 identified original managed method(s); execution-free ILSpy rendering.
// Original metadata names/tokens retained; accessor fragments need not be standalone compilable C#.
// See guides/appearance/color-info-serialization.md and the central managed reference inputs.
using Sims3.Metadata;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;

{
	ColorInfo colorInfo = new ColorInfo();
	colorInfo.Usage = ColorInfo.PreferredUse.Hair;
	colorInfo.Colors = new Color[4]
	{
		default,
		default,
		default,
		default
	};
	Color color = Color.Preset.None;
	for (uint num = 0u; num < 4; num++)
	{
		color = Responder.Instance.CASModel.GetHairColor(BodyTypes.Hair, (int)num);
		color.Alpha = byte.MaxValue;
		colorInfo.Colors[num].ARGB = color.ARGB;
	}
	return colorInfo;
}
