/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX grid, no stack cleanup. Examine
   all16 bytes of detailed blocks; uniform blocks become ref8000 plus per-grid-block uniform byte.
   Compact surviving detailed storage, rewrite relocated refs and clear dirty+40. Current rebuild of
   partially occupied boundary blocks needs to account for native padded cells; valid visible values
   alone do not prove byte identity. */

void __fastcall ByteBlockGrid_CompressUniformBlocks(int param_1)

{
  ushort uVar1;
  int iVar2;
  void *pvVar3;
  int iVar4;
  uint uVar5;
  undefined2 *puVar6;
  undefined2 *puVar7;
  int iVar8;
  char *pcVar9;
  uint uVar10;
  byte local_2d;
  undefined1 *local_2c;
  char *local_28;
  uint local_24;
  undefined2 *local_20;
  undefined2 *local_1c;
  undefined2 *local_18;
  char *local_14;
  undefined1 *local_10 [4];
  
  if (*(int *)(param_1 + 0x20) != *(int *)(param_1 + 0x24)) {
    pcVar9 = (char *)((uint)(*(int *)(param_1 + 0x24) - *(int *)(param_1 + 0x20)) >> 4);
    local_20 = (undefined2 *)0x0;
    local_1c = (undefined2 *)0x0;
    local_18 = (undefined2 *)0x0;
    local_14 = "Lot/BlockCompressed2DArray/Compress/freeBlocks";
    local_28 = "Lot/BlockCompressed2DArray/Compress/canBeCompressed";
    FUN_00c296b0(local_10,(int)pcVar9,&local_28);
    local_28 = (char *)0x0;
    if (pcVar9 != (char *)0x0) {
      iVar8 = 0x10;
      local_2c = local_10[0];
      puVar6 = (undefined2 *)0x0;
      do {
        iVar4 = iVar8 + -0xf;
        if (iVar4 < iVar8) {
          do {
            if (*(char *)(*(int *)(param_1 + 0x20) + -0x10 + iVar8) !=
                *(char *)(*(int *)(param_1 + 0x20) + iVar4)) {
              *local_2c = 0;
              puVar7 = puVar6;
              goto LAB_00aee48e;
            }
            iVar4 = iVar4 + 1;
          } while (iVar4 < iVar8);
        }
        *local_2c = 1;
        local_2c[1] = *(undefined1 *)(*(int *)(param_1 + 0x20) + -0x10 + iVar8);
        local_24 = (uint)local_28 & 0xffff;
        if (puVar6 < local_18) {
          local_1c = puVar6 + 1;
          puVar7 = local_1c;
          if (puVar6 != (undefined2 *)0x0) {
            *puVar6 = local_28._0_2_;
          }
        }
        else {
          FUN_005d2730(&local_20,puVar6,(undefined2 *)&local_24);
          puVar7 = local_1c;
        }
LAB_00aee48e:
        local_2c = local_2c + 2;
        local_28 = local_28 + 1;
        iVar8 = iVar8 + 0x10;
        puVar6 = puVar7;
      } while (local_28 < pcVar9);
      if (local_20 != puVar7) {
        iVar8 = 0;
        uVar10 = (int)pcVar9 - ((int)puVar7 - (int)local_20 >> 1);
        iVar4 = 0;
        local_2c = (undefined1 *)0x0;
        local_24 = uVar10;
        if (0 < *(int *)(param_1 + 0xc)) {
          do {
            local_28 = (char *)0x0;
            if (0 < *(int *)(param_1 + 8)) {
              do {
                uVar1 = *(ushort *)(*(int *)(param_1 + 0x30) + iVar4 * 2);
                uVar5 = (uint)uVar1;
                puVar6 = (undefined2 *)(*(int *)(param_1 + 0x30) + iVar4 * 2);
                if (-1 < (short)uVar1) {
                  if (local_10[0][uVar5 * 2] == '\0') {
                    if (uVar10 <= uVar5) {
                      *puVar6 = local_20[iVar8];
                      iVar2 = *(int *)(param_1 + 0x20);
                      pvVar3 = (void *)(iVar2 + uVar5 * 0x10);
                      iVar8 = iVar8 + 1;
                      memmove((void *)((uint)*(ushort *)(*(int *)(param_1 + 0x30) + iVar4 * 2) *
                                       0x10 + iVar2),pvVar3,
                              (iVar2 - (int)pvVar3) + 0x10 + uVar5 * 0x10);
                      uVar10 = local_24;
                    }
                  }
                  else {
                    *puVar6 = 0x8000;
                    *(undefined1 *)(iVar4 + *(int *)(param_1 + 0x10)) = local_10[0][uVar5 * 2 + 1];
                  }
                }
                local_28 = local_28 + 1;
                iVar4 = iVar4 + 1;
              } while ((int)local_28 < *(int *)(param_1 + 8));
            }
            local_2c = local_2c + 1;
          } while ((int)local_2c < *(int *)(param_1 + 0xc));
        }
        pvVar3 = *(void **)(param_1 + 0x24);
        iVar8 = *(int *)(param_1 + 0x20);
        uVar10 = uVar10 * 0x10;
        if ((uint)((int)pvVar3 - iVar8) < uVar10) {
          local_2d = 0;
          FUN_00b6f4c0((void *)(param_1 + 0x20),pvVar3,(void *)((iVar8 - (int)pvVar3) + uVar10),
                       &local_2d);
        }
        else {
          memmove((void *)(iVar8 + uVar10),pvVar3,0);
          *(int *)(param_1 + 0x24) =
               (int)(iVar8 + uVar10) + (*(int *)(param_1 + 0x24) - (int)pvVar3);
        }
      }
    }
    if (local_10[0] != (undefined1 *)0x0) {
      Memory_FreeIfNonNull(local_10[0]);
    }
    if (local_20 != (undefined2 *)0x0) {
      Memory_FreeIfNonNull(local_20);
    }
  }
  *(undefined1 *)(param_1 + 0x40) = 0;
  return;
}

