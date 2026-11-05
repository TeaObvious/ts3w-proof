/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WeatherControl_SetSettings. Export ordinal(s):
   1254. Entry VA: 0x105764d0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600030C. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl WeatherControl_SetSettings(undefined4 param_1)

{
  float fVar1;
  void *this;
  undefined1 auVar2 [16];
  int *piVar3;
  int iVar4;
  int iVar5;
  float *unaff_EBX;
  int unaff_ESI;
  ushort in_FPUControlWord;
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  double dVar11;
  undefined8 uStack_84;
  undefined4 local_7c;
  float fStack_78;
  float fStack_74;
  undefined4 uStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  undefined1 uStack_58;
  float fStack_54;
  undefined1 uStack_50;
  float fStack_4c;
  float fStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined2 uStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  
                    /* 0x5764d0  1254  WeatherControl_SetSettings */
  iVar5 = DAT_10c700c4;
  if (DAT_10c700c4 == 0) {
    return;
  }
  this = *(void **)(DAT_10c700c4 + 0x74);
  if (this == (void *)0x0) {
    return;
  }
  piVar3 = (int *)FUN_1055b120();
  uStack_84 = (ulonglong)(uint)uStack_84;
  (**(code **)(*piVar3 + 0x78))(param_1,&local_7c,(int)&uStack_84 + 4);
  if (unaff_ESI != 0x17) {
    return;
  }
  fStack_78 = DAT_10acb0d4;
  local_7c = 0;
  fStack_74 = 0.0;
  uStack_70 = 0;
  fStack_6c = 0.0;
  fStack_68 = 0.0;
  fStack_64 = 0.0;
  fStack_60 = 0.0;
  fStack_5c = 0.0;
  uStack_58 = 0;
  fStack_54 = 0.0;
  uStack_50 = 1;
  fStack_4c = 0.0;
  fStack_48 = DAT_10aae184;
  fStack_38 = 0.0;
  fStack_34 = 0.0;
  fStack_30 = 0.0;
  fStack_2c = 0.0;
  fStack_28 = 0.0;
  fStack_24 = 0.0;
  FUN_10342c70(this,&local_7c);
  dVar11 = floor((double)*unaff_EBX);
  uStack_84._0_4_ = (uint)(longlong)ROUND(dVar11);
  local_7c = (uint)uStack_84;
  fStack_78 = unaff_EBX[1];
  uStack_84._0_4_ = (uint)(longlong)ROUND(unaff_EBX[2]);
  uStack_70 = (uint)uStack_84;
  fStack_6c = unaff_EBX[3];
  fStack_68 = unaff_EBX[4];
  uStack_84._0_4_ = (uint)(longlong)ROUND(unaff_EBX[5]);
  uStack_44 = (uint)uStack_84;
  uStack_84 = (ulonglong)ROUND(unaff_EBX[6]);
  uStack_40 = (uint)uStack_84;
  uStack_3c = (undefined2)(int)unaff_EBX[7];
  fStack_74 = unaff_EBX[8];
  fStack_64 = unaff_EBX[9];
  fStack_60 = unaff_EBX[10];
  fStack_5c = unaff_EBX[0xb];
  fStack_54 = unaff_EBX[0xc];
  fVar1 = unaff_EBX[0xd];
  auVar8._0_4_ = DAT_10aae184 * fVar1;
  auVar8._4_4_ = DAT_10aae184 * fVar1;
  auVar8._8_4_ = DAT_10aae184 * fVar1;
  auVar8._12_4_ = DAT_10aae184 * fVar1;
  auVar9._4_4_ = fVar1;
  auVar9._0_4_ = fVar1;
  auVar9._8_4_ = fVar1;
  auVar9._12_4_ = fVar1;
  auVar9 = maxps(auVar8,auVar9);
  auVar10._4_4_ = -(uint)(auVar9._4_4_ <= DAT_10b2196c);
  auVar10._0_4_ = -(uint)(auVar9._0_4_ <= DAT_10b2196c);
  auVar10._8_4_ = -(uint)(auVar9._8_4_ <= DAT_10b2196c);
  auVar10._12_4_ = -(uint)(auVar9._12_4_ <= DAT_10b2196c);
  iVar4 = movmskps(in_FPUControlWord | 0xc00,auVar10);
  uStack_50 = iVar4 != 0xf;
  fStack_4c = unaff_EBX[0xe];
  fStack_38 = unaff_EBX[0xf];
  fStack_34 = unaff_EBX[0x10];
  fStack_48 = unaff_EBX[0x11];
  fStack_30 = unaff_EBX[0x12];
  fVar1 = unaff_EBX[0x13];
  auVar6._0_4_ = DAT_10aae184 * fVar1;
  auVar6._4_4_ = DAT_10aae184 * fVar1;
  auVar6._8_4_ = DAT_10aae184 * fVar1;
  auVar6._12_4_ = DAT_10aae184 * fVar1;
  auVar2._4_4_ = fVar1;
  auVar2._0_4_ = fVar1;
  auVar2._8_4_ = fVar1;
  auVar2._12_4_ = fVar1;
  auVar9 = maxps(auVar6,auVar2);
  auVar7._4_4_ = -(uint)(auVar9._4_4_ <= DAT_10b2196c);
  auVar7._0_4_ = -(uint)(auVar9._0_4_ <= DAT_10b2196c);
  auVar7._8_4_ = -(uint)(auVar9._8_4_ <= DAT_10b2196c);
  auVar7._12_4_ = -(uint)(auVar9._12_4_ <= DAT_10b2196c);
  iVar4 = movmskps((int)unaff_EBX[7],auVar7);
  uStack_58 = iVar4 != 0xf;
  fStack_2c = unaff_EBX[0x14];
  fStack_28 = unaff_EBX[0x15];
  fStack_24 = unaff_EBX[0x16];
  iVar5 = FUN_10233bf0(iVar5);
  if (iVar5 == 1) {
    fStack_54 = DAT_10acb0d4;
  }
  else {
    if (iVar5 != 2) goto LAB_105767b5;
    fStack_54 = 0.0;
  }
  fStack_4c = DAT_10acb0d4;
LAB_105767b5:
  FUN_10342ca0(this,&local_7c);
  return;
}

