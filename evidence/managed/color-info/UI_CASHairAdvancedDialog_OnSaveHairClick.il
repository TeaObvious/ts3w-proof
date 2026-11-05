// PC1.67 UI; Sims3.UI.CAS.CASHairAdvancedDialog; OnSaveHairClick
.method /* 0600275C */ private hidebysig 
	instance void OnSaveHairClick (
		class Sims3.UI.WindowBase sender,
		class Sims3.UI.UIButtonClickEventArgs eventArgs
	) cil managed 
{
	// Method begins at RVA 0xdf55c
	// Header size: 12
	// Code size: 564 (0x234)
	.maxstack 3
	.locals /* 110006A4 */ init (
		[0] int32,
		[1] class [Sims3Metadata]Sims3.Metadata.ColorInfo,
		[2] valuetype [SimIFace]Sims3.SimIFace.Color,
		[3] uint32,
		[4] valuetype [SimIFace]Sims3.SimIFace.ResourceKey,
		[5] valuetype [SimIFace]Sims3.SimIFace.Color[],
		[6] valuetype [SimIFace]Sims3.SimIFace.Color,
		[7] valuetype [SimIFace]Sims3.SimIFace.Color,
		[8] valuetype [SimIFace]Sims3.SimIFace.Color,
		[9] valuetype [SimIFace]Sims3.SimIFace.Color,
		[10] valuetype [SimIFace]Sims3.SimIFace.Color,
		[11] valuetype [SimIFace]Sims3.SimIFace.Color,
		[12] valuetype [SimIFace]Sims3.SimIFace.Color,
		[13] valuetype [SimIFace]Sims3.SimIFace.Color
	)

	IL_0000: call class Sims3.UI.IResponder Sims3.UI.Responder::get_Instance() /* 06000E1D */
	IL_0005: callvirt instance class Sims3.UI.CAS.ICASModel Sims3.UI.IResponder::get_CASModel() /* 06000DDB */
	IL_000a: ldarg.0
	IL_000b: ldfld valuetype [SimIFace]Sims3.SimIFace.CAS.BodyTypes Sims3.UI.CAS.CASHairAdvancedDialog::mBodyType /* 040029B5 */
	IL_0010: ldc.i4.0
	IL_0011: callvirt instance int32 Sims3.UI.CAS.ICASModel::FindCurrentHairColorPresetIndex(valuetype [SimIFace]Sims3.SimIFace.CAS.BodyTypes, bool) /* 060022FB */
	IL_0016: stloc.0
	IL_0017: ldloc.0
	IL_0018: ldc.i4.m1
	IL_0019: bne.un IL_020b

	IL_001e: newobj instance void [Sims3Metadata]Sims3.Metadata.ColorInfo::.ctor() /* 0A000225 */
	IL_0023: stloc.1
	IL_0024: ldloc.1
	IL_0025: ldc.i4.3
	IL_0026: callvirt instance void [Sims3Metadata]Sims3.Metadata.ColorInfo::set_Usage(valuetype [Sims3Metadata]Sims3.Metadata.ColorInfo/PreferredUse) /* 0A000226 */
	IL_002b: ldloc.1
	IL_002c: ldc.i4.8
	IL_002d: newarr [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0032: stloc.s 5
	IL_0034: ldloc.s 5
	IL_0036: ldc.i4.0
	IL_0037: ldelema [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_003c: ldloca.s 6
	IL_003e: initobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0044: ldloc.s 6
	IL_0046: stobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_004b: ldloc.s 5
	IL_004d: ldc.i4.1
	IL_004e: ldelema [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0053: ldloca.s 7
	IL_0055: initobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_005b: ldloc.s 7
	IL_005d: stobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0062: ldloc.s 5
	IL_0064: ldc.i4.2
	IL_0065: ldelema [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_006a: ldloca.s 8
	IL_006c: initobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0072: ldloc.s 8
	IL_0074: stobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0079: ldloc.s 5
	IL_007b: ldc.i4.3
	IL_007c: ldelema [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0081: ldloca.s 9
	IL_0083: initobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0089: ldloc.s 9
	IL_008b: stobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0090: ldloc.s 5
	IL_0092: ldc.i4.4
	IL_0093: ldelema [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_0098: ldloca.s 10
	IL_009a: initobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_00a0: ldloc.s 10
	IL_00a2: stobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_00a7: ldloc.s 5
	IL_00a9: ldc.i4.5
	IL_00aa: ldelema [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_00af: ldloca.s 11
	IL_00b1: initobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_00b7: ldloc.s 11
	IL_00b9: stobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_00be: ldloc.s 5
	IL_00c0: ldc.i4.6
	IL_00c1: ldelema [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_00c6: ldloca.s 12
	IL_00c8: initobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_00ce: ldloc.s 12
	IL_00d0: stobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_00d5: ldloc.s 5
	IL_00d7: ldc.i4.7
	IL_00d8: ldelema [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_00dd: ldloca.s 13
	IL_00df: initobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_00e5: ldloc.s 13
	IL_00e7: stobj [SimIFace]Sims3.SimIFace.Color /* 0100001C */
	IL_00ec: ldloc.s 5
	IL_00ee: callvirt instance void [Sims3Metadata]Sims3.Metadata.ColorInfo::set_Colors(valuetype [SimIFace]Sims3.SimIFace.Color[]) /* 0A000228 */
	IL_00f3: ldc.i4.0
	IL_00f4: call valuetype [SimIFace]Sims3.SimIFace.Color [SimIFace]Sims3.SimIFace.Color::op_Implicit(valuetype [SimIFace]Sims3.SimIFace.Color/Preset) /* 0A0001BC */
	IL_00f9: stloc.2
	IL_00fa: ldc.i4.0
	IL_00fb: stloc.3
	IL_00fc: br.s IL_0152
	// loop start (head: IL_0152)
		IL_00fe: call class Sims3.UI.IResponder Sims3.UI.Responder::get_Instance() /* 06000E1D */
		IL_0103: callvirt instance class Sims3.UI.CAS.ICASModel Sims3.UI.IResponder::get_CASModel() /* 06000DDB */
		IL_0108: ldc.i4.1
		IL_0109: ldloc.3
		IL_010a: callvirt instance valuetype [SimIFace]Sims3.SimIFace.Color Sims3.UI.CAS.ICASModel::GetHairColor(valuetype [SimIFace]Sims3.SimIFace.CAS.BodyTypes, int32) /* 060022CB */
		IL_010f: stloc.2
		IL_0110: ldarg.0
		IL_0111: ldarg.0
		IL_0112: ldfld valuetype [SimIFace]Sims3.SimIFace.Vector3[] Sims3.UI.CAS.CASHairAdvancedDialog::mCurHairPartVecColors /* 040029BB */
		IL_0117: ldloc.3
		IL_0118: conv.u
		IL_0119: ldelema [SimIFace]Sims3.SimIFace.Vector3 /* 01000020 */
		IL_011e: ldobj [SimIFace]Sims3.SimIFace.Vector3 /* 01000020 */
		IL_0123: call instance valuetype [SimIFace]Sims3.SimIFace.Color Sims3.UI.CAS.CASHairAdvancedDialog::Vector3ToColor(valuetype [SimIFace]Sims3.SimIFace.Vector3) /* 06002769 */
		IL_0128: stloc.2
		IL_0129: ldloca.s 2
		IL_012b: ldc.i4 255
		IL_0130: call instance void [SimIFace]Sims3.SimIFace.Color::set_Alpha(uint8) /* 0A000208 */
		IL_0135: ldloc.1
		IL_0136: callvirt instance valuetype [SimIFace]Sims3.SimIFace.Color[] [Sims3Metadata]Sims3.Metadata.ColorInfo::get_Colors() /* 0A0001CB */
		IL_013b: ldloc.3
		IL_013c: conv.u
		IL_013d: ldelema [SimIFace]Sims3.SimIFace.Color /* 0100001C */
		IL_0142: ldloca.s 2
		IL_0144: call instance uint32 [SimIFace]Sims3.SimIFace.Color::get_ARGB() /* 0A000034 */
		IL_0149: call instance void [SimIFace]Sims3.SimIFace.Color::set_ARGB(uint32) /* 0A0004E5 */
		IL_014e: ldloc.3
		IL_014f: ldc.i4.1
		IL_0150: add
		IL_0151: stloc.3

		IL_0152: ldloc.3
		IL_0153: ldc.i4.4
		IL_0154: blt.un.s IL_00fe
	// end loop

	IL_0156: ldsfld valuetype [SimIFace]Sims3.SimIFace.ResourceKey [SimIFace]Sims3.SimIFace.ResourceKey::kInvalidResourceKey /* 0A000080 */
	IL_015b: stloc.s 4
	IL_015d: ldsfld class Sims3.UI.CAS.CAP.CAPColoringTMH Sims3.UI.CAS.CAP.CAPColoringTMH::gSingleton /* 04003804 */
	IL_0162: ldnull
	IL_0163: call bool Sims3.UI.WindowBase::op_Inequality(class Sims3.UI.WindowBase, class Sims3.UI.WindowBase) /* 06000090 */
	IL_0168: brfalse.s IL_0188

	IL_016a: ldloc.1
	IL_016b: ldc.i4.4
	IL_016c: callvirt instance void [Sims3Metadata]Sims3.Metadata.ColorInfo::set_Usage(valuetype [Sims3Metadata]Sims3.Metadata.ColorInfo/PreferredUse) /* 0A000226 */
	IL_0171: ldloc.1
	IL_0172: ldc.i4.6
	IL_0173: callvirt instance void [Sims3Metadata]Sims3.Metadata.ColorInfo::set_UsageSubCategory(valuetype [Sims3Metadata]Sims3.Metadata.ColorInfo/eUsageSubCategory) /* 0A000227 */
	IL_0178: ldloc.1
	IL_0179: ldloc.1
	IL_017a: callvirt instance valuetype [Sims3Metadata]Sims3.Metadata.ColorInfo/eUsageSubCategory [Sims3Metadata]Sims3.Metadata.ColorInfo::get_UsageSubCategory() /* 0A000206 */
	IL_017f: callvirt instance valuetype [SimIFace]Sims3.SimIFace.ResourceKey [Sims3Metadata]Sims3.Metadata.ColorInfo::SaveMakeupPreset(valuetype [Sims3Metadata]Sims3.Metadata.ColorInfo/eUsageSubCategory) /* 0A000229 */
	IL_0184: stloc.s 4
	IL_0186: br.s IL_0190

	IL_0188: ldloc.1
	IL_0189: callvirt instance valuetype [SimIFace]Sims3.SimIFace.ResourceKey [Sims3Metadata]Sims3.Metadata.ColorInfo::SaveHairPreset() /* 0A000706 */
	IL_018e: stloc.s 4

	IL_0190: ldloc.s 4
	IL_0192: ldsfld valuetype [SimIFace]Sims3.SimIFace.ResourceKey [SimIFace]Sims3.SimIFace.ResourceKey::kInvalidResourceKey /* 0A000080 */
	IL_0197: call bool [SimIFace]Sims3.SimIFace.ResourceKey::op_Inequality(valuetype [SimIFace]Sims3.SimIFace.ResourceKey, valuetype [SimIFace]Sims3.SimIFace.ResourceKey) /* 0A000081 */
	IL_019c: brfalse.s IL_01fe

	IL_019e: ldarg.0
	IL_019f: ldfld class Sims3.UI.Button Sims3.UI.CAS.CASHairAdvancedDialog::mSaveButton /* 040029B0 */
	IL_01a4: ldc.i4.0
	IL_01a5: callvirt instance void Sims3.UI.WindowBase::set_Enabled(bool) /* 0600003F */
	IL_01aa: call class Sims3.UI.CAS.CASController Sims3.UI.CAS.CASController::get_Singleton() /* 060023EB */
	IL_01af: ldc.i4.s 11
	IL_01b1: callvirt instance void Sims3.UI.CAS.CASController::ErrorMsg(valuetype Sims3.UI.CAS.CASErrorCode) /* 0600244D */
	IL_01b6: ldsfld class Sims3.UI.CAS.CASHair Sims3.UI.CAS.CASHair::gSingleton /* 04002A12 */
	IL_01bb: ldnull
	IL_01bc: call bool Sims3.UI.WindowBase::op_Inequality(class Sims3.UI.WindowBase, class Sims3.UI.WindowBase) /* 06000090 */
	IL_01c1: brfalse.s IL_01ce

	IL_01c3: ldsfld class Sims3.UI.CAS.CASHair Sims3.UI.CAS.CASHair::gSingleton /* 04002A12 */
	IL_01c8: callvirt instance void Sims3.UI.CAS.CASHair::PopulateHairPresets() /* 06002795 */
	IL_01cd: ret

	IL_01ce: ldsfld class Sims3.UI.CAS.CASBeard Sims3.UI.CAS.CASBeard::gSingleton /* 040026D6 */
	IL_01d3: ldnull
	IL_01d4: call bool Sims3.UI.WindowBase::op_Inequality(class Sims3.UI.WindowBase, class Sims3.UI.WindowBase) /* 06000090 */
	IL_01d9: brfalse.s IL_01e6

	IL_01db: ldsfld class Sims3.UI.CAS.CASBeard Sims3.UI.CAS.CASBeard::gSingleton /* 040026D6 */
	IL_01e0: callvirt instance void Sims3.UI.CAS.CASBeard::PopulateBeardPresets() /* 06002597 */
	IL_01e5: ret

	IL_01e6: ldsfld class Sims3.UI.CAS.CAP.CAPColoringTMH Sims3.UI.CAS.CAP.CAPColoringTMH::gSingleton /* 04003804 */
	IL_01eb: ldnull
	IL_01ec: call bool Sims3.UI.WindowBase::op_Inequality(class Sims3.UI.WindowBase, class Sims3.UI.WindowBase) /* 06000090 */
	IL_01f1: brfalse.s IL_0233

	IL_01f3: ldsfld class Sims3.UI.CAS.CAP.CAPColoringTMH Sims3.UI.CAS.CAP.CAPColoringTMH::gSingleton /* 04003804 */
	IL_01f8: callvirt instance void Sims3.UI.CAS.CAP.CAPColoringTMH::PopulateHairPresets() /* 06003259 */
	IL_01fd: ret

	IL_01fe: call class Sims3.UI.CAS.CASController Sims3.UI.CAS.CASController::get_Singleton() /* 060023EB */
	IL_0203: ldc.i4.s 12
	IL_0205: callvirt instance void Sims3.UI.CAS.CASController::ErrorMsg(valuetype Sims3.UI.CAS.CASErrorCode) /* 0600244D */
	IL_020a: ret

	IL_020b: ldsfld class Sims3.UI.Function Sims3.UI.CAS.CASHairAdvancedDialog::'<>9__CachedAnonymousMethodDelegate1' /* 040029C3 */
	IL_0210: brtrue.s IL_0223

	IL_0212: ldnull
	IL_0213: ldftn void Sims3.UI.CAS.CASHairAdvancedDialog::'<OnSaveHairClick>b__0'() /* 0600276B */
	IL_0219: newobj instance void Sims3.UI.Function::.ctor(object, native int) /* 06000E20 */
	IL_021e: stsfld class Sims3.UI.Function Sims3.UI.CAS.CASHairAdvancedDialog::'<>9__CachedAnonymousMethodDelegate1' /* 040029C3 */

	IL_0223: ldsfld class Sims3.UI.Function Sims3.UI.CAS.CASHairAdvancedDialog::'<>9__CachedAnonymousMethodDelegate1' /* 040029C3 */
	IL_0228: newobj instance void Sims3.UI.OneShotFunctionTask::.ctor(class Sims3.UI.Function) /* 06000E26 */
	IL_022d: call valuetype [SimIFace]Sims3.SimIFace.ObjectGuid [SimIFace]Sims3.SimIFace.Simulator::AddObject(object) /* 0A0000AA */
	IL_0232: pop

	IL_0233: ret
} // end of method CASHairAdvancedDialog::OnSaveHairClick
