/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. Collect every original four-DWORD cache key whose first GUID
   equals old, then erase those nodes and their owned cached results. Other host keys remain. Does
   not retarget keys or blanket-clear cache. Three actual noncontiguous owned ranges are preserved.
    */

void __thiscall SlotPlacement_RemoveCachedHostCandidates(void *this,int param_1,int param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  int *piVar3;
  uint *puVar4;
  uint *puVar5;
  int *local_18;
  uint *local_14;
  uint *local_10;
  uint *local_c;
  uint *local_8;
  char *local_4;
  
  piVar3 = *(int **)((int)this + 0x18);
  local_10 = (uint *)0x0;
  local_c = (uint *)0x0;
  local_8 = (uint *)0x0;
  local_4 = "World/UserToolObject/keysToRemove";
  puVar5 = (uint *)0x0;
  puVar4 = local_10;
  while (local_10 = puVar4, piVar3 != (int *)((int)this + 0x14)) {
    puVar4 = puVar5;
    if ((piVar3[4] == param_1) && (piVar3[5] == param_2)) {
      if (puVar5 < local_8) {
        local_c = puVar5 + 4;
        puVar4 = local_c;
        if (puVar5 != (uint *)0x0) {
          *puVar5 = piVar3[4];
          puVar5[1] = piVar3[5];
          puVar5[2] = piVar3[6];
          puVar5[3] = piVar3[7];
        }
      }
      else {
        FUN_00cca0b0(&local_10,puVar5,piVar3 + 4);
        puVar4 = local_c;
      }
    }
    piVar3 = FUN_004e1030(piVar3);
    puVar5 = puVar4;
    puVar4 = local_10;
  }
  local_14 = puVar4;
  if (puVar4 != puVar5) {
    do {
      local_14 = puVar4;
      FUN_00cc9350((void *)((int)this + 0x10),(int *)&local_18,puVar4);
      piVar3 = local_18;
      if (local_18 != (int *)((int)this + 0x14)) {
        *(int *)((int)this + 0x24) = *(int *)((int)this + 0x24) + -1;
        FUN_004e1030(local_18);
        FUN_004e1330(piVar3,(int *)((int)this + 0x14));
        puVar2 = (undefined4 *)piVar3[0x22];
        while (puVar2 != (undefined4 *)0x0) {
          FUN_00a527c0((undefined4 *)*puVar2);
          puVar1 = (undefined4 *)puVar2[1];
          FUN_00ad70d0((int)(puVar2 + 8));
          Memory_FreeIfNonNull(puVar2);
          puVar2 = puVar1;
        }
        puVar2 = (undefined4 *)piVar3[0x1b];
        while (puVar2 != (undefined4 *)0x0) {
          FUN_00a527c0((undefined4 *)*puVar2);
          puVar1 = (undefined4 *)puVar2[1];
          FUN_00ad70d0((int)(puVar2 + 8));
          Memory_FreeIfNonNull(puVar2);
          puVar2 = puVar1;
        }
        puVar2 = (undefined4 *)piVar3[0x14];
        while (puVar2 != (undefined4 *)0x0) {
          FUN_00a527c0((undefined4 *)*puVar2);
          puVar1 = (undefined4 *)puVar2[1];
          FUN_00ad70d0((int)(puVar2 + 8));
          Memory_FreeIfNonNull(puVar2);
          puVar2 = puVar1;
        }
        puVar2 = (undefined4 *)piVar3[0xd];
        while (puVar2 != (undefined4 *)0x0) {
          FUN_00a52780((undefined4 *)*puVar2);
          puVar1 = (undefined4 *)puVar2[1];
          FUN_00ad70d0((int)(puVar2 + 4));
          Memory_FreeIfNonNull(puVar2);
          puVar2 = puVar1;
        }
        Memory_FreeIfNonNull(local_18);
        puVar5 = local_c;
        puVar4 = local_14;
      }
      puVar4 = puVar4 + 4;
      local_14 = puVar4;
    } while (puVar4 != puVar5);
  }
  if (local_10 != (uint *)0x0) {
    Memory_FreeIfNonNull(local_10);
  }
  return;
}

