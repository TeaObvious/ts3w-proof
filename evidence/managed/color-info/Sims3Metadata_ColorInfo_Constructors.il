// PC1.67 Sims3Metadata; Sims3.Metadata.ColorInfo; Constructors
.method /* 06000237 */ public hidebysig specialname rtspecialname 
	instance void .ctor () cil managed 
{
	// Method begins at RVA 0x749f
	// Header size: 1
	// Code size: 31 (0x1f)
	.maxstack 8

	IL_0000: ldarg.0
	IL_0001: ldc.i4.0
	IL_0002: newarr [SimIFace]Sims3.SimIFace.Color /* 01000021 */
	IL_0007: stfld valuetype [SimIFace]Sims3.SimIFace.Color[] Sims3.Metadata.ColorInfo::mColors /* 0400012E */
	IL_000c: ldarg.0
	IL_000d: ldc.i4.0
	IL_000e: newarr Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
	IL_0013: stfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
	IL_0018: ldarg.0
	IL_0019: call instance void [mscorlib]System.Object::.ctor() /* 0A000010 */
	IL_001e: ret
} // end of method ColorInfo::.ctor
.method /* 06000238 */ public hidebysig specialname rtspecialname 
	instance void .ctor (
		valuetype [SimIFace]Sims3.SimIFace.ResourceKey key,
		uint8[] bytes
	) cil managed 
{
	// Method begins at RVA 0x74c0
	// Header size: 12
	// Code size: 125 (0x7d)
	.maxstack 2
	.locals /* 11000011 */ init (
		[0] uint32
	)

	IL_0000: ldarg.0
	IL_0001: ldc.i4.0
	IL_0002: newarr [SimIFace]Sims3.SimIFace.Color /* 01000021 */
	IL_0007: stfld valuetype [SimIFace]Sims3.SimIFace.Color[] Sims3.Metadata.ColorInfo::mColors /* 0400012E */
	IL_000c: ldarg.0
	IL_000d: ldc.i4.0
	IL_000e: newarr Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
	IL_0013: stfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
	IL_0018: ldarg.0
	IL_0019: call instance void [mscorlib]System.Object::.ctor() /* 0A000010 */
	IL_001e: ldarga.s key
	IL_0020: ldfld uint32 [SimIFace]Sims3.SimIFace.ResourceKey::TypeId /* 0A00001B */
	IL_0025: stloc.0
	IL_0026: ldloc.0
	IL_0027: ldc.i4 103965168
	IL_002c: bgt.un.s IL_0040

	IL_002e: ldloc.0
	IL_002f: ldc.i4 103965146
	IL_0034: beq.s IL_0052

	IL_0036: ldloc.0
	IL_0037: ldc.i4 103965168
	IL_003c: beq.s IL_005b

	IL_003e: br.s IL_0074

	IL_0040: ldloc.0
	IL_0041: ldc.i4 103965203
	IL_0046: beq.s IL_0064

	IL_0048: ldloc.0
	IL_0049: ldc.i4 979742505
	IL_004e: beq.s IL_006d

	IL_0050: br.s IL_0074

	IL_0052: ldarg.0
	IL_0053: ldc.i4.3
	IL_0054: stfld valuetype Sims3.Metadata.ColorInfo/PreferredUse Sims3.Metadata.ColorInfo::mUse /* 04000130 */
	IL_0059: br.s IL_0074

	IL_005b: ldarg.0
	IL_005c: ldc.i4.2
	IL_005d: stfld valuetype Sims3.Metadata.ColorInfo/PreferredUse Sims3.Metadata.ColorInfo::mUse /* 04000130 */
	IL_0062: br.s IL_0074

	IL_0064: ldarg.0
	IL_0065: ldc.i4.1
	IL_0066: stfld valuetype Sims3.Metadata.ColorInfo/PreferredUse Sims3.Metadata.ColorInfo::mUse /* 04000130 */
	IL_006b: br.s IL_0074

	IL_006d: ldarg.0
	IL_006e: ldc.i4.4
	IL_006f: stfld valuetype Sims3.Metadata.ColorInfo/PreferredUse Sims3.Metadata.ColorInfo::mUse /* 04000130 */

	IL_0074: ldarg.0
	IL_0075: ldarg.2
	IL_0076: call instance bool Sims3.Metadata.ColorInfo::Load(uint8[]) /* 06000250 */
	IL_007b: pop
	IL_007c: ret
} // end of method ColorInfo::.ctor
