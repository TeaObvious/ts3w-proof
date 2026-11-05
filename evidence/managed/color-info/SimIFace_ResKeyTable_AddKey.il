// PC1.67 SimIFace; Sims3.SimIFace.CustomContent.ResKeyTable; AddKey
.method /* 060009B9 */ public hidebysig 
	instance int32 AddKey (
		valuetype Sims3.SimIFace.ResourceKey newKey
	) cil managed 
{
	// Method begins at RVA 0xeb90
	// Header size: 12
	// Code size: 70 (0x46)
	.maxstack 3
	.locals /* 11000007 */ init (
		[0] int32
	)

	IL_0000: ldc.i4.0
	IL_0001: stloc.0
	IL_0002: br.s IL_001e
	// loop start (head: IL_001e)
		IL_0004: ldarg.1
		IL_0005: ldarg.0
		IL_0006: ldfld class [mscorlib]System.Collections.Generic.List`1<valuetype Sims3.SimIFace.ResourceKey> Sims3.SimIFace.CustomContent.ResKeyTable::mResKeys /* 04000A7A */
		IL_000b: ldloc.0
		IL_000c: callvirt instance !0 class [mscorlib]System.Collections.Generic.List`1<valuetype Sims3.SimIFace.ResourceKey>::get_Item(int32) /* 0A0000E4 */
		IL_0011: call bool Sims3.SimIFace.ResourceKey::op_Equality(valuetype Sims3.SimIFace.ResourceKey, valuetype Sims3.SimIFace.ResourceKey) /* 06000EAC */
		IL_0016: brfalse.s IL_001a

		IL_0018: ldloc.0
		IL_0019: ret

		IL_001a: ldloc.0
		IL_001b: ldc.i4.1
		IL_001c: add
		IL_001d: stloc.0

		IL_001e: ldloc.0
		IL_001f: ldarg.0
		IL_0020: ldfld class [mscorlib]System.Collections.Generic.List`1<valuetype Sims3.SimIFace.ResourceKey> Sims3.SimIFace.CustomContent.ResKeyTable::mResKeys /* 04000A7A */
		IL_0025: callvirt instance int32 class [mscorlib]System.Collections.Generic.List`1<valuetype Sims3.SimIFace.ResourceKey>::get_Count() /* 0A0000E5 */
		IL_002a: blt.s IL_0004
	// end loop

	IL_002c: ldarg.0
	IL_002d: ldfld class [mscorlib]System.Collections.Generic.List`1<valuetype Sims3.SimIFace.ResourceKey> Sims3.SimIFace.CustomContent.ResKeyTable::mResKeys /* 04000A7A */
	IL_0032: callvirt instance int32 class [mscorlib]System.Collections.Generic.List`1<valuetype Sims3.SimIFace.ResourceKey>::get_Count() /* 0A0000E5 */
	IL_0037: stloc.0
	IL_0038: ldarg.0
	IL_0039: ldfld class [mscorlib]System.Collections.Generic.List`1<valuetype Sims3.SimIFace.ResourceKey> Sims3.SimIFace.CustomContent.ResKeyTable::mResKeys /* 04000A7A */
	IL_003e: ldarg.1
	IL_003f: callvirt instance void class [mscorlib]System.Collections.Generic.List`1<valuetype Sims3.SimIFace.ResourceKey>::Add(!0) /* 0A0000E6 */
	IL_0044: ldloc.0
	IL_0045: ret
} // end of method ResKeyTable::AddKey
