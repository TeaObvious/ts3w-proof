// PC1.67 Sims3Metadata; Sims3.Metadata.ColorInfo; FromResourceKey
.method /* 06000252 */ public hidebysig static 
	class Sims3.Metadata.ColorInfo FromResourceKey (
		valuetype [SimIFace]Sims3.SimIFace.ResourceKey key
	) cil managed 
{
	// Method begins at RVA 0x812c
	// Header size: 12
	// Code size: 39 (0x27)
	.maxstack 3
	.locals /* 1100003B */ init (
		[0] uint8[]
	)

	IL_0000: ldsfld class [SimIFace]Sims3.SimIFace.CAS.ICASUtils Sims3.Metadata.ColorInfo::sCASUtils /* 0400012D */
	IL_0005: brtrue.s IL_0009

	IL_0007: ldnull
	IL_0008: ret

	IL_0009: ldsfld class [SimIFace]Sims3.SimIFace.CAS.ICASUtils Sims3.Metadata.ColorInfo::sCASUtils /* 0400012D */
	IL_000e: ldarg.0
	IL_000f: callvirt instance uint8[] [SimIFace]Sims3.SimIFace.CAS.ICASUtils::GetColorInfoBytes(valuetype [SimIFace]Sims3.SimIFace.ResourceKey) /* 0A0000F4 */
	IL_0014: stloc.0
	IL_0015: ldloc.0
	IL_0016: brfalse.s IL_001d

	IL_0018: ldloc.0
	IL_0019: ldlen
	IL_001a: conv.i4
	IL_001b: brtrue.s IL_001f

	IL_001d: ldnull
	IL_001e: ret

	IL_001f: ldarg.0
	IL_0020: ldloc.0
	IL_0021: newobj instance void Sims3.Metadata.ColorInfo::.ctor(valuetype [SimIFace]Sims3.SimIFace.ResourceKey, uint8[]) /* 06000238 */
	IL_0026: ret
} // end of method ColorInfo::FromResourceKey
