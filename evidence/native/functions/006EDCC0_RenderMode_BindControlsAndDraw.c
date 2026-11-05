/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC1.67, full1712B/437 instructions checked against pristine PE. ECX receiver, one incoming stack
   DWORD, physical RET4. Lazily registers scratch/translucent offsets and
   BloomData/ShimmerControl/UnderSeaControl, then checks graphics-manager+8D. Selector4 transforms
   z=-1,w=1 and writes projected Z/W followed by receiver+2B4/+2B8/+2BC to UnderSeaControl; then
   common selected-technique draw/temporary-offset clear. Matrix-unit conversion, tuning defaults
   and complete shader/provider behavior remain unproved. No ABI/type change. */

void __thiscall RenderMode_BindControlsAndDraw(void *this,undefined4 param_1)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  float fVar3;
  float fVar4;
  float fVar5;
  void *this_00;
  bool bVar6;
  void *this_01;
  void *this_02;
  int *piVar7;
  int *piVar8;
  undefined4 uVar9;
  int iVar10;
  float fVar11;
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  uint techniqueOrdinal;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  undefined1 local_40 [16];
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  this_00 = DAT_011d8530;
  if ((_DAT_011d2bf4 & 1) == 0) {
    _DAT_011d2bf4 = _DAT_011d2bf4 | 1;
    DAT_011d2bf0 = ShaderParameterRegistry_RegisterNamedRow
                             (DAT_011d8530,"scratchTextureOffsets",1,2);
  }
  if ((_DAT_011d2bf4 & 2) == 0) {
    _DAT_011d2bf4 = _DAT_011d2bf4 | 2;
    DAT_011d2bec = ShaderParameterRegistry_RegisterNamedRow(this_00,"translucentTextureOffsets",1,2)
    ;
  }
  if ((_DAT_011d2bf4 & 4) == 0) {
    _DAT_011d2bf4 = _DAT_011d2bf4 | 4;
    DAT_011d2be8 = ShaderParameterRegistry_RegisterNamedRow(this_00,"BloomData",1,2);
  }
  if ((_DAT_011d2bf4 & 8) == 0) {
    _DAT_011d2bf4 = _DAT_011d2bf4 | 8;
    DAT_011d2be4 = ShaderParameterRegistry_RegisterNamedRow(this_00,"ShimmerControl",1,2);
  }
  if ((_DAT_011d2bf4 & 0x10) == 0) {
    _DAT_011d2bf4 = _DAT_011d2bf4 | 0x10;
    DAT_011d2be0 = ShaderParameterRegistry_RegisterNamedRow(this_00,"UnderSeaControl",1,2);
  }
  this_01 = (void *)Graphics_GetManagerSingleton();
  if (*(char *)((int)this_01 + 0x8d) != '\0') {
    return;
  }
  this_02 = (void *)FUN_00617780();
  piVar7 = SurfaceRegistry_FindValueByTag(this_02,0x76b9af5e);
  piVar8 = SurfaceRegistry_FindValueByTag(this_02,0x75bd7813);
  iVar10 = *piVar7;
  fVar11 = (float)*(int *)(iVar10 + 0x14);
  if (*(int *)(iVar10 + 0x14) < 0) {
    fVar11 = fVar11 + 4.2949673e+09;
  }
  fVar5 = (float)*(int *)(iVar10 + 0x18);
  if (*(int *)(iVar10 + 0x18) < 0) {
    fVar5 = fVar5 + 4.2949673e+09;
  }
  iVar10 = *piVar8;
  fVar4 = (float)*(int *)(iVar10 + 0x14);
  if (*(int *)(iVar10 + 0x14) < 0) {
    fVar4 = fVar4 + 4.2949673e+09;
  }
  fVar3 = (float)*(int *)(iVar10 + 0x18);
  if (*(int *)(iVar10 + 0x18) < 0) {
    fVar3 = fVar3 + 4.2949673e+09;
  }
  fStack_54 = (1.0 / fVar5) * 2.5;
  fStack_58 = (1.0 / fVar11) * 2.5;
  fStack_5c = (1.0 / fVar5) * 0.5;
  local_60 = (1.0 / fVar11) * 0.5;
  fStack_44 = (1.0 / fVar3) * 2.5;
  fStack_48 = (1.0 / fVar4) * 2.5;
  fStack_4c = (1.0 / fVar3) * 0.5;
  local_50 = (1.0 / fVar4) * 0.5;
  if (DAT_011d2bf0 < *(uint *)((int)this_00 + 8)) {
    piVar7 = (int *)(DAT_011d2bf0 * 0x10 + *(int *)((int)this_00 + 4));
    *piVar7 = *piVar7 + 1;
    piVar7[2] = 1;
    *(undefined2 *)((int)piVar7 + 6) = 2;
    *(undefined2 *)(piVar7 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar7[3] = (int)&local_60;
  }
  if (DAT_011d2bec < *(uint *)((int)this_00 + 8)) {
    piVar7 = (int *)(DAT_011d2bec * 0x10 + *(int *)((int)this_00 + 4));
    *piVar7 = *piVar7 + 1;
    piVar7[2] = 1;
    *(undefined2 *)((int)piVar7 + 6) = 2;
    *(undefined2 *)(piVar7 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar7[3] = (int)&local_50;
  }
  switch(param_1) {
  case 0:
    FUN_006edc90();
    ShaderDefinition_SelectTechniqueOrdinal
              (*(Ts3SkinPostDefinition **)((int)this + 0x300),*(uint *)((int)this + 0x53c));
    FUN_0068ed60(this_00,DAT_011d2be8,0x11d18d0);
    break;
  case 1:
    FUN_006edc90();
    ShaderDefinition_SelectTechniqueOrdinal
              (*(Ts3SkinPostDefinition **)((int)this + 0x300),*(uint *)((int)this + 0x540));
    iVar10 = *(int *)((int)this + 0x24);
    fVar11 = -0.0 - *(float *)((int)this + 0x2ac);
    local_30 = *(float *)(iVar10 + 0x80) * 0.0 + *(float *)(iVar10 + 0x70) * 0.0 +
               fVar11 * *(float *)(iVar10 + 0x90) + *(float *)(iVar10 + 0xa0) * 1.0;
    fStack_2c = *(float *)(iVar10 + 0x84) * 0.0 + *(float *)(iVar10 + 0x74) * 0.0 +
                fVar11 * *(float *)(iVar10 + 0x94) + *(float *)(iVar10 + 0xa4) * 1.0;
    fStack_28 = *(float *)(iVar10 + 0x88) * 0.0 + *(float *)(iVar10 + 0x78) * 0.0 +
                fVar11 * *(float *)(iVar10 + 0x98) + *(float *)(iVar10 + 0xa8) * 1.0;
    fStack_24 = *(float *)(iVar10 + 0x8c) * 0.0 + *(float *)(iVar10 + 0x7c) * 0.0 +
                fVar11 * *(float *)(iVar10 + 0x9c) + *(float *)(iVar10 + 0xac) * 1.0;
    auVar12._4_4_ = fStack_28;
    auVar12._0_4_ = fStack_28;
    auVar12._8_4_ = fStack_28;
    auVar12._12_4_ = fStack_28;
    auVar2._4_4_ = fStack_24;
    auVar2._0_4_ = fStack_24;
    auVar2._8_4_ = fStack_24;
    auVar2._12_4_ = fStack_24;
    local_40 = divps(auVar12,auVar2);
    if ((_DAT_011d2bf4 & 0x20) == 0) {
      _DAT_011d2bf4 = _DAT_011d2bf4 | 0x20;
    }
    uVar9 = FUN_00595050((LPCRITICAL_SECTION)&DAT_011ced48);
    if (((char)uVar9 != '\0') || (bVar6 = FUN_00594ed0((LPCRITICAL_SECTION)&DAT_011ced48), bVar6)) {
      fRam011d2bd4 = 0.0;
    }
    else {
      fRam011d2bd4 = 1.0;
    }
    _DAT_011d2bd0 = local_40._0_4_;
    uRam011d2bd8 = 0;
    uRam011d2bdc = 0;
    FUN_0068ed60(this_00,DAT_011d2be4,0x11d2bd0);
    if (DAT_011d288c == '\0') {
      FUN_005f78c0(this_00,DAT_011d287c,0);
    }
    else {
      iVar10 = FUN_00722ed0(DAT_011d2874);
      FUN_005f78c0(this_00,DAT_011d287c,iVar10);
    }
    break;
  case 2:
    if (DAT_011d288c == '\0') {
      FUN_005f78c0(this_00,DAT_011d2880,0);
      FUN_005f78c0(this_00,DAT_011d2884,0);
      techniqueOrdinal = *(uint *)((int)this + 0x538);
    }
    else {
      iVar10 = FUN_00722ed0(DAT_011d286c);
      FUN_005f78c0(this_00,DAT_011d2880,iVar10);
      iVar10 = FUN_00722ed0(DAT_011d2870);
      FUN_005f78c0(this_00,DAT_011d2884,iVar10);
      techniqueOrdinal = *(uint *)((int)this + 0x538);
    }
    goto LAB_006ee2ee;
  case 3:
    if ((_DAT_011d2bf4 & 0x80) == 0) {
      _DAT_011d2bf4 = _DAT_011d2bf4 | 0x80;
      DAT_011d2bb4 = FUN_0079a920(*(void **)((int)this + 0x300),"ShadowDebug");
    }
    techniqueOrdinal = DAT_011d2bb4;
LAB_006ee2ee:
    ShaderDefinition_SelectTechniqueOrdinal
              (*(Ts3SkinPostDefinition **)((int)this + 0x300),techniqueOrdinal);
    break;
  case 4:
    FUN_006edc90();
    ShaderDefinition_SelectTechniqueOrdinal
              (*(Ts3SkinPostDefinition **)((int)this + 0x300),*(uint *)((int)this + 0x544));
    iVar10 = *(int *)((int)this + 0x24);
    local_20 = *(float *)(iVar10 + 0x80) * 0.0 + *(float *)(iVar10 + 0x70) * 0.0 +
               *(float *)(iVar10 + 0x90) * -1.0 + *(float *)(iVar10 + 0xa0) * 1.0;
    fStack_1c = *(float *)(iVar10 + 0x84) * 0.0 + *(float *)(iVar10 + 0x74) * 0.0 +
                *(float *)(iVar10 + 0x94) * -1.0 + *(float *)(iVar10 + 0xa4) * 1.0;
    fStack_18 = *(float *)(iVar10 + 0x88) * 0.0 + *(float *)(iVar10 + 0x78) * 0.0 +
                *(float *)(iVar10 + 0x98) * -1.0 + *(float *)(iVar10 + 0xa8) * 1.0;
    fStack_14 = *(float *)(iVar10 + 0x8c) * 0.0 + *(float *)(iVar10 + 0x7c) * 0.0 +
                *(float *)(iVar10 + 0x9c) * -1.0 + *(float *)(iVar10 + 0xac) * 1.0;
    auVar13._4_4_ = fStack_18;
    auVar13._0_4_ = fStack_18;
    auVar13._8_4_ = fStack_18;
    auVar13._12_4_ = fStack_18;
    auVar1._4_4_ = fStack_14;
    auVar1._0_4_ = fStack_14;
    auVar1._8_4_ = fStack_14;
    auVar1._12_4_ = fStack_14;
    local_40 = divps(auVar13,auVar1);
    if ((_DAT_011d2bf4 & 0x40) == 0) {
      _DAT_011d2bf4 = _DAT_011d2bf4 | 0x40;
    }
    uRam011d2bcc = *(undefined4 *)((int)this + 700);
    uRam011d2bc8 = *(undefined4 *)((int)this + 0x2b8);
    uRam011d2bc4 = *(undefined4 *)((int)this + 0x2b4);
    _DAT_011d2bc0 = local_40._0_4_;
    FUN_0068ed60(this_00,DAT_011d2be0,0x11d2bc0);
    if (DAT_011d288c == '\0') {
      FUN_005f78c0(this_00,DAT_011d2888,0);
    }
    else {
      iVar10 = FUN_00722ed0(DAT_011d2878);
      FUN_005f78c0(this_00,DAT_011d2888,iVar10);
    }
  }
  FUN_0060ffe0(this_01,2);
  ShaderDefinition_DrawSelectedTechnique
            (*(Ts3SkinPostDefinition **)((int)this + 0x300),(Ts3SkinPostDrawCallback *)0x0,
             (void *)0x0);
  if (DAT_011d2bf0 < *(uint *)((int)this_00 + 8)) {
    piVar7 = (int *)(DAT_011d2bf0 * 0x10 + *(int *)((int)this_00 + 4));
    *piVar7 = *piVar7 + 1;
    piVar7[2] = 1;
    *(undefined2 *)((int)piVar7 + 6) = 2;
    *(undefined2 *)(piVar7 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar7[3] = 0;
  }
  if (DAT_011d2bec < *(uint *)((int)this_00 + 8)) {
    piVar7 = (int *)(DAT_011d2bec * 0x10 + *(int *)((int)this_00 + 4));
    *piVar7 = *piVar7 + 1;
    piVar7[2] = 1;
    *(undefined2 *)((int)piVar7 + 6) = 2;
    *(undefined2 *)(piVar7 + 1) = *(undefined2 *)((int)this_00 + 0x12);
    piVar7[3] = 0;
  }
  return;
}

