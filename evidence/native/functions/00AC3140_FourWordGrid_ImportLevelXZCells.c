/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x00ac318a) */
/* Flat grid ingestion iterates level, then X, then Z, using 16 bytes per cell (decimal). Leading
   cells of each 4-by-4 block seed uniform storage; other cells use the existing setter. This is not
   a second wire order. */

void __thiscall FourWordGrid_ImportLevelXZCells(void *this,int *param_1)

{
  int *piVar1;
  void *allocation;
  undefined4 *puVar2;
  undefined4 *puVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  int local_20;
  int local_1c;
  uint local_18;
  int local_14;
  undefined4 *local_10 [2];
  undefined4 local_8;
  
  uVar6 = *(int *)((int)this + 0x24) * *(int *)((int)this + 0x20) * *(int *)((int)this + 0xc);
  local_20 = 0;
  if (*(int *)((int)this + 0x4c) - *(int *)((int)this + 0x48) >> 1 != uVar6) {
    UInt16Vector_ResizeZeroed((void *)((int)this + 0x48),uVar6);
    FUN_00ac08b0((void *)((int)this + 0x38),uVar6);
  }
  piVar1 = (int *)((int)this + 0x28);
  *(undefined4 *)((int)this + 0x2c) = *(undefined4 *)((int)this + 0x28);
  FUN_006528b0(local_10,*(int *)((int)this + 0x2c) - *piVar1 >> 4,(undefined4 *)((int)this + 0x34));
  FUN_006c8480(&local_14,(undefined4 *)*piVar1,*(undefined4 **)((int)this + 0x2c),local_10[0]);
  allocation = (void *)*piVar1;
  *piVar1 = (int)local_10[0];
  *(int *)((int)this + 0x2c) = local_14;
  *(undefined4 *)((int)this + 0x30) = local_8;
  if (allocation != (void *)0x0) {
    Memory_FreeIfNonNull(allocation);
  }
  local_14 = 0;
  local_1c = 0;
  if (0 < *(int *)((int)this + 0xc)) {
    do {
      local_18 = 0;
      if (0 < *(int *)((int)this + 4)) {
        do {
          uVar6 = 0;
          if (0 < *(int *)((int)this + 8)) {
            iVar4 = local_20 << 4;
            iVar5 = local_1c << 4;
            do {
              puVar3 = (undefined4 *)(*param_1 + iVar5);
              if (((uVar6 | local_18) & 3) == 0) {
                *(undefined2 *)(*(int *)((int)this + 0x48) + local_20 * 2) = 0x8000;
                puVar2 = (undefined4 *)(*(int *)((int)this + 0x38) + iVar4);
                *puVar2 = *puVar3;
                puVar2[1] = puVar3[1];
                puVar2[2] = puVar3[2];
                puVar2[3] = puVar3[3];
                iVar4 = iVar4 + 0x10;
                local_20 = local_20 + 1;
              }
              else {
                FUN_00ac2ed0(this,puVar3,local_18,uVar6,local_14);
              }
              local_1c = local_1c + 1;
              uVar6 = uVar6 + 1;
              iVar5 = iVar5 + 0x10;
            } while ((int)uVar6 < *(int *)((int)this + 8));
          }
          local_18 = local_18 + 1;
        } while ((int)local_18 < *(int *)((int)this + 4));
      }
      local_14 = local_14 + 1;
    } while (local_14 < *(int *)((int)this + 0xc));
  }
  return;
}

