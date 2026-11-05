// PC1.67 UI; Sims3.UI.CAS.CASHair; CurrentColorInfo
.method /* 06002799 */ private hidebysig specialname 
	instance class [Sims3Metadata]Sims3.Metadata.ColorInfo get_CurrColorInfo () cil managed 
{
	// Method begins at RVA 0xe14bc
	// Header size: 12
	// Code size: 191 (0xbf)
	.maxstack 3
	.locals /* 1100064A */ init (
		[0] class [Sims3Metadata]Sims3.Metadata.ColorInfo,
		[1] valuetype [SimIFace]Sims3.SimIFace.Color,
		[2] uint32,
		[3] valuetype [SimIFace]Sims3.SimIFace.Color[],
		[4] valuetype [SimIFace]Sims3.SimIFace.Color,
		[5] valuetype [SimIFace]Sims3.SimIFace.Color,
		[6] valuetype [SimIFace]Sims3.SimIFace.Color,
		[7] valuetype [SimIFace]Sims3.SimIFace.Color
	)

	IL_0000: newobj instance void [Sims3Metadata]Sims3.Metadata.ColorInfo::.ctor() /* 0A000225 */
	IL_0005: stloc.0
	IL_0006: ldloc.0
	IL_0007: ldc.i4.3
	IL_0008: callvirt instance void [Sims3Metadata]Sims3.Metadata.ColorInfo::set_Usage(valuetype [Sims3Metadata]Sims3.Metadata.ColorInfo/PreferredUse) /* 0A000226 */
	IL_000d: ldloc.0
	IL_000e: ldc.i4.4
	IL_000f: newarr [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0014: stloc.3
	IL_0015: ldloc.3
	IL_0016: ldc.i4.0
	IL_0017: ldelema [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_001c: ldloca.s 4
	IL_001e: initobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0024: ldloc.s 4
	IL_0026: stobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_002b: ldloc.3
	IL_002c: ldc.i4.1
	IL_002d: ldelema [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0032: ldloca.s 5
	IL_0034: initobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_003a: ldloc.s 5
	IL_003c: stobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0041: ldloc.3
	IL_0042: ldc.i4.2
	IL_0043: ldelema [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0048: ldloca.s 6
	IL_004a: initobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0050: ldloc.s 6
	IL_0052: stobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0057: ldloc.3
	IL_0058: ldc.i4.3
	IL_0059: ldelema [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_005e: ldloca.s 7
	IL_0060: initobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0066: ldloc.s 7
	IL_0068: stobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_006d: ldloc.3
	IL_006e: callvirt instance void [Sims3Metadata]Sims3.Metadata.ColorInfo::set_Colors(valuetype [SimIFace]Sims3.SimIFace.Color[]) /* 0A000228 */
	IL_0073: ldc.i4.0
	IL_0074: call valuetype [SimIFace]Sims3.SimIFace.Color [SimIFace]Sims3.SimIFace.Color::op_Implicit(valuetype [SimIFace]Sims3.SimIFace.Color/Preset) /* 0A0001BC */
	IL_0079: stloc.1
	IL_007a: ldc.i4.0
	IL_007b: stloc.2
	IL_007c: br.s IL_00b9
	// loop start (head: IL_00b9)
		IL_007e: call class Sims3.UI.IResponder Sims3.UI.Responder::get_Instance() /* 06000E1D */
		IL_0083: callvirt instance class Sims3.UI.CAS.ICASModel Sims3.UI.IResponder::get_CASModel() /* 06000DDB */
		IL_0088: ldc.i4.1
		IL_0089: ldloc.2
		IL_008a: callvirt instance valuetype [SimIFace]Sims3.SimIFace.Color Sims3.UI.CAS.ICASModel::GetHairColor(valuetype [SimIFace]Sims3.SimIFace.CAS.BodyTypes, int32) /* 060022CB */
		IL_008f: stloc.1
		IL_0090: ldloca.s 1
		IL_0092: ldc.i4 255
		IL_0097: call instance void [SimIFace]Sims3.SimIFace.Color::set_Alpha(uint8) /* 0A000208 */
		IL_009c: ldloc.0
		IL_009d: callvirt instance valuetype [SimIFace]Sims3.SimIFace.Color[] [Sims3Metadata]Sims3.Metadata.ColorInfo::get_Colors() /* 0A0001CB */
		IL_00a2: ldloc.2
		IL_00a3: conv.u
		IL_00a4: ldelema [SimIFace]Sims3.SimIFace.Color /* 0100001C */
		IL_00a9: ldloca.s 1
		IL_00ab: call instance uint32 [SimIFace]Sims3.SimIFace.Color::get_ARGB() /* 0A000034 */
		IL_00b0: call instance void [SimIFace]Sims3.SimIFace.Color::set_ARGB(uint32) /* 0A0004E5 */
		IL_00b5: ldloc.2
		IL_00b6: ldc.i4.1
		IL_00b7: add
		IL_00b8: stloc.2

		IL_00b9: ldloc.2
		IL_00ba: ldc.i4.4
		IL_00bb: blt.un.s IL_007e
	// end loop

	IL_00bd: ldloc.0
	IL_00be: ret
} // end of method CASHair::get_CurrColorInfo
