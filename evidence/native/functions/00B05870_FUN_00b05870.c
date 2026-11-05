/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Three cdecl words object, catalog, aligned output. CatalogE8 unsigned zero becomes1, row count from D4/D8 stride40 divides by that value. CategoryD0mask10000 selects Z-.5 else+.5. Per-level4or5 selects X106B798. Zero-row branch can also select anchor via A4mask10000 and category or AFFD30 type2. Stores aligned lanes X,0,Z,X; fourth lane is not evidence of a semantic homogeneous W before caller construction.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00B05870_FUN_00b05870.asm
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __cdecl FUN_00b05870(void *param_1,int param_2,uint *param_3)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  uint *puVar4;
  uint uVar5;
  uint local_28;
  uint local_24 [8];
  
  local_28 = 1;
  local_24[0] = *(uint *)(param_2 + 0xe8);
  puVar4 = &local_28;
  if (*(uint *)(param_2 + 0xe8) != 0) {
    puVar4 = local_24;
  }
  uVar1 = (uint)((*(int *)(param_2 + 0xd8) - *(int *)(param_2 + 0xd4)) / 0x28) / *puVar4;
  uVar3 = *(uint *)(param_2 + 0xd0) & 0x10000;
  if (uVar3 == 0) {
    local_28 = _DAT_00f9b5b4;
  }
  else {
    local_28 = DAT_00f9b600;
  }
  uVar5 = 0;
  local_24[0] = 0;
  if (uVar1 == 0) {
    if ((*(uint *)(param_2 + 0xa4) & 0x10000) == 0) goto LAB_00b0592e;
    if (uVar3 != 0x10000) {
      iVar2 = FUN_00affd30(param_1);
      if (iVar2 != 2) {
        uVar5 = local_24[0];
        goto LAB_00b0592e;
      }
    }
  }
  else if ((uVar1 & 0xfffffffe) != 4) goto LAB_00b0592e;
  uVar5 = DAT_0106b798;
LAB_00b0592e:
  *param_3 = uVar5;
  param_3[1] = 0;
  param_3[2] = local_28;
  param_3[3] = uVar5;
  return;
}

