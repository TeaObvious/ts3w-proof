/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete body: chooses alternate bucket/chain table via owner+88 when nonnull, otherwise
   inline table owner+6C/+70. Traverse node links+18 and value pointer+10; AL0 on first nonnull
   value with first-dword bit0 set, otherwise AL1 at sentinel. Only AL defined; upper24 bits
   unspecified. Entries with bit0 clear may remain, so this is not container emptiness. Broader flag
   semantics/mutation invariants not established here. */

uint __fastcall SACS_GraphEntriesHaveNoBit0_7F3F90(int param_1)

{
  uint *puVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint *puVar5;
  
  iVar2 = *(int *)(param_1 + 0x88);
  if (iVar2 == 0) {
    puVar5 = *(uint **)(param_1 + 0x6c);
    uVar4 = *puVar5;
    if (uVar4 == 0) {
      puVar5 = puVar5 + 1;
      uVar4 = *puVar5;
      while (uVar4 == 0) {
        puVar5 = puVar5 + 1;
        uVar4 = *puVar5;
      }
      uVar4 = *puVar5;
    }
    uVar3 = *(uint *)(*(int *)(param_1 + 0x6c) + *(int *)(param_1 + 0x70) * 4);
    if (uVar4 != uVar3) {
      while ((*(uint **)(uVar4 + 0x10) == (uint *)0x0 || ((**(uint **)(uVar4 + 0x10) & 1) == 0))) {
        uVar4 = *(uint *)(uVar4 + 0x18);
        while (uVar4 == 0) {
          puVar1 = puVar5 + 1;
          puVar5 = puVar5 + 1;
          uVar4 = *puVar1;
        }
        if (uVar4 == uVar3) {
          return CONCAT31((int3)(uVar4 >> 8),1);
        }
      }
LAB_007f4048:
      return uVar4 & 0xffffff00;
    }
  }
  else {
    puVar5 = *(uint **)(iVar2 + 4);
    uVar4 = *puVar5;
    if (uVar4 == 0) {
      puVar5 = puVar5 + 1;
      uVar4 = *puVar5;
      while (uVar4 == 0) {
        puVar5 = puVar5 + 1;
        uVar4 = *puVar5;
      }
      uVar4 = *puVar5;
    }
    while (uVar4 != *(uint *)(*(int *)(iVar2 + 4) + *(int *)(iVar2 + 8) * 4)) {
      if ((*(uint **)(uVar4 + 0x10) != (uint *)0x0) && ((**(uint **)(uVar4 + 0x10) & 1) != 0))
      goto LAB_007f4048;
      uVar4 = *(uint *)(uVar4 + 0x18);
      while (uVar4 == 0) {
        puVar1 = puVar5 + 1;
        puVar5 = puVar5 + 1;
        uVar4 = *puVar1;
      }
    }
  }
  return CONCAT31((int3)(uVar4 >> 8),1);
}

