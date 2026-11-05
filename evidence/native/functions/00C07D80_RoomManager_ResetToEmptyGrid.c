/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 exact239B existing body. Physical ECX receiver, no incoming EDX parameter and no stack
   parameters/plainRET, contrary to the stored fastcall wording. Loads dimensions from owning
   lot+174/+178/+184 and minlevel-like field+17C into manager+10; resizes grid throughC05E40, passes
   a local two-DWORD-zero payload toC05DA0. Clears/reinitializes manager lists/maps, rebuilds room
   locations, retires five list buckets and marks worklist tails. Returns AL1 only, upperEAX not
   meaningful. Called by both inspected PartitionManager resource readers when fourth Platform lane
   is absent before format11; other reset callers exist, hence generic RoomManager name. Compact
   grid-fill internals and exact cleanup callee contracts are not reconstructed here. */

undefined4 __fastcall RoomManager_ResetToEmptyGrid(void *param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *allocation;
  int iVar5;
  int local_8 [2];
  
  iVar5 = *(int *)((int)param_1 + 8);
  iVar1 = *(int *)(iVar5 + 0x178);
  iVar2 = *(int *)(iVar5 + 0x174);
  iVar3 = *(int *)(iVar5 + 0x184);
  *(undefined4 *)((int)param_1 + 0x10) = *(undefined4 *)(iVar5 + 0x17c);
  RoomGrid_ResizeStorage(*(void **)((int)param_1 + 0x14),iVar2,iVar1,iVar3);
  puVar4 = (undefined4 *)0x0;
  local_8[0] = 0;
  local_8[1] = 0;
  FUN_00c05da0(*(void **)((int)param_1 + 0x14),local_8);
  FUN_008b19b0(*(undefined4 **)((int)param_1 + 0x24));
  iVar5 = (int)param_1 + 0x1c;
  *(int *)((int)param_1 + 0x20) = iVar5;
  *(undefined4 *)((int)param_1 + 0x24) = 0;
  *(undefined1 *)((int)param_1 + 0x28) = 0;
  *(undefined4 *)((int)param_1 + 0x2c) = 0;
  *(int *)iVar5 = iVar5;
  FUN_00c048f0(*(int *)((int)param_1 + 0x38),*(uint *)((int)param_1 + 0x3c));
  *(undefined4 *)((int)param_1 + 0x40) = 0;
  *(undefined4 *)((int)param_1 + 0x58) = *(undefined4 *)((int)param_1 + 0x54);
  RoomManager_RebuildRoomLocations(param_1);
  iVar5 = (int)param_1 + 0x7c;
  local_8[0] = 5;
  do {
    allocation = *(undefined4 **)(iVar5 + 0xc);
    if (allocation != puVar4) {
      do {
        FUN_008b19b0((undefined4 *)*allocation);
        puVar4 = (undefined4 *)allocation[1];
        Memory_FreeIfNonNull(allocation);
        allocation = puVar4;
      } while (puVar4 != (undefined4 *)0x0);
    }
    iVar1 = iVar5 + 4;
    *(int *)(iVar5 + 8) = iVar1;
    *(undefined4 **)(iVar5 + 0xc) = puVar4;
    *(undefined1 *)(iVar5 + 0x10) = 0;
    *(undefined4 **)(iVar5 + 0x14) = puVar4;
    iVar5 = iVar5 + 0x1c;
    local_8[0] = local_8[0] + -1;
    *(int *)iVar1 = iVar1;
  } while (local_8[0] != 0);
  *(undefined4 *)((int)param_1 + 0x10c) = *(undefined4 *)((int)param_1 + 0x108);
  return CONCAT31((int3)((uint)iVar1 >> 8),1);
}

