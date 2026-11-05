/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: ECX solver input; no consumed stack argument or incoming EDX before overwrite,
   RET0; stored fastcall analysis is not a recovered C++ signature. Resets three wrappers, replaces
   retained room resources, loops nonnull physical tiles under unsigned width/height bounds,
   copies14 descriptor bytes, calls6A4FA0 consuming AL then6AA650 with density4 and allocator
   solver+200. Remaining calls update room/render resources; no direct allocator offset/limit/stride
   initialization. Three unowned bytes between two owned body ranges are excluded. */

void __fastcall LightingSolver_RefreshRoomAtlasTiles(int *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  int *piVar3;
  void *pvVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  void *this;
  int ****ppppiVar7;
  int iVar8;
  uint uVar9;
  int *piVar10;
  uint local_28;
  undefined1 local_1c [4];
  int ***local_18;
  int ***local_14;
  undefined4 *local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  piVar10 = param_1 + 0x5f;
  iVar8 = 3;
  do {
    FloorAtlas_ResetWrappedSlotCounters((int)piVar10);
    piVar10 = piVar10 + 0x10;
    iVar8 = iVar8 + -1;
  } while (iVar8 != 0);
  piVar10 = (int *)param_1[0x8d];
  iVar8 = piVar10[param_1[0x8e]];
  iVar2 = *piVar10;
  if (iVar2 == 0) {
    piVar10 = piVar10 + 1;
    iVar2 = *piVar10;
    while (iVar2 == 0) {
      piVar10 = piVar10 + 1;
      iVar2 = *piVar10;
    }
    iVar2 = *piVar10;
  }
  while (iVar2 != iVar8) {
    piVar3 = *(int **)(iVar2 + 0x10);
    if (piVar3 != (int *)0x0) {
      FUN_006a1940(piVar3);
      Memory_FreeIfNonNull(piVar3);
    }
    *(undefined4 *)(iVar2 + 0x10) = 0;
    iVar2 = *(int *)(iVar2 + 0x80);
    while (iVar2 == 0) {
      piVar3 = piVar10 + 1;
      piVar10 = piVar10 + 1;
      iVar2 = *piVar3;
    }
  }
  local_18 = (int ***)&local_18;
  param_1[0xf5] = 0;
  param_1[0xf4] = -1;
  param_1[0xf3] = 0;
  local_4 = "Lighting/LightingSolver/roomSet";
  local_10 = (undefined4 *)0x0;
  local_c = 0;
  local_8 = 0;
  local_28 = 0;
  local_14 = local_18;
  if (param_1[0x9a] != 0) {
    do {
      uVar9 = 0;
      if (param_1[0x99] != 0) {
        do {
          iVar8 = param_1[0x99] * local_28 + uVar9;
          pvVar4 = *(void **)(param_1[0x98] + iVar8 * 4);
          if (pvVar4 != (void *)0x0) {
            puVar1 = (undefined4 *)(param_1[1] + iVar8 * 0xe);
            *(undefined4 *)((int)pvVar4 + 0x48) = *puVar1;
            *(undefined4 *)((int)pvVar4 + 0x4c) = puVar1[1];
            *(undefined4 *)((int)pvVar4 + 0x50) = puVar1[2];
            *(undefined2 *)((int)pvVar4 + 0x54) = *(undefined2 *)(puVar1 + 3);
            FUN_006aa960(pvVar4,local_1c);
            uVar6 = LightingSolver_HasAdjacentSplitBase(param_1,uVar9,local_28);
            LightingTile_AssignPartitionAtlasOrigins(pvVar4,param_1 + 0x80,(char)uVar6,4);
            ppppiVar7 = (int ****)local_14;
            if ((int ****)local_14 != &local_18) {
              do {
                this = (void *)FUN_006a7c40(param_1,(uint)ppppiVar7[4]);
                FUN_006a24f0(this,pvVar4);
                ppppiVar7 = (int ****)FUN_004e1030((int *)ppppiVar7);
              } while (ppppiVar7 != &local_18);
            }
          }
          uVar9 = uVar9 + 1;
        } while (uVar9 < (uint)param_1[0x99]);
      }
      local_28 = local_28 + 1;
    } while (local_28 < (uint)param_1[0x9a]);
  }
  pvVar4 = *(void **)(*param_1 + 0xd4);
  iVar8 = *(int *)(param_1[0x8d] + param_1[0x8e] * 4);
  piVar10 = (int *)param_1[0x8d];
  iVar2 = *piVar10;
  if (iVar2 == 0) {
    piVar10 = piVar10 + 1;
    iVar2 = *piVar10;
    while (iVar2 == 0) {
      piVar10 = piVar10 + 1;
      iVar2 = *piVar10;
    }
    iVar2 = *piVar10;
  }
  while (iVar2 != iVar8) {
    piVar3 = *(int **)(iVar2 + 0x10);
    if (piVar3 != (int *)0x0) {
      FUN_006a2890(piVar3);
      FUN_006c5910(pvVar4,param_1[0x24],param_1[0x25],param_1[0x22],piVar3[3],param_1);
    }
    iVar2 = *(int *)(iVar2 + 0x80);
    while (iVar2 == 0) {
      piVar3 = piVar10 + 1;
      piVar10 = piVar10 + 1;
      iVar2 = *piVar3;
    }
  }
  FUN_006a59a0((int)param_1);
  FUN_006c58c0(pvVar4,param_1[0x24],param_1[0x25],param_1[0x22]);
  FUN_006ae0c0((void *)*param_1);
  param_1[0x9f] = param_1[0x9f] + 1;
  *(undefined1 *)(param_1 + 0xa0) = 1;
  iVar8 = FUN_006fdbe0();
  FUN_00701080(iVar8);
  puVar1 = local_10;
  while (puVar1 != (undefined4 *)0x0) {
    FUN_008b19b0((undefined4 *)*puVar1);
    puVar5 = (undefined4 *)puVar1[1];
    Memory_FreeIfNonNull(puVar1);
    puVar1 = puVar5;
  }
  return;
}

