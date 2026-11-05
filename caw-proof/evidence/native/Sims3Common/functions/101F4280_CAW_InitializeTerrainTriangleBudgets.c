/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Default data flag 0x10C0F9B8 is one. Fine global budget is
   max(raw width times height divided by 10,40000), per-chunk ceiling35000; coarse global budget
   max(raw count divided by42,10000), per-chunk ceiling15000. Calls0x1025E850 for each threshold.
   Bounded direct cross-reference search found only the two reads of that flag in this routine.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

void __fastcall CAW_InitializeTerrainTriangleBudgets(int param_1)

{
  int iVar1;
  uint *puVar2;
  uint uVar3;
  float10 fVar4;
  uint local_c;
  uint local_8;
  uint local_4;
  
  iVar1 = *(int *)(*(int *)(param_1 + 8) + 8);
  uVar3 = *(int *)(iVar1 + 0x18) * *(int *)(iVar1 + 0x14);
  local_4 = uVar3 / 0x2a;
  if (DAT_10c0f9b8 != '\0') {
    local_c = 10000;
    puVar2 = &local_c;
    if (9999 < local_4) {
      puVar2 = &local_4;
    }
    local_4 = *puVar2;
  }
  *(undefined4 *)(param_1 + 0x58) = 15000;
  *(uint *)(param_1 + 0x5c) = local_4;
  if (*(void **)(param_1 + 0x68) != (void *)0x0) {
    fVar4 = CAW_SelectTerrainTriangleBudgetThreshold
                      (*(void **)(param_1 + 0x68),local_4,0x100,*(uint *)(param_1 + 0x58));
    *(float *)(param_1 + 0x60) = (float)fVar4;
  }
  uVar3 = uVar3 / 10;
  local_8 = uVar3;
  if (DAT_10c0f9b8 != '\0') {
    local_c = 40000;
    puVar2 = &local_c;
    if (39999 < uVar3) {
      puVar2 = &local_8;
    }
    uVar3 = *puVar2;
  }
  *(undefined4 *)(param_1 + 0x4c) = 35000;
  *(uint *)(param_1 + 0x50) = uVar3;
  if (*(void **)(param_1 + 0x68) != (void *)0x0) {
    fVar4 = CAW_SelectTerrainTriangleBudgetThreshold
                      (*(void **)(param_1 + 0x68),*(uint *)(param_1 + 0x50),0x100,
                       *(uint *)(param_1 + 0x4c));
    *(float *)(param_1 + 0x54) = (float)fVar4;
  }
  return;
}

