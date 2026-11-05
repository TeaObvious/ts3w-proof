/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): Section callback reads Position/View/Up as three
   floats; FOV/ScaleModifier as one, clip ranges as pairs. Retain constructor defaults on
   unsuccessful conversions; zero ScaleModifier ignored. Type supports perspective/orthographic;
   PositionFromScale true/false; HashType model selects extra hash transform, otherwise direct
   section hash. PreviewBound accepts two three-tuples or one six-tuple. Decompiled overlapping
   stack temporaries/pointer-floats are artifacts: original float writes and string query ABI take
   precedence. */

undefined4 __cdecl
ThumbnailCameras_ReadIniSection(ushort *param_1,undefined4 param_2,undefined4 *param_3)

{
  int *piVar1;
  bool bVar2;
  bool bVar3;
  int iVar4;
  uint uVar5;
  void *this;
  wchar_t *extraout_EAX;
  undefined1 **ppuVar6;
  wchar_t *apwStack_e0 [2];
  float local_d8;
  float local_d4;
  float fStack_d0;
  float fStack_cc;
  void *pvStack_c8;
  float fStack_c4;
  float fStack_c0;
  void *pvStack_bc;
  uint uStack_b8;
  void *local_b4;
  undefined1 *puStack_b0;
  undefined1 *puStack_ac;
  undefined2 *puStack_a8;
  char *pcStack_a4;
  undefined4 local_84;
  float local_80;
  float fStack_7c;
  void *pvStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  void *pvStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  void *pvStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  undefined4 uStack_44;
  undefined1 uStack_37;
  undefined1 uStack_2c;
  undefined4 uStack_24;
  float fStack_20;
  float fStack_1c;
  
  piVar1 = (int *)*param_3;
  local_84 = param_3[1];
  ThumbnailCamera_InitializeSettings(&local_80);
  iVar4 = (**(code **)(*piVar1 + 0x34))
                    (piVar1,param_1,L"Position",L"(%f, %f, %f)",&local_d8,&local_d4,&local_b4);
  if (iVar4 == 3) {
    pvStack_c8 = local_b4;
    fStack_c4 = local_d8;
    fStack_cc = local_d4;
    fStack_d0 = local_d8;
    local_80 = local_d8;
    fStack_7c = local_d4;
    pvStack_78 = local_b4;
    fStack_74 = local_d8;
  }
  iVar4 = (**(code **)(*piVar1 + 0x34))
                    (piVar1,param_1,L"View",L"(%f, %f, %f)",&local_d8,&local_d4,&local_b4);
  if (iVar4 == 3) {
    pvStack_c8 = local_b4;
    fStack_c4 = local_d8;
    fStack_cc = local_d4;
    fStack_d0 = local_d8;
    fStack_70 = local_d8;
    fStack_6c = local_d4;
    pvStack_68 = local_b4;
    fStack_64 = local_d8;
  }
  iVar4 = (**(code **)(*piVar1 + 0x34))
                    (piVar1,param_1,&DAT_01089f0c,L"(%f, %f, %f)",&local_d8,&local_d4,&local_b4);
  if (iVar4 == 3) {
    pvStack_c8 = local_b4;
    fStack_c4 = local_d8;
    fStack_cc = local_d4;
    fStack_d0 = local_d8;
    fStack_60 = local_d8;
    fStack_5c = local_d4;
    pvStack_58 = local_b4;
    fStack_54 = local_d8;
  }
  iVar4 = (**(code **)(*piVar1 + 0x34))(piVar1,param_1,&PTR_DAT_01045d28,&DAT_00fa2610,&local_d8);
  if (iVar4 == 1) {
    fStack_20 = local_d8;
  }
  iVar4 = (**(code **)(*piVar1 + 0x34))(piVar1,param_1,L"ScaleModifier",&DAT_00fa2610,&local_d8);
  if ((iVar4 == 1) && (local_d8 != DAT_010f4ccc)) {
    fStack_1c = local_d8;
  }
  iVar4 = (**(code **)(*piVar1 + 0x34))
                    (piVar1,param_1,L"NearClipRange",L"(%f, %f)",&local_d8,&local_d4);
  if (iVar4 == 2) {
    fStack_50 = local_d8;
    fStack_4c = local_d4;
  }
  iVar4 = (**(code **)(*piVar1 + 0x34))
                    (piVar1,param_1,L"FarClipRange",L"(%f, %f)",&local_d8,&local_d4);
  if (iVar4 == 2) {
    fStack_48 = local_d8;
    uStack_44 = local_d4;
  }
  pcStack_a4 = "UI/ThumbnailManager/String";
  puStack_b0 = &DAT_011c8e54;
  puStack_ac = &DAT_011c8e54;
  puStack_a8 = &DAT_011c8e56;
  iVar4 = (**(code **)(*piVar1 + 0x2c))(param_1,L"Type",&puStack_b0);
  if (0 < iVar4) {
    FUN_004ec9e0(&pvStack_bc);
    bVar2 = WideString_EqualsLiteral(&pvStack_bc,(ushort *)L"perspective");
    if (bVar2) {
      uStack_24 = 0;
    }
    else {
      bVar2 = WideString_EqualsLiteral(&pvStack_bc,(ushort *)L"orthographic");
      if (bVar2) {
        uStack_24 = 1;
      }
    }
  }
  iVar4 = (**(code **)(*piVar1 + 0x2c))(param_1,L"PositionFromScale",&pvStack_bc);
  if (0 < iVar4) {
    FUN_004ec9e0(&pvStack_c8);
    bVar2 = WideString_EqualsLiteral(&pvStack_c8,&DAT_00fc1cd8);
    if (bVar2) {
      uStack_2c = 1;
    }
    else {
      bVar2 = WideString_EqualsLiteral(&pvStack_c8,(ushort *)L"false");
      if (bVar2) {
        uStack_2c = 0;
      }
    }
  }
  bVar2 = false;
  iVar4 = (**(code **)(*piVar1 + 0x2c))(param_1,L"HashType",&pvStack_c8);
  if (0 < iVar4) {
    FUN_004ec9e0(&local_d4);
    bVar3 = WideString_EqualsLiteral(&local_d4,(ushort *)L"model");
    if (bVar3) {
      bVar2 = true;
    }
  }
  if (uStack_44 == DAT_010f4ccc) {
    uStack_44 = DAT_00fcc6f0;
  }
  if (bVar2) {
    uVar5 = FUN_004fa830(param_1,0x811c9dc5,1);
    puStack_ac = (undefined1 *)FUN_007cfea0(uVar5);
  }
  else {
    puStack_ac = (undefined1 *)FUN_007d0020(param_1);
  }
  uStack_37 = 0;
  iVar4 = (**(code **)(*piVar1 + 0x2c))(param_1,L"PreviewBound",&local_d4);
  if (0 < iVar4) {
    FUN_004ec9e0(apwStack_e0);
    iVar4 = FUN_004fd860(apwStack_e0[0],L"(%f, %f, %f) (%f, %f, %f)");
    if ((iVar4 == 6) ||
       (iVar4 = FUN_004fd860(apwStack_e0[0],L"(%f, %f, %f, %f, %f, %f)"), iVar4 == 6)) {
      uStack_44._0_2_ = CONCAT11(1,(undefined1)uStack_44);
      fStack_60 = fStack_c4;
      fStack_54 = fStack_c4;
      fStack_70 = fStack_d0;
      fStack_6c = fStack_cc;
      pvStack_68 = pvStack_c8;
      fStack_64 = fStack_d0;
      fStack_5c = fStack_c0;
      pvStack_58 = pvStack_bc;
    }
  }
  ppuVar6 = &puStack_b0;
  this = (void *)FUN_00d51d20(local_b4,&uStack_b8);
  FUN_00d4b510(this,ppuVar6);
  if ((2 < (int)((int)local_d8 - (int)apwStack_e0[0] & 0xfffffffeU)) &&
     (apwStack_e0[0] != (wchar_t *)0x0)) {
    Memory_FreeIfNonNull(apwStack_e0[0]);
    apwStack_e0[0] = extraout_EAX;
  }
  return CONCAT31((int3)((uint)apwStack_e0[0] >> 8),1);
}

