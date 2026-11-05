/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: ECX tool with cursor pointer, RET4 and low AL result.
   Rectangle orders coordinates independently; other shape has orientation/parity behavior. Modes0/2
   dig, others remove; modes2/3 increment region level. Calls C9F040/C9DB50, suppresses errorsCD/EB,
   remaps72/9C into73/74/75 by relative level; additional pool/error4A paths exist. Decompiler
   float/int overlays must follow actual instructions. */

char __thiscall BasementTool_ValidateDraggedRegion(void *this,float *param_1)

{
  float *pfVar1;
  float *pfVar2;
  char *pcVar3;
  char *pcVar4;
  float fVar5;
  bool bVar6;
  float *pfVar7;
  undefined3 uVar10;
  undefined4 uVar8;
  uint uVar9;
  float *pfVar11;
  int iVar12;
  int iVar13;
  undefined4 local_13c;
  char local_135;
  int local_134;
  float local_130;
  float local_12c;
  float local_128;
  int local_124;
  int local_120;
  float local_11c;
  float local_118;
  int local_114;
  float local_110 [16];
  undefined1 local_d0 [12];
  undefined4 *local_c4;
  undefined4 *local_a8;
  undefined4 *local_8c;
  undefined4 *local_70;
  int local_50 [4];
  undefined4 local_40 [15];
  
  *(float *)((int)this + 0x70) = *param_1;
  *(float *)((int)this + 0x74) = param_1[1];
  *(float *)((int)this + 0x78) = param_1[2];
  if (*(char *)((int)this + 0x5e) == '\0') {
    if (ABS(*(float *)((int)this + 0x68) - param_1[1]) <=
        ABS(*(float *)((int)this + 100) - *param_1)) {
      if (*(float *)((int)this + 100) < *param_1) goto LAB_00cd12b0;
    }
    else if (*(float *)((int)this + 0x68) < param_1[1]) {
LAB_00cd12b0:
      local_11c = *(float *)((int)this + 100);
      local_118 = *(float *)((int)this + 0x68);
      local_12c = *param_1;
      local_128 = param_1[1];
      goto LAB_00cd117e;
    }
    local_11c = *param_1;
    local_118 = param_1[1];
    local_12c = *(float *)((int)this + 100);
    local_128 = *(float *)((int)this + 0x68);
  }
  else {
    fVar5 = *param_1;
    pfVar1 = (float *)((int)this + 100);
    pfVar7 = param_1;
    if (*(float *)((int)this + 100) <= fVar5) {
      pfVar7 = pfVar1;
    }
    local_11c = *pfVar7;
    pfVar7 = param_1 + 1;
    pfVar2 = (float *)((int)this + 0x68);
    pfVar11 = pfVar7;
    if (*pfVar2 < *pfVar7 || *pfVar2 == *pfVar7) {
      pfVar11 = pfVar2;
    }
    local_118 = *pfVar11;
    if (fVar5 < *pfVar1 || fVar5 == *pfVar1) {
      param_1 = pfVar1;
    }
    local_12c = *param_1;
    if (*pfVar7 < *pfVar2 || *pfVar7 == *pfVar2) {
      pfVar7 = pfVar2;
    }
    local_128 = *pfVar7;
  }
LAB_00cd117e:
  local_114 = *(int *)((int)this + 0x6c);
  if ((*(int *)((int)this + 0x60) != 0) && (*(int *)((int)this + 0x60) != 1)) {
    local_114 = local_114 + 1;
  }
  local_13c._0_2_ =
       CONCAT11((char)(int)ROUND(local_118) + -1 +
                ((uint)(local_118 - (float)(int)ROUND(local_118)) < 0x80000001),
                (char)(int)ROUND(local_11c) + -1 +
                ((uint)(local_11c - (float)(int)ROUND(local_11c)) < 0x80000001));
  pcVar3 = (char *)((int)this + 0x7c);
  *(undefined2 *)pcVar3 = (undefined2)local_13c;
  *(undefined1 *)((int)this + 0x7e) = (undefined1)local_114;
  local_134 = (int)ROUND(local_128);
  local_120 = (int)ROUND(local_12c);
  local_130 = local_12c - (float)local_120;
  local_13c._2_2_ = (undefined2)((uint)(local_128 - (float)local_134) >> 0x10);
  local_13c._0_2_ =
       CONCAT11((char)local_134 + -1 + ((uint)(local_128 - (float)local_134) < 0x80000001),
                (char)local_120 + -1 + ((uint)local_130 < 0x80000001));
  pcVar4 = (char *)((int)this + 0x7f);
  *(undefined2 *)pcVar4 = (undefined2)local_13c;
  *(undefined1 *)((int)this + 0x81) = (undefined1)local_114;
  local_124 = local_114;
  FUN_00ad7740((int)local_d0);
  iVar12 = *(int *)((int)this + 0x60);
  uVar10 = (undefined3)((uint)iVar12 >> 8);
  if ((iVar12 == 0) || (iVar12 == 2)) {
    local_135 = BasementExcavation_ValidateRegion
                          (*(void **)((int)this + 0xc),
                           CONCAT31(uVar10,*(char *)((int)this + 0x5e) == '\0'),pcVar3,pcVar4,
                           *(float *)((int)this + 0x88),local_d0);
  }
  else {
    local_135 = BasementRemoval_ValidateRegion
                          (*(void **)((int)this + 0xc),
                           CONCAT31(uVar10,*(char *)((int)this + 0x5e) == '\0'),pcVar3,pcVar4,
                           local_d0);
  }
  if ((bool)local_135 == false) {
    if (((*pcVar3 == *pcVar4) && (*(char *)((int)this + 0x7d) == *(char *)((int)this + 0x80))) &&
       (*(char *)((int)this + 0x7e) == *(char *)((int)this + 0x81))) {
      FUN_00cd3810((int)this);
      FUN_00cd3850((int)this);
    }
    else {
      FUN_00cd4160(this,(float *)((int)this + 100),(float *)((int)this + 0x70),'\x01',
                   *(char *)((int)this + 0x5e) == '\0',(float *)((int)this + 0x70),0.0,'\0');
    }
  }
  else {
    if ((*(int *)((int)this + 0x60) == 0) || (*(int *)((int)this + 0x60) == 2)) {
      FUN_00cd0630(this,local_d0);
    }
    else {
      FUN_00cd3810((int)this);
    }
    FUN_00cd4160(this,(float *)((int)this + 100),(float *)((int)this + 0x70),'\x01',
                 *(char *)((int)this + 0x5e) == '\0',(float *)((int)this + 0x70),0.0,'\0');
    local_135 = *(char *)((int)this + 0x8c);
  }
  bVar6 = FUN_00ad6f10((int)local_d0);
  if (!bVar6) {
    *(undefined1 *)((int)this + 0x8e) = 0;
    goto LAB_00cd169b;
  }
  FUN_00ad7860(local_d0,0xcd);
  FUN_00ad7860(local_d0,0xeb);
  FUN_00ad7520(local_d0,local_50);
  if (local_50[0] == 0x4a) {
    FUN_00ad66d0(local_110,0x7b,*(int *)((int)this + 0xc),local_40,0);
    FUN_00ad8570(local_d0,local_110);
    FUN_00ad7860(local_d0,0x4a);
LAB_00cd15d8:
    FUN_00ad70d0((int)local_110);
  }
  else if (local_50[0] == 0x9c) {
    if (((*(int *)((int)this + 0x60) == 0) || (*(int *)((int)this + 0x60) == 2)) &&
       (FUN_00ad6dd0(local_50,&local_12c,*(int *)(*(int *)((int)this + 0xc) + 0x48),
                     *(int *)(*(int *)((int)this + 0xc) + 0x4c)), local_124 < 0)) {
      local_13c = 0xff00ffff;
      LotLocation_EncodeCellAndQuadrant(&local_12c,(char *)&local_13c);
      uVar8 = FUN_00cd0480((int)this);
      iVar12 = *(int *)((int)this + 0x6c);
      if ((char)uVar8 != '\0') {
        iVar12 = iVar12 + -1;
      }
      uVar8 = Lot_TestCellSupportRegionType
                        (*(void **)((int)this + 0xc),(char *)&local_13c,'\x01',(undefined1 *)0x0);
      if ((char)uVar8 != '\0') {
        FUN_00ad77d0((int)local_d0);
        FUN_00ad66d0(local_110,0x6b,*(int *)((int)this + 0xc),local_40,0);
        goto LAB_00cd15cc;
      }
      uVar9 = FUN_00acec00(*(void **)((int)this + 0xc),(char *)&local_13c);
      if ((char)uVar9 != '\0') {
        FUN_00ad77d0((int)local_d0);
        iVar13 = *(int *)((int)this + 0xc);
        if (iVar12 == local_124) {
          uVar8 = 0x73;
        }
        else if (local_124 < iVar12) {
          uVar8 = 0x74;
        }
        else {
          uVar8 = 0x75;
        }
        goto LAB_00cd15c2;
      }
    }
  }
  else if ((local_50[0] == 0x72) &&
          ((*(int *)((int)this + 0x60) == 0 || (*(int *)((int)this + 0x60) == 2)))) {
    FUN_00ad6dd0(local_50,&local_12c,*(int *)(*(int *)((int)this + 0xc) + 0x48),
                 *(int *)(*(int *)((int)this + 0xc) + 0x4c));
    if ((*(int *)((int)this + 0x60) == 0) || (*(int *)((int)this + 0x60) == 1)) {
      iVar12 = *(int *)((int)this + 0x6c) + -1;
    }
    else {
      iVar12 = *(int *)((int)this + 0x6c);
    }
    FUN_00ad77d0((int)local_d0);
    iVar13 = *(int *)((int)this + 0xc);
    if (iVar12 == local_124) {
      uVar8 = 0x73;
    }
    else if (local_124 < iVar12) {
      uVar8 = 0x74;
    }
    else {
      uVar8 = 0x75;
    }
LAB_00cd15c2:
    FUN_00ad66d0(local_110,uVar8,iVar13,local_40,0);
LAB_00cd15cc:
    FUN_00ad8570(local_d0,local_110);
    goto LAB_00cd15d8;
  }
  bVar6 = FUN_00ad6f10((int)local_d0);
  if (bVar6) {
    FUN_00ad7520(local_d0,local_110);
    FUN_00ad6dd0(local_110,&local_12c,*(int *)(*(int *)((int)this + 0xc) + 0x48),
                 *(int *)(*(int *)((int)this + 0xc) + 0x4c));
    if (local_124 != *(int *)((int)this + 0x6c)) {
      FUN_00ad7a70(local_d0);
      local_124 = *(int *)((int)this + 0x6c);
      FUN_00ad6870(local_110,*(int *)((int)this + 0xc),&local_12c);
      FUN_00ad8570(local_d0,local_110);
    }
    FUN_00ad70d0((int)local_110);
  }
  FUN_00cd3890(local_d0,1,*(char *)((int)this + 0x8e) == '\0');
  *(undefined1 *)((int)this + 0x8e) = 1;
  FUN_00ad70d0((int)local_50);
LAB_00cd169b:
  FUN_00a527c0(local_70);
  FUN_00a527c0(local_8c);
  FUN_00a527c0(local_a8);
  FUN_00a52780(local_c4);
  return local_135;
}

