/* Genuine /TS3W.exe C export; current function identifiers verified against the retained f915 names.
   Earlier body/ABI/variable qualifications remain; no runtime or whole-entry acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst: PC 1.67 map/lot detail contract. Writes unbiased distanceSquared and returns x87 ST0
   sorting score. Global011853f8=0 uses horizontal squared distance to lot AABB center, optionally
   transformed by moving-lot matrix; Y multiplier iszero. Nonzero transforms camera into lot
   coordinates and squares max of0,-localX,-localZ,localX-width,localZ-depth: rectangle Chebyshev
   distance squared, not Euclidean nearest-edge distance. Width/depth signed Int32 use CVTSI2SS
   at00c62900/00c628aa; final FLD at00c62afb returns the binary32 score in x87 ST0. Requested lot+c1
   subtracts manager+e0=8 construction bias from sort score only, not from radius test
   distanceSquared. Signed priorities are sorted separately, so this bias cannot outrank a higher
   priority. */

float __thiscall
WorldManager_ComputeLotDetailScore(void *this,float *viewPosition,void *lot,float *distanceSquared)

{
  void *this_00;
  uchar uVar1;
  undefined1 (*pauVar2) [16];
  float *pfVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float local_c8;
  float local_c4;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float local_60;
  float fStack_5c;
  float fStack_58;
  uint local_50 [19];
  
  this_00 = *(void **)((int)lot + 0x364);
  if (DAT_011853f8 == '\0') {
    local_a0 = 1.0;
    fStack_9c = 0.0;
    fStack_98 = 1.0;
    fStack_94 = 1.0;
    fVar5 = (*(float *)((int)lot + 0x144) + *(float *)((int)lot + 0x134)) * 0.5;
    fVar6 = (*(float *)((int)lot + 0x148) + *(float *)((int)lot + 0x138)) * 0.5;
    fStack_bc = 0.0;
    fVar4 = 0.0;
    fStack_ac = 0.0;
    local_c0 = fVar5;
    fStack_b8 = fVar6;
    fStack_b4 = fVar5;
    local_b0 = fVar5;
    fStack_a8 = fVar6;
    fStack_a4 = fVar5;
    if ((this_00 != (void *)0x0) && (*(int *)((int)this_00 + 0x2a0) != 0)) {
      FUN_00adff20(this_00,&local_90);
      fVar5 = local_b0 * local_90 + local_60 + fStack_ac * local_80 + fStack_a8 * local_70;
      fVar4 = local_b0 * fStack_8c + fStack_5c + fStack_ac * fStack_7c + fStack_a8 * fStack_6c;
      fVar6 = local_b0 * fStack_88 + fStack_58 + fStack_ac * fStack_78 + fStack_a8 * fStack_68;
    }
    local_a0 = (fVar5 - *viewPosition) * local_a0;
    fStack_9c = (fVar4 - viewPosition[1]) * fStack_9c;
    fStack_98 = (fVar6 - viewPosition[2]) * fStack_98;
    local_a0 = fStack_98 * fStack_98 + fStack_9c * fStack_9c + local_a0 * local_a0;
    *distanceSquared = local_a0;
    fStack_9c = local_a0;
    fStack_98 = local_a0;
    fStack_94 = local_a0;
  }
  else {
    if (this_00 == (void *)0x0) {
      pauVar2 = (undefined1 (*) [16])Lot_BuildWorldToLocalPoseMatrix(lot,local_50);
    }
    else {
      pauVar2 = FUN_00ae0aa0(this_00,(undefined1 (*) [16])&local_90);
    }
    fVar4 = *viewPosition;
    fVar5 = viewPosition[1];
    fVar6 = viewPosition[2];
    local_c0 = fVar5 * *(float *)pauVar2[1] + fVar4 * *(float *)*pauVar2 +
               fVar6 * *(float *)pauVar2[2] + *(float *)pauVar2[3] * 1.0;
    fStack_bc = fVar5 * *(float *)(pauVar2[1] + 4) + fVar4 * *(float *)(*pauVar2 + 4) +
                fVar6 * *(float *)(pauVar2[2] + 4) + *(float *)(pauVar2[3] + 4) * 1.0;
    fStack_b8 = fVar5 * *(float *)(pauVar2[1] + 8) + fVar4 * *(float *)(*pauVar2 + 8) +
                fVar6 * *(float *)(pauVar2[2] + 8) + *(float *)(pauVar2[3] + 8) * 1.0;
    fStack_b4 = fVar5 * *(float *)(pauVar2[1] + 0xc) + fVar4 * *(float *)(*pauVar2 + 0xc) +
                fVar6 * *(float *)(pauVar2[2] + 0xc) + *(float *)(pauVar2[3] + 0xc) * 1.0;
    fVar4 = 0.0;
    local_c8 = 0.0;
    if (local_c0 < 0.0) {
      fVar4 = -0.0 - local_c0;
      local_c8 = fVar4;
    }
    if (fStack_b8 < 0.0) {
      local_c4 = -0.0 - fStack_b8;
      pfVar3 = &local_c4;
      if (-0.0 - fStack_b8 <= fVar4) {
        pfVar3 = &local_c8;
      }
      fVar4 = *pfVar3;
      local_c8 = fVar4;
    }
    if ((float)*(int *)((int)lot + 0x174) < local_c0) {
      local_c4 = local_c0 - (float)*(int *)((int)lot + 0x174);
      pfVar3 = &local_c4;
      if (local_c4 <= fVar4) {
        pfVar3 = &local_c8;
      }
      fVar4 = *pfVar3;
      local_c8 = fVar4;
    }
    if ((float)*(int *)((int)lot + 0x178) < fStack_b8) {
      local_c4 = fStack_b8 - (float)*(int *)((int)lot + 0x178);
      pfVar3 = &local_c4;
      if (local_c4 <= fVar4) {
        pfVar3 = &local_c8;
      }
      fVar4 = *pfVar3;
    }
    *distanceSquared = fVar4 * fVar4;
    local_b0 = local_c0;
    fStack_ac = fStack_bc;
    fStack_a8 = fStack_b8;
    fStack_a4 = fStack_b4;
  }
  local_c8 = *distanceSquared;
  uVar1 = Lot_GetDetailRequested(lot);
  if (uVar1 != '\0') {
    local_c8 = local_c8 - *(float *)((int)this + 0xe0);
  }
  return local_c8;
}

