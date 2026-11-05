/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Flat grid production iterates level, then X, then Z, with flat index ((level * width) + x) *
   depth + z. Copies four words per cell from uniform-tag or dense 4-by-4 storage. Body gaps are
   excluded. */

void __thiscall FourWordGrid_ExportLevelXZCells(void *this,int *param_1)

{
  ushort uVar1;
  uint uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  int iVar6;
  int iVar7;
  uint local_c;
  int local_8;
  
  uVar2 = *(int *)((int)this + 8) * *(int *)((int)this + 4) * *(int *)((int)this + 0xc);
  if (uVar2 - (param_1[1] - *param_1 >> 4) != 0) {
    FUN_00ac08b0(param_1,uVar2);
  }
  iVar6 = 0;
  local_8 = 0;
  if (0 < *(int *)((int)this + 0xc)) {
    do {
      local_c = 0;
      if (0 < *(int *)((int)this + 4)) {
        iVar3 = *(int *)((int)this + 8);
        do {
          uVar2 = 0;
          if (0 < iVar3) {
            iVar7 = iVar6 << 4;
            do {
              iVar3 = (*(int *)((int)this + 0x20) * local_8 + ((int)local_c >> 2)) *
                      *(int *)((int)this + 0x24) + ((int)uVar2 >> 2);
              uVar1 = *(ushort *)(*(int *)((int)this + 0x48) + iVar3 * 2);
              if ((uVar1 & 0x8000) == 0) {
                puVar4 = (undefined4 *)
                         (((uVar2 & 3) + ((local_c & 3) + (uint)uVar1 * 4) * 4) * 0x10 +
                         *(int *)((int)this + 0x28));
              }
              else {
                puVar4 = (undefined4 *)(iVar3 * 0x10 + *(int *)((int)this + 0x38));
              }
              puVar5 = (undefined4 *)(*param_1 + iVar7);
              *puVar5 = *puVar4;
              puVar5[1] = puVar4[1];
              puVar5[2] = puVar4[2];
              puVar5[3] = puVar4[3];
              iVar3 = *(int *)((int)this + 8);
              uVar2 = uVar2 + 1;
              iVar6 = iVar6 + 1;
              iVar7 = iVar7 + 0x10;
            } while ((int)uVar2 < iVar3);
          }
          local_c = local_c + 1;
        } while ((int)local_c < *(int *)((int)this + 4));
      }
      local_8 = local_8 + 1;
    } while (local_8 < *(int *)((int)this + 0xc));
  }
  return;
}

