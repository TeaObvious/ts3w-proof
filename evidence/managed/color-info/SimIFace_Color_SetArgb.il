// PC1.67 SimIFace; Sims3.SimIFace.Color; SetArgb
.method /* 06000298 */ public hidebysig specialname 
	instance void set_ARGB (
		uint32 'value'
	) cil managed 
{
	// Method begins at RVA 0x6d04
	// Header size: 1
	// Code size: 8 (0x8)
	.maxstack 8

	IL_0000: ldarg.0
	IL_0001: ldarg.1
	IL_0002: stfld uint32 Sims3.SimIFace.Color::mArgb /* 04000278 */
	IL_0007: ret
} // end of method Color::set_ARGB
