/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 static: Eight cdecl stack words, plain RET; three float outputs. C37B70 supplies
   scalars; packed direction/flags, stored/global tuning, centered0.5 branches and diagonal factor
   produce U values. No per-pixel raster loop or alpha/luma classifier here; current CPU mask
   density/threshold policy is not original parity. Descriptive analyst role, not a recovered
   original symbol. */

void __cdecl
WallCutout_ComputePieceUCoordinates
          (char *param_1,undefined4 *param_2,byte param_3,byte param_4,char param_5,float *param_6,
          float *param_7,float *param_8)

{
  bool bVar1;
  uint uVar2;
  byte bVar3;
  float fVar4;
  float fVar5;
  float local_8;
  float local_4;
  
  if ((param_1[3] == *param_1) || (bVar1 = true, param_1[4] == param_1[1])) {
    bVar1 = false;
  }
  bVar3 = param_4 & 1;
  FUN_00c37b70(param_2,&local_8,&local_4);
  if ((_DAT_011ed9b8 & 1) == 0) {
    DAT_011ed9b4 = 1.0 - DAT_01185228;
    _DAT_011ed9b8 = _DAT_011ed9b8 | 1;
  }
  local_4 = DAT_011ed9b4 * local_4;
  local_8 = DAT_011ed9b4 * local_8;
  if (!bVar1) {
    *param_7 = 0.5;
    if (bVar3 == 0) {
      *param_6 = 0.5 - local_8;
      *param_8 = local_4 + 0.5;
      return;
    }
    *param_6 = local_8 + 0.5;
    *param_8 = 0.5 - local_4;
    return;
  }
  uVar2 = FUN_00afc790((uint)param_3);
  fVar4 = DAT_011ed9b4;
  fVar5 = DAT_01185228;
  if ((char)uVar2 == '\0') {
    if (param_5 == '\x01') {
      *param_7 = 0.5;
      if (bVar3 == 0) {
        *param_6 = 0.5 - local_8;
        *param_8 = local_4 + 0.5;
        return;
      }
      *param_6 = local_8 + 0.5;
      *param_8 = 0.5 - local_4;
      return;
    }
    if ((param_4 & 0xfe) == 0) {
      if (bVar3 == 0) {
        *param_8 = DAT_011ed9b4;
        fVar4 = fVar4 - local_4;
        *param_7 = fVar4;
        *param_6 = fVar4 - local_8;
        return;
      }
      *param_6 = DAT_011ed9b4;
      fVar4 = fVar4 - local_8;
      *param_7 = fVar4;
      *param_8 = fVar4 - local_4;
      return;
    }
    if (bVar3 == 0) {
      *param_6 = DAT_01185228;
      fVar5 = fVar5 + local_8;
      *param_7 = fVar5;
      *param_8 = fVar5 + local_4;
      return;
    }
    *param_8 = DAT_01185228;
    fVar5 = fVar5 + local_4;
    *param_7 = fVar5;
    *param_6 = fVar5 + local_8;
    return;
  }
  if ((_DAT_011ed9b8 & 2) == 0) {
    _DAT_011ed9b8 = _DAT_011ed9b8 | 2;
    DAT_011ed9b0 = 0.70710677;
  }
  local_8 = DAT_011ed9b0 * local_8;
  local_4 = DAT_011ed9b0 * local_4;
  *param_7 = 0.5;
  if (bVar3 == 0) {
    *param_6 = 0.5 - local_8;
    *param_8 = local_4 + 0.5;
    return;
  }
  *param_6 = local_8 + 0.5;
  *param_8 = 0.5 - local_4;
  return;
}

