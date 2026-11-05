/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Original PC 1.67: Insert new room/index and queue category-dependent event; discriminator0
   queues5251D88C. Preserve original allocator/insert order and null failure assumptions; no native
   protective fallback added. */

int * __fastcall LotRoomGraph_CreateRoomAndQueueAdded(int param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  int iVar3;
  int *piVar4;
  int iVar5;
  int *local_8;
  undefined4 local_4;
  
  puVar2 = (undefined4 *)FUN_00c5d5d0(0x10,*(int **)(param_1 + 0x60));
  if (puVar2 == (undefined4 *)0x0) {
    local_8 = (int *)0x0;
  }
  else {
    local_8 = (int *)FUN_00c5d510(puVar2);
  }
  piVar4 = (int *)(param_1 + 0x2c);
  iVar3 = *(int *)(param_1 + 0x30) - *(int *)(param_1 + 0x2c) >> 2;
  iVar5 = 0;
  if (0 < iVar3) {
    puVar2 = (undefined4 *)*piVar4;
    do {
      if (iVar5 < *(int *)*puVar2) break;
      iVar5 = iVar5 + 1;
      puVar2 = puVar2 + 1;
    } while (iVar5 < iVar3);
  }
  *local_8 = iVar5;
  puVar1 = *(undefined4 **)(param_1 + 0x30);
  puVar2 = (undefined4 *)(*piVar4 + iVar5 * 4);
  if ((puVar1 == *(undefined4 **)(param_1 + 0x34)) || (puVar2 != puVar1)) {
    FUN_00982420(piVar4,puVar2,&local_8);
    piVar4 = local_8;
  }
  else {
    *(undefined4 **)(param_1 + 0x30) = puVar1 + 1;
    piVar4 = local_8;
    if (puVar1 != (undefined4 *)0x0) {
      *puVar1 = local_8;
    }
  }
  if (*(int *)(param_1 + 4) != 0) {
    switch(*(undefined4 *)(*(int *)(param_1 + 4) + 0xc)) {
    case 0:
      local_8 = (int *)0x5251d88c;
      break;
    case 1:
      local_8 = (int *)0x3251d980;
      break;
    case 2:
      local_8 = (int *)0x3251d978;
      break;
    case 3:
      local_8 = (int *)0xa29bdb7;
      break;
    default:
      goto switchD_00c430b9_default;
    }
    puVar2 = *(undefined4 **)(param_1 + 0x50);
    local_4 = CONCAT22(local_4._2_2_,(short)iVar5);
    if (puVar2 < *(undefined4 **)(param_1 + 0x54)) {
      *(undefined4 **)(param_1 + 0x50) = puVar2 + 2;
      if (puVar2 != (undefined4 *)0x0) {
        *puVar2 = local_8;
        puVar2[1] = local_4;
        return piVar4;
      }
    }
    else {
      FUN_0040c540((void *)(param_1 + 0x4c),puVar2,&local_8);
    }
  }
switchD_00c430b9_default:
  return piVar4;
}

