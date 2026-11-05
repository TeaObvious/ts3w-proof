/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name, original PC 1.67 TS3W.exe. Position-dependent camera ground-height query;
   main-frame caller0097857C consumes its x87 result with FADD camera+8F8. Ground policy includes
   lot/floor state and terrain/water queries. Decompiled return type float* and param_3 float* are
   incorrect/uncertain ABI recovery: return is consumed as floating height and param_3 is written as
   a one-byte flag. Do not use the inferred signature as a callable contract. Structure offsets and
   local names remain analyst inference; source bytes govern interpretation. */

float * __thiscall
GameplayCamera_QueryGroundHeight(void *this,float *samplePosition,char param_2,float *param_3)

{
  void *this_00;
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  bool bVar7;
  uchar uVar8;
  char cVar9;
  int *this_01;
  undefined3 extraout_var;
  float *pfVar10;
  int *this_02;
  uint uVar11;
  undefined4 uVar12;
  int iVar13;
  float *extraout_EAX;
  float *extraout_EAX_00;
  float *extraout_EAX_01;
  float *extraout_EAX_02;
  float10 fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  undefined8 uVar18;
  longlong lVar19;
  uint *visitCounter;
  float local_84;
  float local_80;
  float local_7c;
  float *local_78;
  float local_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  
  local_70 = *samplePosition;
  fStack_6c = samplePosition[1];
  fStack_68 = samplePosition[2];
  fStack_64 = samplePosition[3];
  *(undefined1 *)param_3 = 0;
  if (*(int *)((int)this + 0x3c) == 0) {
    return param_3;
  }
  visitCounter = (uint *)0x0;
  local_84 = -100.0;
  uVar18 = FUN_00c5f560(*(int *)((int)this + 0x3c));
  this_01 = WorldObjects_FindLotByGuid
                      (*(void **)((int)this + 0x3c),(uint)uVar18,(uint)((ulonglong)uVar18 >> 0x20),
                       visitCounter);
  pfVar10 = (float *)0x0;
  if (this_01 == (int *)0x0) {
LAB_00971507:
    local_78 = (float *)0x0;
  }
  else {
    uVar8 = Lot_ReadDetailReadinessByte(this_01);
    pfVar10 = (float *)CONCAT31(extraout_var,uVar8);
    if ((uVar8 == '\0') && ((this_01[0x102] != 1 || (this_01[0x103] != 0x50)))) goto LAB_00971507;
    local_78 = (float *)this_01[0xe7];
  }
  local_7c = *samplePosition;
  fStack_6c = samplePosition[1];
  local_80 = samplePosition[2];
  fStack_64 = samplePosition[3];
  bVar7 = false;
  local_70 = local_7c;
  fStack_68 = local_80;
  if ((this_01 != (int *)0x0) && ((char)this_01[0x12f] != '\0')) {
    pfVar10 = FUN_00ab2470(this_01,&local_50);
    fVar1 = *samplePosition;
    fVar2 = samplePosition[1];
    fVar3 = samplePosition[2];
    local_70 = fVar1 * *pfVar10 + pfVar10[0xc] + fVar2 * pfVar10[4] + fVar3 * pfVar10[8];
    fStack_6c = fVar1 * pfVar10[1] + pfVar10[0xd] + fVar2 * pfVar10[5] + fVar3 * pfVar10[9];
    fStack_68 = fVar1 * pfVar10[2] + pfVar10[0xe] + fVar2 * pfVar10[6] + fVar3 * pfVar10[10];
    fStack_64 = fVar1 * pfVar10[3] + pfVar10[0xf] + fVar2 * pfVar10[7] + fVar3 * pfVar10[0xb];
    local_60 = local_70;
    fStack_5c = fStack_6c;
    fStack_58 = fStack_68;
    fStack_54 = fStack_64;
    if ((0.0 <= local_70) &&
       (((local_70 <= (float)this_01[0x5d] && (0.0 <= fStack_68)) &&
        (fStack_68 <= (float)this_01[0x5e])))) {
      pfVar10 = (float *)FUN_00ab1cb0(this_01,&local_50);
      fVar1 = *pfVar10;
      fVar2 = pfVar10[1];
      fVar3 = pfVar10[2];
      fVar17 = pfVar10[3];
      fVar4 = *samplePosition;
      fVar5 = samplePosition[1];
      fVar6 = samplePosition[2];
      fVar15 = (fVar6 * fVar2 - fVar5 * fVar3) + fVar17 * fVar4;
      fVar16 = (fVar4 * fVar3 - fVar6 * fVar1) + fVar17 * fVar5;
      fVar17 = (fVar5 * fVar1 - fVar4 * fVar2) + fVar17 * fVar6;
      local_7c = (fVar17 * fVar2 - fVar16 * fVar3) * 2.0 + fVar4 + pfVar10[4];
      fStack_5c = (fVar15 * fVar3 - fVar17 * fVar1) * 2.0 + fVar5 + pfVar10[5];
      local_80 = (fVar16 * fVar1 - fVar15 * fVar2) * 2.0 + fVar6 + pfVar10[6];
      fStack_54 = (fVar15 * fVar1 - fVar15 * fVar1) * 2.0 + samplePosition[3] + pfVar10[7];
      bVar7 = true;
      local_60 = local_7c;
      fStack_58 = local_80;
    }
  }
  this_00 = *(void **)((int)this + 0x3c);
  if (local_7c < *(float *)((int)this_00 + 0xb4)) {
    return pfVar10;
  }
  if (local_80 < *(float *)((int)this_00 + 0xb8)) {
    return pfVar10;
  }
  if (*(float *)((int)this_00 + 0xbc) <= local_7c) {
    return pfVar10;
  }
  if (*(float *)((int)this_00 + 0xc4) + *(float *)((int)this_00 + 0xc0) <= local_80) {
    return pfVar10;
  }
  this_02 = LotSpatialIndex_FindContainingLotAtWorldXZ(this_00,local_7c,local_80);
  if ((this_02 != (int *)0x0) && (*(undefined1 *)param_3 = 1, -1 < (int)local_78)) {
    local_70 = (float)this_02[0x12];
    fStack_6c = (float)this_02[0x13];
    lVar19 = FUN_00c5f560(*(int *)((int)this + 0x3c));
    if (lVar19 == CONCAT44(fStack_6c,local_70)) {
      local_74 = (float)this_02[0xe7];
    }
    else {
      local_74 = 0.0;
    }
    uVar11 = FUN_009710d0(this,(uint *)&local_84);
    if ((char)uVar11 != '\0') {
      local_74 = local_84;
    }
    fVar14 = FUN_00ab7b30(this_02,local_7c,local_80,local_74,'\x01');
    local_84 = (float)fVar14;
    if ((param_2 == '\0') &&
       (cVar9 = FUN_00ab7cf0(this_02,local_7c,local_80,(int)local_74 + -1,&local_74), cVar9 != '\0')
       ) {
      local_74 = local_74 + 1.5;
      uVar11 = (int)(local_74 - local_84) >> 0x1f;
      local_70 = local_84;
      local_84 = (float)(~uVar11 & (uint)local_74 | (uint)local_84 & uVar11);
    }
    if ((0 < (int)local_78) ||
       ((pfVar10 = local_78, local_78 == (float *)0x0 &&
        (pfVar10 = (float *)FUN_00624bc0((int)this_02), (char)pfVar10 == '\0')))) {
      fVar14 = FUN_00ab7dc0(this_02,local_7c,local_80);
      uVar11 = (int)(float)((float10)local_84 - fVar14) >> 0x1f;
      local_74 = (float)fVar14;
      local_70 = local_84;
      local_84 = (float)(~uVar11 & (uint)local_84 | (uint)local_74 & uVar11);
      uVar12 = FUN_00650600((int)this_02);
      if ((char)uVar12 != '\0') {
        fVar14 = WorldWater_GetSeaLevel(*(int *)((int)this + 0x3c));
        uVar11 = (int)(float)((float10)local_84 - fVar14) >> 0x1f;
        local_74 = (float)fVar14;
        local_70 = local_84;
        local_84 = (float)(~uVar11 & (uint)local_84 | (uint)local_74 & uVar11);
      }
      fVar14 = WorldPonds_GetLevelAtPoint(*(void **)((int)this + 0x3c),local_7c,local_80,'\x01');
      pfVar10 = (float *)((int)(float)((float10)local_84 - fVar14) >> 0x1f);
      local_74 = (float)fVar14;
      local_70 = local_84;
      local_84 = (float)(~(uint)pfVar10 & (uint)local_84 | (uint)local_74 & (uint)pfVar10);
    }
    if (!bVar7) {
      return pfVar10;
    }
    if (this_01 == (int *)0x0) {
      return pfVar10;
    }
    if (this_02 == this_01) {
      iVar13 = Lot_GetAttachedWorldQuaternionTranslation(this_01,&local_50);
      return (float *)(iVar13 + 0x10);
    }
    return pfVar10;
  }
  if (this_01 != (int *)0x0) {
    if ((int)local_78 < 0) {
      if (this_02 != (int *)0x0) {
        fVar14 = FUN_00ab7b30(this_02,local_7c,local_80,local_78,'\0');
        local_84 = (float)fVar14;
      }
      pfVar10 = local_78;
      if ((param_2 != '\0') && (local_84 <= -100.0)) {
        fVar14 = FUN_00ab7b30(this_01,local_7c,local_80,local_78,'\x01');
        local_84 = (float)fVar14;
        pfVar10 = extraout_EAX;
        if (fVar14 <= (float10)-100.0) {
          FUN_00ab5b70(this_01,&local_60);
          local_70 = local_60;
          fStack_6c = fStack_5c;
          fStack_68 = fStack_58;
          fStack_64 = fStack_54;
          local_50 = local_60;
          fStack_4c = fStack_5c;
          fStack_48 = fStack_58;
          fStack_44 = fStack_54;
          fVar14 = FUN_00ab7b30(this_01,local_60,fStack_58,local_78,'\x01');
          local_84 = (float)fVar14;
          pfVar10 = extraout_EAX_00;
        }
      }
      if (!bVar7) {
        return pfVar10;
      }
      iVar13 = Lot_GetAttachedWorldQuaternionTranslation(this_01,&local_50);
      return (float *)(iVar13 + 0x10);
    }
    if (((this_01[0x102] == 1) && (this_01[0x103] == 0x50)) && (local_78 == (float *)0x0)) {
      fVar14 = WorldSurface_QueryHeight
                         (*(void **)((int)this + 0x3c),local_7c,local_80,0,'\0','\x01',
                          (undefined1 *)0x0,(undefined1 *)0x0,'\0','\0');
      local_84 = (float)fVar14;
      if (param_2 == '\0') {
        return extraout_EAX_01;
      }
      fVar14 = FUN_00b037f0(samplePosition,this_01);
      if (fVar14 <= (float10)10.0) {
        return extraout_EAX_02;
      }
      fVar14 = WorldWater_GetSeaLevel(*(int *)((int)this + 0x3c));
      fVar14 = (float10)local_84 - fVar14;
      goto LAB_00971b57;
    }
  }
  fVar14 = WorldSurface_QueryHeight
                     (*(void **)((int)this + 0x3c),local_7c,local_80,0,'\0','\x01',(undefined1 *)0x0
                      ,(undefined1 *)0x0,'\0','\0');
  local_84 = (float)fVar14;
  fVar14 = WorldWater_GetSeaLevel(*(int *)((int)this + 0x3c));
  local_70 = local_84;
  uVar11 = (int)(float)((float10)local_84 - fVar14) >> 0x1f;
  local_74 = (float)fVar14;
  local_84 = (float)(~uVar11 & (uint)local_84 | (uint)local_74 & uVar11);
  fVar14 = WorldPonds_GetLevelAtPoint(*(void **)((int)this + 0x3c),local_7c,local_80,'\x01');
  fVar14 = (float10)local_84 - fVar14;
LAB_00971b57:
  return (float *)((int)(float)fVar14 >> 0x1f);
}

