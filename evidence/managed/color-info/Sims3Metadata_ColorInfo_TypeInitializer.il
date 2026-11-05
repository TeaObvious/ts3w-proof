// PC1.67 Sims3Metadata; Sims3.Metadata.ColorInfo; TypeInitializer
.method /* 06000236 */ private hidebysig specialname rtspecialname static 
	void .cctor () cil managed 
{
	// Method begins at RVA 0x7428
	// Header size: 12
	// Code size: 107 (0x6b)
	.maxstack 3
	.locals /* 1100001A */ init (
		[0] string[]
	)

	IL_0000: ldc.i4.6
	IL_0001: stsfld uint32 Sims3.Metadata.ColorInfo::kVersion /* 0400012C */
	IL_0006: ldnull
	IL_0007: stsfld class [SimIFace]Sims3.SimIFace.CAS.ICASUtils Sims3.Metadata.ColorInfo::sCASUtils /* 0400012D */
	IL_000c: ldc.i4.7
	IL_000d: newarr [mscorlib]System.String /* 01000046 */
	IL_0012: stloc.0
	IL_0013: ldloc.0
	IL_0014: ldc.i4.0
	IL_0015: ldstr "" /* 70000001 */
	IL_001a: stelem.ref
	IL_001b: ldloc.0
	IL_001c: ldc.i4.1
	IL_001d: ldstr " Bg" /* 70000D01 */
	IL_0022: stelem.ref
	IL_0023: ldloc.0
	IL_0024: ldc.i4.2
	IL_0025: ldstr " 0" /* 70000D09 */
	IL_002a: stelem.ref
	IL_002b: ldloc.0
	IL_002c: ldc.i4.3
	IL_002d: ldstr " 1" /* 70000D0F */
	IL_0032: stelem.ref
	IL_0033: ldloc.0
	IL_0034: ldc.i4.4
	IL_0035: ldstr " 2" /* 70000D15 */
	IL_003a: stelem.ref
	IL_003b: ldloc.0
	IL_003c: ldc.i4.5
	IL_003d: ldstr " 3" /* 70000D1B */
	IL_0042: stelem.ref
	IL_0043: ldloc.0
	IL_0044: ldc.i4.6
	IL_0045: ldstr " 4" /* 70000D21 */
	IL_004a: stelem.ref
	IL_004b: ldloc.0
	IL_004c: stsfld string[] Sims3.Metadata.ColorInfo::kHSVPostNames /* 04000135 */
	IL_0051: call class [mscorlib]System.AppDomain [mscorlib]System.AppDomain::get_CurrentDomain() /* 0A0000B6 */
	IL_0056: ldstr "CASUtils" /* 70000D27 */
	IL_005b: callvirt instance object [mscorlib]System.AppDomain::GetData(string) /* 0A0000B7 */
	IL_0060: castclass [SimIFace]Sims3.SimIFace.CAS.ICASUtils /* 01000020 */
	IL_0065: stsfld class [SimIFace]Sims3.SimIFace.CAS.ICASUtils Sims3.Metadata.ColorInfo::sCASUtils /* 0400012D */
	IL_006a: ret
} // end of method ColorInfo::.cctor
