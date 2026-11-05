/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX map. Search UInt32 candidates
   starting1, query reverse ordinal map+20, increment until first missing. Gaps are reusable; this
   is not maximum-existing+1. Native code has no narrow UInt16 exhaustion guard at this allocator.
    */

uint __fastcall WallPatternMap_FindFreeOrdinal(int param_1)

{
  int iVar1;
  uint uVar2;
  uint **ppuVar3;
  uint uVar4;
  uint *local_18;
  int local_14;
  uint *local_10;
  int local_c;
  
  iVar1 = *(int *)(param_1 + 0x24);
  uVar2 = *(uint *)(param_1 + 0x28);
  uVar4 = 1;
  do {
    for (local_18 = *(uint **)(iVar1 + (uVar4 % uVar2) * 4); local_18 != (uint *)0x0;
        local_18 = (uint *)local_18[6]) {
      if (uVar4 == *local_18) {
        local_14 = iVar1 + (uVar4 % uVar2) * 4;
        ppuVar3 = &local_18;
        goto LAB_00b49d0d;
      }
    }
    local_c = iVar1 + uVar2 * 4;
    local_10 = *(uint **)(iVar1 + uVar2 * 4);
    ppuVar3 = &local_10;
LAB_00b49d0d:
    if (*ppuVar3 == *(uint **)(iVar1 + uVar2 * 4)) {
      return uVar4;
    }
    uVar4 = uVar4 + 1;
  } while( true );
}

