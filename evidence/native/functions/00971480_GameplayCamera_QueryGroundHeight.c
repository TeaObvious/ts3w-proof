/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  char cVar8;
  undefined3 extraout_var;
  float *pfVar9;
  int *this_01;
  uint uVar10;
  undefined4 uVar11;
  int iVar12;
  float *extraout_EAX;
  float *extraout_EAX_00;
  float *extraout_EAX_01;
  float *extraout_EAX_02;
  float10 fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  undefined8 uVar17;
  longlong lVar18;
  int *piVar19;
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
  piVar19 = (int *)0x0;
  local_84 = -100.0;
  uVar17 = FUN_00c5f560(*(int *)((int)this + 0x3c));
  piVar19 = FUN_00c62810(*(void **)((int)this + 0x3c),(int)uVar17,(int)((ulonglong)uVar17 >> 0x20),
                         piVar19);
  pfVar9 = (float *)0x0;
  if (piVar19 == (int *)0x0) {
LAB_00971507:
    local_78 = (float *)0x0;
  }
  else {
    cVar8 = FUN_00d43520((int)piVar19);
    pfVar9 = (float *)CONCAT31(extraout_var,cVar8);
    if ((cVar8 == '\0') && ((piVar19[0x102] != 1 || (piVar19[0x103] != 0x50)))) goto LAB_00971507;
    local_78 = (float *)piVar19[0xe7];
  }
  local_7c = *samplePosition;
  fStack_6c = samplePosition[1];
  local_80 = samplePosition[2];
  fStack_64 = samplePosition[3];
  bVar7 = false;
  local_70 = local_7c;
  fStack_68 = local_80;
  if ((piVar19 != (int *)0x0) && ((char)piVar19[0x12f] != '\0')) {
    pfVar9 = FUN_00ab2470(piVar19,&local_50);
    fVar1 = *samplePosition;
    fVar2 = samplePosition[1];
    fVar3 = samplePosition[2];
    local_70 = fVar1 * *pfVar9 + pfVar9[0xc] + fVar2 * pfVar9[4] + fVar3 * pfVar9[8];
    fStack_6c = fVar1 * pfVar9[1] + pfVar9[0xd] + fVar2 * pfVar9[5] + fVar3 * pfVar9[9];
    fStack_68 = fVar1 * pfVar9[2] + pfVar9[0xe] + fVar2 * pfVar9[6] + fVar3 * pfVar9[10];
    fStack_64 = fVar1 * pfVar9[3] + pfVar9[0xf] + fVar2 * pfVar9[7] + fVar3 * pfVar9[0xb];
    local_60 = local_70;
    fStack_5c = fStack_6c;
    fStack_58 = fStack_68;
    fStack_54 = fStack_64;
    if ((0.0 <= local_70) &&
       (((local_70 <= (float)piVar19[0x5d] && (0.0 <= fStack_68)) &&
        (fStack_68 <= (float)piVar19[0x5e])))) {
      pfVar9 = (float *)FUN_00ab1cb0(piVar19,&local_50);
      fVar1 = *pfVar9;
      fVar2 = pfVar9[1];
      fVar3 = pfVar9[2];
      fVar16 = pfVar9[3];
      fVar4 = *samplePosition;
      fVar5 = samplePosition[1];
      fVar6 = samplePosition[2];
      fVar14 = (fVar6 * fVar2 - fVar5 * fVar3) + fVar16 * fVar4;
      fVar15 = (fVar4 * fVar3 - fVar6 * fVar1) + fVar16 * fVar5;
      fVar16 = (fVar5 * fVar1 - fVar4 * fVar2) + fVar16 * fVar6;
      local_7c = (fVar16 * fVar2 - fVar15 * fVar3) * 2.0 + fVar4 + pfVar9[4];
      fStack_5c = (fVar14 * fVar3 - fVar16 * fVar1) * 2.0 + fVar5 + pfVar9[5];
      local_80 = (fVar15 * fVar1 - fVar14 * fVar2) * 2.0 + fVar6 + pfVar9[6];
      fStack_54 = (fVar14 * fVar1 - fVar14 * fVar1) * 2.0 + samplePosition[3] + pfVar9[7];
      bVar7 = true;
      local_60 = local_7c;
      fStack_58 = local_80;
    }
  }
  this_00 = *(void **)((int)this + 0x3c);
  if (local_7c < *(float *)((int)this_00 + 0xb4)) {
    return pfVar9;
  }
  if (local_80 < *(float *)((int)this_00 + 0xb8)) {
    return pfVar9;
  }
  if (*(float *)((int)this_00 + 0xbc) <= local_7c) {
    return pfVar9;
  }
  if (*(float *)((int)this_00 + 0xc4) + *(float *)((int)this_00 + 0xc0) <= local_80) {
    return pfVar9;
  }
  this_01 = FUN_00c687d0(this_00,local_7c,local_80);
  if ((this_01 != (int *)0x0) && (*(undefined1 *)param_3 = 1, -1 < (int)local_78)) {
    local_70 = (float)this_01[0x12];
    fStack_6c = (float)this_01[0x13];
    lVar18 = FUN_00c5f560(*(int *)((int)this + 0x3c));
    if (lVar18 == CONCAT44(fStack_6c,local_70)) {
      local_74 = (float)this_01[0xe7];
    }
    else {
      local_74 = 0.0;
    }
    uVar10 = FUN_009710d0(this,(uint *)&local_84);
    if ((char)uVar10 != '\0') {
      local_74 = local_84;
    }
    fVar13 = FUN_00ab7b30(this_01,local_7c,local_80,local_74,'\x01');
    local_84 = (float)fVar13;
    if ((param_2 == '\0') &&
       (cVar8 = FUN_00ab7cf0(this_01,local_7c,local_80,(int)local_74 + -1,&local_74), cVar8 != '\0')
       ) {
      local_74 = local_74 + 1.5;
      uVar10 = (int)(local_74 - local_84) >> 0x1f;
      local_70 = local_84;
      local_84 = (float)(~uVar10 & (uint)local_74 | (uint)local_84 & uVar10);
    }
    if ((0 < (int)local_78) ||
       ((pfVar9 = local_78, local_78 == (float *)0x0 &&
        (pfVar9 = (float *)FUN_00624bc0((int)this_01), (char)pfVar9 == '\0')))) {
      fVar13 = FUN_00ab7dc0(this_01,local_7c,local_80);
      uVar10 = (int)(float)((float10)local_84 - fVar13) >> 0x1f;
      local_74 = (float)fVar13;
      local_70 = local_84;
      local_84 = (float)(~uVar10 & (uint)local_84 | (uint)local_74 & uVar10);
      uVar11 = FUN_00650600((int)this_01);
      if ((char)uVar11 != '\0') {
        fVar13 = FUN_00c61090(*(int *)((int)this + 0x3c));
        uVar10 = (int)(float)((float10)local_84 - fVar13) >> 0x1f;
        local_74 = (float)fVar13;
        local_70 = local_84;
        local_84 = (float)(~uVar10 & (uint)local_84 | (uint)local_74 & uVar10);
      }
      fVar13 = FUN_00c60e20(*(void **)((int)this + 0x3c),local_7c,local_80,'\x01');
      pfVar9 = (float *)((int)(float)((float10)local_84 - fVar13) >> 0x1f);
      local_74 = (float)fVar13;
      local_70 = local_84;
      local_84 = (float)(~(uint)pfVar9 & (uint)local_84 | (uint)local_74 & (uint)pfVar9);
    }
    if (!bVar7) {
      return pfVar9;
    }
    if (piVar19 == (int *)0x0) {
      return pfVar9;
    }
    if (this_01 != piVar19) {
      return pfVar9;
    }
    iVar12 = FUN_00ab1b00(piVar19,&local_50);
    return (float *)(iVar12 + 0x10);
  }
  if (piVar19 != (int *)0x0) {
    if ((int)local_78 < 0) {
      if (this_01 != (int *)0x0) {
        fVar13 = FUN_00ab7b30(this_01,local_7c,local_80,local_78,'\0');
        local_84 = (float)fVar13;
      }
      pfVar9 = local_78;
      if ((param_2 != '\0') && (local_84 <= -100.0)) {
        fVar13 = FUN_00ab7b30(piVar19,local_7c,local_80,local_78,'\x01');
        local_84 = (float)fVar13;
        pfVar9 = extraout_EAX;
        if (fVar13 <= (float10)-100.0) {
          FUN_00ab5b70(piVar19,&local_60);
          local_70 = local_60;
          fStack_6c = fStack_5c;
          fStack_68 = fStack_58;
          fStack_64 = fStack_54;
          local_50 = local_60;
          fStack_4c = fStack_5c;
          fStack_48 = fStack_58;
          fStack_44 = fStack_54;
          fVar13 = FUN_00ab7b30(piVar19,local_60,fStack_58,local_78,'\x01');
          local_84 = (float)fVar13;
          pfVar9 = extraout_EAX_00;
        }
      }
      if (!bVar7) {
        return pfVar9;
      }
      iVar12 = FUN_00ab1b00(piVar19,&local_50);
      return (float *)(iVar12 + 0x10);
    }
    if (((piVar19[0x102] == 1) && (piVar19[0x103] == 0x50)) && (local_78 == (float *)0x0)) {
      fVar13 = FUN_00c6a090(*(void **)((int)this + 0x3c),local_7c,local_80,0,'\0','\x01',
                            (undefined1 *)0x0,(undefined1 *)0x0,'\0','\0');
      local_84 = (float)fVar13;
      if (param_2 == '\0') {
        return extraout_EAX_01;
      }
      fVar13 = FUN_00b037f0(samplePosition,piVar19);
      if (fVar13 <= (float10)10.0) {
        return extraout_EAX_02;
      }
      fVar13 = FUN_00c61090(*(int *)((int)this + 0x3c));
      fVar13 = (float10)local_84 - fVar13;
      goto LAB_00971b57;
    }
  }
  fVar13 = FUN_00c6a090(*(void **)((int)this + 0x3c),local_7c,local_80,0,'\0','\x01',
                        (undefined1 *)0x0,(undefined1 *)0x0,'\0','\0');
  local_84 = (float)fVar13;
  fVar13 = FUN_00c61090(*(int *)((int)this + 0x3c));
  local_70 = local_84;
  uVar10 = (int)(float)((float10)local_84 - fVar13) >> 0x1f;
  local_74 = (float)fVar13;
  local_84 = (float)(~uVar10 & (uint)local_84 | (uint)local_74 & uVar10);
  fVar13 = FUN_00c60e20(*(void **)((int)this + 0x3c),local_7c,local_80,'\x01');
  fVar13 = (float10)local_84 - fVar13;
LAB_00971b57:
  return (float *)((int)(float)fVar13 >> 0x1f);
}

