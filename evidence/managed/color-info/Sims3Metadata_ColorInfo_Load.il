// PC1.67 Sims3Metadata; Sims3.Metadata.ColorInfo; Load
.method /* 06000250 */ private hidebysig 
	instance bool Load (
		uint8[] bytes
	) cil managed 
{
	// Method begins at RVA 0x7e04
	// Header size: 12
	// Code size: 689 (0x2b1)
	.maxstack 4
	.locals /* 11000039 */ init (
		[0] class [mscorlib]System.IO.MemoryStream,
		[1] class [mscorlib]System.IO.BinaryReader,
		[2] int32,
		[3] int32,
		[4] int64,
		[5] uint8,
		[6] uint16,
		[7] class [SimIFace]Sims3.SimIFace.CustomContent.ResKeyTable,
		[8] uint16,
		[9] valuetype [SimIFace]Sims3.SimIFace.ResourceKey,
		[10] int64,
		[11] int32,
		[12] int32,
		[13] uint32,
		[14] int32,
		[15] uint8,
		[16] valuetype [SimIFace]Sims3.SimIFace.ResourceKey,
		[17] uint32,
		[18] int32,
		[19] uint32,
		[20] int32,
		[21] uint32,
		[22] int32
	)

	IL_0000: ldarg.1
	IL_0001: newobj instance void [mscorlib]System.IO.MemoryStream::.ctor(uint8[]) /* 0A0000E7 */
	IL_0006: stloc.0
	IL_0007: ldloc.0
	IL_0008: newobj instance void [mscorlib]System.IO.BinaryReader::.ctor(class [mscorlib]System.IO.Stream) /* 0A0000E8 */
	IL_000d: stloc.1
	IL_000e: ldloc.1
	IL_000f: callvirt instance int32 [mscorlib]System.IO.BinaryReader::ReadInt32() /* 0A0000E9 */
	IL_0014: stloc.2
	IL_0015: ldloc.2
	IL_0016: conv.i8
	IL_0017: ldsfld uint32 Sims3.Metadata.ColorInfo::kVersion /* 0400012C */
	IL_001c: conv.u8
	IL_001d: ble.s IL_0021

	IL_001f: ldc.i4.0
	IL_0020: ret

	IL_0021: ldloc.2
	IL_0022: ldc.i4.1
	IL_0023: blt IL_02af

	IL_0028: ldloc.1
	IL_0029: callvirt instance int32 [mscorlib]System.IO.BinaryReader::ReadInt32() /* 0A0000E9 */
	IL_002e: stloc.3
	IL_002f: ldloc.0
	IL_0030: callvirt instance int64 [mscorlib]System.IO.Stream::get_Position() /* 0A0000EA */
	IL_0035: stloc.s 4
	IL_0037: ldloc.0
	IL_0038: dup
	IL_0039: callvirt instance int64 [mscorlib]System.IO.Stream::get_Position() /* 0A0000EA */
	IL_003e: ldloc.3
	IL_003f: conv.i8
	IL_0040: add
	IL_0041: callvirt instance void [mscorlib]System.IO.Stream::set_Position(int64) /* 0A0000EB */
	IL_0046: ldloc.1
	IL_0047: callvirt instance uint8 [mscorlib]System.IO.BinaryReader::ReadByte() /* 0A0000EC */
	IL_004c: stloc.s 5
	IL_004e: ldloc.s 5
	IL_0050: stloc.s 6
	IL_0052: newobj instance void [SimIFace]Sims3.SimIFace.CustomContent.ResKeyTable::.ctor() /* 0A000028 */
	IL_0057: stloc.s 7
	IL_0059: ldc.i4.0
	IL_005a: stloc.s 8
	IL_005c: br.s IL_009e
	// loop start (head: IL_009e)
		IL_005e: ldloca.s 9
		IL_0060: initobj [SimIFace]Sims3.SimIFace.ResourceKey /* 01000012 */
		IL_0066: ldloca.s 9
		IL_0068: ldloc.1
		IL_0069: callvirt instance uint64 [mscorlib]System.IO.BinaryReader::ReadUInt64() /* 0A0000ED */
		IL_006e: stfld uint64 [SimIFace]Sims3.SimIFace.ResourceKey::InstanceId /* 0A00001D */
		IL_0073: ldloca.s 9
		IL_0075: ldloc.1
		IL_0076: callvirt instance uint32 [mscorlib]System.IO.BinaryReader::ReadUInt32() /* 0A0000EE */
		IL_007b: stfld uint32 [SimIFace]Sims3.SimIFace.ResourceKey::GroupId /* 0A00001C */
		IL_0080: ldloca.s 9
		IL_0082: ldloc.1
		IL_0083: callvirt instance uint32 [mscorlib]System.IO.BinaryReader::ReadUInt32() /* 0A0000EE */
		IL_0088: stfld uint32 [SimIFace]Sims3.SimIFace.ResourceKey::TypeId /* 0A00001B */
		IL_008d: ldloc.s 7
		IL_008f: ldloc.s 9
		IL_0091: callvirt instance int32 [SimIFace]Sims3.SimIFace.CustomContent.ResKeyTable::AddKey(valuetype [SimIFace]Sims3.SimIFace.ResourceKey) /* 0A00002D */
		IL_0096: pop
		IL_0097: ldloc.s 8
		IL_0099: ldc.i4.1
		IL_009a: add
		IL_009b: conv.u2
		IL_009c: stloc.s 8

		IL_009e: ldloc.s 8
		IL_00a0: ldloc.s 6
		IL_00a2: blt.s IL_005e
	// end loop

	IL_00a4: ldloc.0
	IL_00a5: callvirt instance int64 [mscorlib]System.IO.Stream::get_Position() /* 0A0000EA */
	IL_00aa: stloc.s 10
	IL_00ac: ldloc.0
	IL_00ad: ldloc.s 4
	IL_00af: callvirt instance void [mscorlib]System.IO.Stream::set_Position(int64) /* 0A0000EB */
	IL_00b4: ldloc.2
	IL_00b5: ldc.i4.2
	IL_00b6: blt.s IL_00c4

	IL_00b8: ldarg.0
	IL_00b9: ldloc.1
	IL_00ba: callvirt instance uint16 [mscorlib]System.IO.BinaryReader::ReadUInt16() /* 0A0000EF */
	IL_00bf: stfld valuetype Sims3.Metadata.ColorInfo/eUsageSubCategory Sims3.Metadata.ColorInfo::mUseSubCategory /* 04000131 */

	IL_00c4: ldloc.1
	IL_00c5: callvirt instance int32 [mscorlib]System.IO.BinaryReader::ReadInt32() /* 0A0000E9 */
	IL_00ca: stloc.s 11
	IL_00cc: ldarg.0
	IL_00cd: ldloc.s 11
	IL_00cf: newarr [SimIFace]Sims3.SimIFace.Color /* 01000021 */
	IL_00d4: stfld valuetype [SimIFace]Sims3.SimIFace.Color[] Sims3.Metadata.ColorInfo::mColors /* 0400012E */
	IL_00d9: ldc.i4.0
	IL_00da: stloc.s 12
	IL_00dc: br.s IL_00fc
	// loop start (head: IL_00fc)
		IL_00de: ldarg.0
		IL_00df: ldfld valuetype [SimIFace]Sims3.SimIFace.Color[] Sims3.Metadata.ColorInfo::mColors /* 0400012E */
		IL_00e4: ldloc.s 12
		IL_00e6: ldelema [SimIFace]Sims3.SimIFace.Color /* 01000021 */
		IL_00eb: ldloc.1
		IL_00ec: callvirt instance uint32 [mscorlib]System.IO.BinaryReader::ReadUInt32() /* 0A0000EE */
		IL_00f1: call instance void [SimIFace]Sims3.SimIFace.Color::set_ARGB(uint32) /* 0A0000F0 */
		IL_00f6: ldloc.s 12
		IL_00f8: ldc.i4.1
		IL_00f9: add
		IL_00fa: stloc.s 12

		IL_00fc: ldloc.s 12
		IL_00fe: ldloc.s 11
		IL_0100: blt.s IL_00de
	// end loop

	IL_0102: ldloc.1
	IL_0103: callvirt instance uint32 [mscorlib]System.IO.BinaryReader::ReadUInt32() /* 0A0000EE */
	IL_0108: stloc.s 13
	IL_010a: ldarg.0
	IL_010b: ldloc.s 13
	IL_010d: conv.u
	IL_010e: newarr Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
	IL_0113: stfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
	IL_0118: ldc.i4.0
	IL_0119: stloc.s 14
	IL_011b: br IL_027c
	// loop start (head: IL_027c)
		IL_0120: ldloc.1
		IL_0121: callvirt instance uint8 [mscorlib]System.IO.BinaryReader::ReadByte() /* 0A0000EC */
		IL_0126: stloc.s 15
		IL_0128: ldloc.s 7
		IL_012a: callvirt instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<valuetype [SimIFace]Sims3.SimIFace.ResourceKey> [SimIFace]Sims3.SimIFace.CustomContent.ResKeyTable::get_KeyList() /* 0A000035 */
		IL_012f: ldloc.s 15
		IL_0131: callvirt instance !0 class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<valuetype [SimIFace]Sims3.SimIFace.ResourceKey>::get_Item(int32) /* 0A0000F1 */
		IL_0136: stloc.s 16
		IL_0138: ldarg.0
		IL_0139: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
		IL_013e: ldloc.s 14
		IL_0140: ldelema Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
		IL_0145: ldloc.s 16
		IL_0147: call instance void Sims3.Metadata.ColorInfo/FabricInfo::set_ResKey(valuetype [SimIFace]Sims3.SimIFace.ResourceKey) /* 0600025E */
		IL_014c: ldloc.1
		IL_014d: callvirt instance uint32 [mscorlib]System.IO.BinaryReader::ReadUInt32() /* 0A0000EE */
		IL_0152: stloc.s 17
		IL_0154: ldarg.0
		IL_0155: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
		IL_015a: ldloc.s 14
		IL_015c: ldelema Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
		IL_0161: ldloc.s 17
		IL_0163: conv.u
		IL_0164: newarr [SimIFace]Sims3.SimIFace.Color /* 01000021 */
		IL_0169: call instance void Sims3.Metadata.ColorInfo/FabricInfo::set_Colors(valuetype [SimIFace]Sims3.SimIFace.Color[]) /* 06000260 */
		IL_016e: ldc.i4.0
		IL_016f: stloc.s 18
		IL_0171: br.s IL_019d
		// loop start (head: IL_019d)
			IL_0173: ldarg.0
			IL_0174: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
			IL_0179: ldloc.s 14
			IL_017b: ldelema Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
			IL_0180: call instance valuetype [SimIFace]Sims3.SimIFace.Color[] Sims3.Metadata.ColorInfo/FabricInfo::get_Colors() /* 0600025F */
			IL_0185: ldloc.s 18
			IL_0187: ldelema [SimIFace]Sims3.SimIFace.Color /* 01000021 */
			IL_018c: ldloc.1
			IL_018d: callvirt instance uint32 [mscorlib]System.IO.BinaryReader::ReadUInt32() /* 0A0000EE */
			IL_0192: call instance void [SimIFace]Sims3.SimIFace.Color::set_ARGB(uint32) /* 0A0000F0 */
			IL_0197: ldloc.s 18
			IL_0199: ldc.i4.1
			IL_019a: add
			IL_019b: stloc.s 18

			IL_019d: ldloc.s 18
			IL_019f: conv.i8
			IL_01a0: ldloc.s 17
			IL_01a2: conv.u8
			IL_01a3: blt.s IL_0173
		// end loop

		IL_01a5: ldloc.2
		IL_01a6: ldc.i4.4
		IL_01a7: blt.s IL_0203

		IL_01a9: ldloc.1
		IL_01aa: callvirt instance uint32 [mscorlib]System.IO.BinaryReader::ReadUInt32() /* 0A0000EE */
		IL_01af: stloc.s 19
		IL_01b1: ldarg.0
		IL_01b2: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
		IL_01b7: ldloc.s 14
		IL_01b9: ldelema Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
		IL_01be: ldloc.s 19
		IL_01c0: conv.u
		IL_01c1: newarr [mscorlib]System.Single /* 0100005B */
		IL_01c6: call instance void Sims3.Metadata.ColorInfo/FabricInfo::set_HSVBases(float32[]) /* 06000262 */
		IL_01cb: ldc.i4.0
		IL_01cc: stloc.s 20
		IL_01ce: br.s IL_01f9
		// loop start (head: IL_01f9)
			IL_01d0: ldarg.0
			IL_01d1: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
			IL_01d6: ldloc.s 14
			IL_01d8: ldelema Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
			IL_01dd: call instance float32[] Sims3.Metadata.ColorInfo/FabricInfo::get_HSVBases() /* 06000261 */
			IL_01e2: ldloc.s 20
			IL_01e4: ldloc.1
			IL_01e5: callvirt instance uint32 [mscorlib]System.IO.BinaryReader::ReadUInt32() /* 0A0000EE */
			IL_01ea: conv.r.un
			IL_01eb: conv.r4
			IL_01ec: ldc.r4 1000
			IL_01f1: div
			IL_01f2: stelem.r4
			IL_01f3: ldloc.s 20
			IL_01f5: ldc.i4.1
			IL_01f6: add
			IL_01f7: stloc.s 20

			IL_01f9: ldloc.s 20
			IL_01fb: conv.i8
			IL_01fc: ldloc.s 19
			IL_01fe: conv.u8
			IL_01ff: blt.s IL_01d0
		// end loop

		IL_0201: br.s IL_0276

		IL_0203: ldloc.2
		IL_0204: ldc.i4.3
		IL_0205: blt.s IL_025e

		IL_0207: ldloc.1
		IL_0208: callvirt instance uint32 [mscorlib]System.IO.BinaryReader::ReadUInt32() /* 0A0000EE */
		IL_020d: stloc.s 21
		IL_020f: ldarg.0
		IL_0210: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
		IL_0215: ldloc.s 14
		IL_0217: ldelema Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
		IL_021c: ldloc.s 21
		IL_021e: conv.u
		IL_021f: newarr [mscorlib]System.Single /* 0100005B */
		IL_0224: call instance void Sims3.Metadata.ColorInfo/FabricInfo::set_HSVBases(float32[]) /* 06000262 */
		IL_0229: ldc.i4.0
		IL_022a: stloc.s 22
		IL_022c: br.s IL_0254
		// loop start (head: IL_0254)
			IL_022e: ldarg.0
			IL_022f: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
			IL_0234: ldloc.s 14
			IL_0236: ldelema Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
			IL_023b: call instance float32[] Sims3.Metadata.ColorInfo/FabricInfo::get_HSVBases() /* 06000261 */
			IL_0240: ldloc.s 22
			IL_0242: ldloc.1
			IL_0243: callvirt instance string [mscorlib]System.IO.BinaryReader::ReadString() /* 0A0000F2 */
			IL_0248: call float32 [mscorlib]System.Single::Parse(string) /* 0A000069 */
			IL_024d: stelem.r4
			IL_024e: ldloc.s 22
			IL_0250: ldc.i4.1
			IL_0251: add
			IL_0252: stloc.s 22

			IL_0254: ldloc.s 22
			IL_0256: conv.i8
			IL_0257: ldloc.s 21
			IL_0259: conv.u8
			IL_025a: blt.s IL_022e
		// end loop

		IL_025c: br.s IL_0276

		IL_025e: ldarg.0
		IL_025f: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
		IL_0264: ldloc.s 14
		IL_0266: ldelema Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
		IL_026b: ldc.i4.0
		IL_026c: newarr [mscorlib]System.Single /* 0100005B */
		IL_0271: call instance void Sims3.Metadata.ColorInfo/FabricInfo::set_HSVBases(float32[]) /* 06000262 */

		IL_0276: ldloc.s 14
		IL_0278: ldc.i4.1
		IL_0279: add
		IL_027a: stloc.s 14

		IL_027c: ldloc.s 14
		IL_027e: conv.i8
		IL_027f: ldloc.s 13
		IL_0281: conv.u8
		IL_0282: blt IL_0120
	// end loop

	IL_0287: ldloc.2
	IL_0288: ldc.i4.5
	IL_0289: blt.s IL_0297

	IL_028b: ldarg.0
	IL_028c: ldloc.1
	IL_028d: callvirt instance bool [mscorlib]System.IO.BinaryReader::ReadBoolean() /* 0A0000F3 */
	IL_0292: stfld bool Sims3.Metadata.ColorInfo::mFavorite /* 04000132 */

	IL_0297: ldloc.2
	IL_0298: ldc.i4.6
	IL_0299: blt.s IL_02a7

	IL_029b: ldarg.0
	IL_029c: ldloc.1
	IL_029d: callvirt instance uint32 [mscorlib]System.IO.BinaryReader::ReadUInt32() /* 0A0000EE */
	IL_02a2: stfld uint32 Sims3.Metadata.ColorInfo::mFavoriteContentType /* 04000133 */

	IL_02a7: ldloc.0
	IL_02a8: ldloc.s 10
	IL_02aa: callvirt instance void [mscorlib]System.IO.Stream::set_Position(int64) /* 0A0000EB */

	IL_02af: ldc.i4.1
	IL_02b0: ret
} // end of method ColorInfo::Load
