/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 internal terrain-brush worker reached from WorldTerrainWrap_ApplyBrush at 0x10996630.
   Ghidra shows initialization of min/max brush bounds in the byref parameter block, angle
   normalization around 2*pi, direction from point differences, conversion from world coordinates
   using terrain scale, a bounds check and call 0x1006A380. It stores the affected rectangle back
   into the parameter block. The complete height-write and undo contract belongs to subordinate
   brush actions, not this worker alone. */

undefined * __thiscall CAW_TerrainApplyBrushAndComputeBounds(void *this,undefined **param_1)

{
  undefined **ppuVar1;
  undefined **ppuVar2;
  undefined4 uVar3;
  int iVar4;
  float fVar5;
  float fVar6;
  float10 fVar7;
  undefined *puVar8;
  undefined **local_24;
  undefined **local_20;
  undefined *local_1c;
  undefined *local_18;
  undefined *local_14;
  undefined *local_10;
  undefined4 local_8;
  undefined4 local_4;
  
  iVar4 = DAT_10c700c4;
  if (DAT_10c700c4 == 0) {
    *(undefined4 *)((int)this + 0x2c) = 0;
  }
  else {
    uVar3 = FUN_10409fe0(DAT_10c700c4);
    *(undefined4 *)((int)this + 0x2c) = uVar3;
    if (*(int *)(iVar4 + 0x54) == 0) {
      *(undefined4 *)((int)this + 0x30) = 0;
    }
    else {
      uVar3 = FUN_106b6a50(*(int *)(iVar4 + 0x54));
      *(undefined4 *)((int)this + 0x30) = uVar3;
    }
  }
  ppuVar1 = param_1;
  param_1[0xb] = (undefined *)0x7fffffff;
  param_1[10] = (undefined *)0x7fffffff;
  param_1[0xd] = (undefined *)0x80000000;
  param_1[0xc] = (undefined *)0x80000000;
  FUN_1048f530(&DAT_10c0e500,(int *)&param_1,(uint *)param_1);
  ppuVar2 = param_1;
  if (param_1 == &PTR_LOOP_10c0e504) {
    return &DAT_10c0e500;
  }
  puVar8 = (undefined *)0x0;
  local_20 = param_1 + 5;
  local_1c = DAT_10c0e4f0;
  local_24 = ppuVar1;
  local_18 = DAT_10c0e4f4;
  local_14 = DAT_10c0e4f8;
  local_10 = DAT_10c0e4fc;
  local_4 = 0;
  local_8 = 0;
  if (*(char *)(param_1 + 10) != '\0') {
    iVar4 = FUN_1092d320(&DAT_10c6e900,5);
    if (iVar4 == 0) {
      puVar8 = (undefined *)((float)ppuVar2[0x10] - (float)ppuVar2[0xb]);
      ppuVar2[0x10] = puVar8;
      if (0.0 <= (float)puVar8) goto LAB_1006abe4;
      puVar8 = (undefined *)((float)puVar8 + DAT_10ab37b0);
    }
    else {
      puVar8 = (undefined *)((float)ppuVar2[0xb] + (float)ppuVar2[0x10]);
      ppuVar2[0x10] = puVar8;
      if ((float)puVar8 < DAT_10ab37b0) goto LAB_1006abe4;
      puVar8 = (undefined *)((float)puVar8 - DAT_10ab37b0);
    }
  }
  ppuVar2[0x10] = puVar8;
LAB_1006abe4:
  if (((float)ppuVar1[3] != (float)ppuVar1[1]) || ((float)ppuVar1[4] != (float)ppuVar1[2])) {
    fVar7 = (float10)fpatan((float10)(float)ppuVar1[4] - (float10)(float)ppuVar1[2],
                            (float10)(float)ppuVar1[3] - (float10)(float)ppuVar1[1]);
    ppuVar2[0x11] = (undefined *)(float)(fVar7 + (float10)_DAT_10ab37b4);
  }
  fVar5 = (float)(int)((float)local_24[3] * *(float *)((int)this + 0x10));
  fVar6 = (float)(int)((float)local_24[4] * *(float *)((int)this + 0x10));
  if (((uint)fVar5 < (uint)*(float *)((int)this + 0x14)) &&
     ((uint)fVar6 < (uint)*(float *)((int)this + 0x14))) {
    FUN_1006a380(this,(int)fVar5,fVar6,(int *)&local_24);
    if ((local_14 != local_1c && -1 < (int)local_14 - (int)local_1c) &&
       (local_10 != local_18 && -1 < (int)local_10 - (int)local_18)) {
      local_1c = local_1c + -1;
      local_18 = local_18 + -1;
      local_14 = local_14 + 1;
      local_10 = local_10 + 1;
    }
    ppuVar1[0xb] = local_18;
    ppuVar1[10] = local_1c;
    ppuVar1[0xc] = local_14;
    ppuVar1[0xd] = local_10;
    return (undefined *)CONCAT31((int3)((uint)local_1c >> 8),1);
  }
  return (undefined *)((uint)fVar5 & 0xffffff00);
}

