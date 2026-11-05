// PC1.67 Sims3Metadata; Sims3.Metadata.ColorInfo; ExportNamedInstance
.method /* 06000246 */ public final hidebysig newslot virtual 
	instance class [mscorlib]System.Collections.Hashtable ExportNamedInstance (
		string instanceName,
		uint32 instanceGroupId,
		uint32 classResourceType,
		class [SimIFace]Sims3.SimIFace.ISKUUtils skuUtils
	) cil managed 
{
	// Method begins at RVA 0x75b8
	// Header size: 12
	// Code size: 720 (0x2d0)
	.maxstack 4
	.locals /* 11000033 */ init (
		[0] class [SimIFace]Sims3.SimIFace.CustomContent.ResKeyTable,
		[1] class [mscorlib]System.IO.MemoryStream,
		[2] class [mscorlib]System.IO.BinaryWriter,
		[3] valuetype [SimIFace]Sims3.SimIFace.ResourceKey,
		[4] int32,
		[5] int32,
		[6] valuetype [SimIFace]Sims3.SimIFace.ResourceKey,
		[7] int32,
		[8] int32,
		[9] uint8[],
		[10] valuetype [SimIFace]Sims3.SimIFace.ResourceKey,
		[11] valuetype Sims3.Metadata.ColorInfo/PreferredUse,
		[12] class [mscorlib]System.Collections.Generic.IEnumerator`1<valuetype [SimIFace]Sims3.SimIFace.ResourceKey>
	)

	IL_0000: newobj instance void [SimIFace]Sims3.SimIFace.CustomContent.ResKeyTable::.ctor() /* 0A000028 */
	IL_0005: stloc.0
	IL_0006: newobj instance void [mscorlib]System.IO.MemoryStream::.ctor() /* 0A000011 */
	IL_000b: stloc.1
	IL_000c: ldloc.1
	IL_000d: newobj instance void [mscorlib]System.IO.BinaryWriter::.ctor(class [mscorlib]System.IO.Stream) /* 0A000012 */
	IL_0012: stloc.2
	IL_0013: ldarg.0
	IL_0014: ldarg.s skuUtils
	IL_0016: stfld class [SimIFace]Sims3.SimIFace.ISKUUtils Sims3.Metadata.ColorInfo::mSkuUtils /* 04000134 */
	IL_001b: ldarg.0
	IL_001c: ldfld valuetype Sims3.Metadata.ColorInfo/PreferredUse Sims3.Metadata.ColorInfo::mUse /* 04000130 */
	IL_0021: stloc.s 11
	IL_0023: ldloc.s 11
	IL_0025: ldc.i4.1
	IL_0026: sub
	IL_0027: switch (IL_0050, IL_0047, IL_003e, IL_0059)

	IL_003c: br.s IL_0060

	IL_003e: ldc.i4 103965146
	IL_0043: starg.s classResourceType
	IL_0045: br.s IL_0060

	IL_0047: ldc.i4 103965168
	IL_004c: starg.s classResourceType
	IL_004e: br.s IL_0060

	IL_0050: ldc.i4 103965203
	IL_0055: starg.s classResourceType
	IL_0057: br.s IL_0060

	IL_0059: ldc.i4 979742505
	IL_005e: starg.s classResourceType

	IL_0060: ldloca.s 3
	IL_0062: ldarg.1
	IL_0063: call uint64 [SimIFace]Sims3.SimIFace.ResourceUtils::HashString64(string) /* 0A000020 */
	IL_0068: ldarg.3
	IL_0069: conv.u8
	IL_006a: conv.u4
	IL_006b: ldarg.2
	IL_006c: conv.u8
	IL_006d: conv.u4
	IL_006e: call instance void [SimIFace]Sims3.SimIFace.ResourceKey::.ctor(uint64, uint32, uint32) /* 0A000021 */
	IL_0073: ldloc.2
	IL_0074: ldarg.0
	IL_0075: call instance valuetype Sims3.Metadata.ColorInfo/eUsageSubCategory Sims3.Metadata.ColorInfo::get_UsageSubCategory() /* 0600023F */
	IL_007a: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint16) /* 0A00004C */
	IL_007f: ldloc.2
	IL_0080: ldarg.0
	IL_0081: ldfld valuetype [SimIFace]Sims3.SimIFace.Color[] Sims3.Metadata.ColorInfo::mColors /* 0400012E */
	IL_0086: ldlen
	IL_0087: conv.i4
	IL_0088: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint32) /* 0A000013 */
	IL_008d: ldc.i4.0
	IL_008e: stloc.s 4
	IL_0090: br.s IL_00b0
	// loop start (head: IL_00b0)
		IL_0092: ldloc.2
		IL_0093: ldarg.0
		IL_0094: ldfld valuetype [SimIFace]Sims3.SimIFace.Color[] Sims3.Metadata.ColorInfo::mColors /* 0400012E */
		IL_0099: ldloc.s 4
		IL_009b: ldelema [SimIFace]Sims3.SimIFace.Color /* 01000021 */
		IL_00a0: call instance uint32 [SimIFace]Sims3.SimIFace.Color::get_ARGB() /* 0A0000DD */
		IL_00a5: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint32) /* 0A000013 */
		IL_00aa: ldloc.s 4
		IL_00ac: ldc.i4.1
		IL_00ad: add
		IL_00ae: stloc.s 4

		IL_00b0: ldloc.s 4
		IL_00b2: ldarg.0
		IL_00b3: ldfld valuetype [SimIFace]Sims3.SimIFace.Color[] Sims3.Metadata.ColorInfo::mColors /* 0400012E */
		IL_00b8: ldlen
		IL_00b9: conv.i4
		IL_00ba: blt.s IL_0092
	// end loop

	IL_00bc: ldloc.2
	IL_00bd: ldarg.0
	IL_00be: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
	IL_00c3: ldlen
	IL_00c4: conv.i4
	IL_00c5: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint32) /* 0A000013 */
	IL_00ca: ldc.i4.0
	IL_00cb: stloc.s 5
	IL_00cd: br IL_01dd
	// loop start (head: IL_01dd)
		IL_00d2: ldarg.0
		IL_00d3: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
		IL_00d8: ldloc.s 5
		IL_00da: ldelema Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
		IL_00df: call instance string Sims3.Metadata.ColorInfo/FabricInfo::get_ResKeyStr() /* 0600025B */
		IL_00e4: call valuetype [SimIFace]Sims3.SimIFace.ResourceKey Sims3.Metadata.ColorInfo::BuildKey(string) /* 0600024E */
		IL_00e9: stloc.s 6
		IL_00eb: ldloc.2
		IL_00ec: ldloc.0
		IL_00ed: ldloc.s 6
		IL_00ef: callvirt instance int32 [SimIFace]Sims3.SimIFace.CustomContent.ResKeyTable::AddKey(valuetype [SimIFace]Sims3.SimIFace.ResourceKey) /* 0A00002D */
		IL_00f4: conv.u1
		IL_00f5: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint8) /* 0A00002E */
		IL_00fa: ldloc.2
		IL_00fb: ldarg.0
		IL_00fc: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
		IL_0101: ldloc.s 5
		IL_0103: ldelema Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
		IL_0108: call instance valuetype [SimIFace]Sims3.SimIFace.Color[] Sims3.Metadata.ColorInfo/FabricInfo::get_Colors() /* 0600025F */
		IL_010d: ldlen
		IL_010e: conv.i4
		IL_010f: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint32) /* 0A000013 */
		IL_0114: ldc.i4.0
		IL_0115: stloc.s 7
		IL_0117: br.s IL_0143
		// loop start (head: IL_0143)
			IL_0119: ldloc.2
			IL_011a: ldarg.0
			IL_011b: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
			IL_0120: ldloc.s 5
			IL_0122: ldelema Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
			IL_0127: call instance valuetype [SimIFace]Sims3.SimIFace.Color[] Sims3.Metadata.ColorInfo/FabricInfo::get_Colors() /* 0600025F */
			IL_012c: ldloc.s 7
			IL_012e: ldelema [SimIFace]Sims3.SimIFace.Color /* 01000021 */
			IL_0133: call instance uint32 [SimIFace]Sims3.SimIFace.Color::get_ARGB() /* 0A0000DD */
			IL_0138: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint32) /* 0A000013 */
			IL_013d: ldloc.s 7
			IL_013f: ldc.i4.1
			IL_0140: add
			IL_0141: stloc.s 7

			IL_0143: ldloc.s 7
			IL_0145: ldarg.0
			IL_0146: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
			IL_014b: ldloc.s 5
			IL_014d: ldelema Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
			IL_0152: call instance valuetype [SimIFace]Sims3.SimIFace.Color[] Sims3.Metadata.ColorInfo/FabricInfo::get_Colors() /* 0600025F */
			IL_0157: ldlen
			IL_0158: conv.i4
			IL_0159: blt.s IL_0119
		// end loop

		IL_015b: ldarg.0
		IL_015c: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
		IL_0161: ldloc.s 5
		IL_0163: ldelema Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
		IL_0168: call instance float32[] Sims3.Metadata.ColorInfo/FabricInfo::get_HSVBases() /* 06000261 */
		IL_016d: brtrue.s IL_0178

		IL_016f: ldloc.2
		IL_0170: ldc.i4.0
		IL_0171: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint32) /* 0A000013 */
		IL_0176: br.s IL_01d7

		IL_0178: ldloc.2
		IL_0179: ldarg.0
		IL_017a: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
		IL_017f: ldloc.s 5
		IL_0181: ldelema Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
		IL_0186: call instance float32[] Sims3.Metadata.ColorInfo/FabricInfo::get_HSVBases() /* 06000261 */
		IL_018b: ldlen
		IL_018c: conv.i4
		IL_018d: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint32) /* 0A000013 */
		IL_0192: ldc.i4.0
		IL_0193: stloc.s 8
		IL_0195: br.s IL_01bf
		// loop start (head: IL_01bf)
			IL_0197: ldloc.2
			IL_0198: ldarg.0
			IL_0199: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
			IL_019e: ldloc.s 5
			IL_01a0: ldelema Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
			IL_01a5: call instance float32[] Sims3.Metadata.ColorInfo/FabricInfo::get_HSVBases() /* 06000261 */
			IL_01aa: ldloc.s 8
			IL_01ac: ldelem.r4
			IL_01ad: ldc.r4 1000
			IL_01b2: mul
			IL_01b3: conv.u4
			IL_01b4: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint32) /* 0A000013 */
			IL_01b9: ldloc.s 8
			IL_01bb: ldc.i4.1
			IL_01bc: add
			IL_01bd: stloc.s 8

			IL_01bf: ldloc.s 8
			IL_01c1: ldarg.0
			IL_01c2: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
			IL_01c7: ldloc.s 5
			IL_01c9: ldelema Sims3.Metadata.ColorInfo/FabricInfo /* 02000042 */
			IL_01ce: call instance float32[] Sims3.Metadata.ColorInfo/FabricInfo::get_HSVBases() /* 06000261 */
			IL_01d3: ldlen
			IL_01d4: conv.i4
			IL_01d5: blt.s IL_0197
		// end loop

		IL_01d7: ldloc.s 5
		IL_01d9: ldc.i4.1
		IL_01da: add
		IL_01db: stloc.s 5

		IL_01dd: ldloc.s 5
		IL_01df: ldarg.0
		IL_01e0: ldfld valuetype Sims3.Metadata.ColorInfo/FabricInfo[] Sims3.Metadata.ColorInfo::mFabrics /* 0400012F */
		IL_01e5: ldlen
		IL_01e6: conv.i4
		IL_01e7: blt IL_00d2
	// end loop

	IL_01ec: ldloc.2
	IL_01ed: ldarg.0
	IL_01ee: ldfld bool Sims3.Metadata.ColorInfo::mFavorite /* 04000132 */
	IL_01f3: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(bool) /* 0A000040 */
	IL_01f8: ldloc.2
	IL_01f9: ldarg.0
	IL_01fa: ldfld uint32 Sims3.Metadata.ColorInfo::mFavoriteContentType /* 04000133 */
	IL_01ff: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint32) /* 0A000013 */
	IL_0204: ldloc.2
	IL_0205: callvirt instance void [mscorlib]System.IO.BinaryWriter::Flush() /* 0A00001F */
	IL_020a: ldloc.1
	IL_020b: callvirt instance int64 [mscorlib]System.IO.Stream::get_Length() /* 0A00002F */
	IL_0210: conv.ovf.i
	IL_0211: newarr [mscorlib]System.Byte /* 0100004B */
	IL_0216: stloc.s 9
	IL_0218: ldloc.1
	IL_0219: callvirt instance uint8[] [mscorlib]System.IO.MemoryStream::GetBuffer() /* 0A000030 */
	IL_021e: ldloc.s 9
	IL_0220: ldloc.1
	IL_0221: callvirt instance int64 [mscorlib]System.IO.Stream::get_Length() /* 0A00002F */
	IL_0226: call void [mscorlib]System.Array::Copy(class [mscorlib]System.Array, class [mscorlib]System.Array, int64) /* 0A000031 */
	IL_022b: newobj instance void [mscorlib]System.IO.MemoryStream::.ctor() /* 0A000011 */
	IL_0230: stloc.1
	IL_0231: ldloc.1
	IL_0232: call class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_BigEndianUnicode() /* 0A000029 */
	IL_0237: newobj instance void [mscorlib]System.IO.BinaryWriter::.ctor(class [mscorlib]System.IO.Stream, class [mscorlib]System.Text.Encoding) /* 0A00002A */
	IL_023c: stloc.2
	IL_023d: ldloc.2
	IL_023e: ldsfld uint32 Sims3.Metadata.ColorInfo::kVersion /* 0400012C */
	IL_0243: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint32) /* 0A000013 */
	IL_0248: ldloc.2
	IL_0249: ldloc.s 9
	IL_024b: ldlen
	IL_024c: conv.i4
	IL_024d: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(int32) /* 0A000032 */
	IL_0252: ldloc.2
	IL_0253: ldloc.s 9
	IL_0255: ldc.i4.0
	IL_0256: ldloc.s 9
	IL_0258: ldlen
	IL_0259: conv.i4
	IL_025a: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint8[], int32, int32) /* 0A000033 */
	IL_025f: ldloc.2
	IL_0260: ldloc.0
	IL_0261: callvirt instance int32 [SimIFace]Sims3.SimIFace.CustomContent.ResKeyTable::get_Count() /* 0A000034 */
	IL_0266: conv.u1
	IL_0267: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint8) /* 0A00002E */
	IL_026c: ldloc.0
	IL_026d: callvirt instance class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<valuetype [SimIFace]Sims3.SimIFace.ResourceKey> [SimIFace]Sims3.SimIFace.CustomContent.ResKeyTable::get_KeyList() /* 0A000035 */
	IL_0272: callvirt instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.ObjectModel.ReadOnlyCollection`1<valuetype [SimIFace]Sims3.SimIFace.ResourceKey>::GetEnumerator() /* 0A000036 */
	IL_0277: stloc.s 12
	.try
	{
		IL_0279: br.s IL_02ab
		// loop start (head: IL_02ab)
			IL_027b: ldloc.s 12
			IL_027d: callvirt instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<valuetype [SimIFace]Sims3.SimIFace.ResourceKey>::get_Current() /* 0A000037 */
			IL_0282: stloc.s 10
			IL_0284: ldloc.2
			IL_0285: ldloca.s 10
			IL_0287: ldfld uint64 [SimIFace]Sims3.SimIFace.ResourceKey::InstanceId /* 0A00001D */
			IL_028c: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint64) /* 0A00001E */
			IL_0291: ldloc.2
			IL_0292: ldloca.s 10
			IL_0294: ldfld uint32 [SimIFace]Sims3.SimIFace.ResourceKey::GroupId /* 0A00001C */
			IL_0299: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint32) /* 0A000013 */
			IL_029e: ldloc.2
			IL_029f: ldloca.s 10
			IL_02a1: ldfld uint32 [SimIFace]Sims3.SimIFace.ResourceKey::TypeId /* 0A00001B */
			IL_02a6: callvirt instance void [mscorlib]System.IO.BinaryWriter::Write(uint32) /* 0A000013 */

			IL_02ab: ldloc.s 12
			IL_02ad: callvirt instance bool [mscorlib]System.Collections.IEnumerator::MoveNext() /* 0A000038 */
			IL_02b2: brtrue.s IL_027b
		// end loop

		IL_02b4: leave.s IL_02c2
	} // end .try
	finally
	{
		IL_02b6: ldloc.s 12
		IL_02b8: brfalse.s IL_02c1

		IL_02ba: ldloc.s 12
		IL_02bc: callvirt instance void [mscorlib]System.IDisposable::Dispose() /* 0A000022 */

		IL_02c1: endfinally
	} // end handler

	IL_02c2: ldloc.2
	IL_02c3: callvirt instance void [mscorlib]System.IO.BinaryWriter::Flush() /* 0A00001F */
	IL_02c8: ldloc.3
	IL_02c9: ldloc.1
	IL_02ca: call class [mscorlib]System.Collections.Hashtable Sims3.Metadata.ResourceKeyToData::Create(valuetype [SimIFace]Sims3.SimIFace.ResourceKey, class [mscorlib]System.IO.MemoryStream) /* 060003BE */
	IL_02cf: ret
} // end of method ColorInfo::ExportNamedInstance
