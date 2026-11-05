/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC1.67 tomb/diving contract. Collects markerType0seed rooms, compares cached signedshort
   vector+0xd0, replaces and emits roomset message0x086b0c27 when changed/forced; also emits related
   partition message0x08a283fb after building boundary sets. Exact fog boundary meshing/render
   consumers remain open; static update producer only. */

void __thiscall LotPartition_RefreshFoggedRoomList(void *this,bool force)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int *piVar4;
  undefined4 *puVar5;
  int *piVar6;
  undefined2 *local_14;
  undefined2 *local_10;
  undefined4 local_c;
  char *local_8;
  
  local_14 = (undefined2 *)0x0;
  local_10 = (undefined2 *)0x0;
  local_c = 0;
  local_8 = "Lot/PartitionManager/UpdateFogOfExplorationRoomListImpl/rooms";
  if (*(void **)((int)this + 0x44) != (void *)0x0) {
    LotRoomSeeds_CollectUniqueNonzeroRooms(*(void **)((int)this + 0x44),0,&local_14);
  }
  if (force == false) {
    uVar2 = FUN_00b48570((int *)&local_14,(undefined4 *)((int)this + 0xd0));
    if ((char)uVar2 != '\0') goto LAB_00b52dc1;
  }
  FUN_005d33b0((void *)((int)this + 0xd0),(int *)&local_14);
  piVar3 = FUN_00adf150();
  if (piVar3 == (int *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    *piVar3 = (int)&PTR_FUN_01065f8c;
    LOCK();
    piVar3[1] = 0;
    UNLOCK();
    *piVar3 = (int)&PTR_FUN_0106ddf0;
    piVar3[4] = 0;
    piVar3[5] = 0;
    piVar3[6] = 0;
    piVar3[7] = (int)"Lot/tRoomSetChangedMsgData";
    (**(code **)(*piVar3 + 4))();
  }
  iVar1 = *(int *)((int)this + 0xc);
  piVar3[2] = *(int *)(iVar1 + 0x48);
  piVar3[3] = *(int *)(iVar1 + 0x4c);
  FUN_005d3480(piVar3 + 4,(int)local_10 - (int)local_14 >> 1);
  FUN_00b4f310((undefined4 *)&force,local_14,local_10,piVar3 + 4);
  piVar4 = (int *)FUN_007693a0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x1c))(0x86b0c27,piVar3,0,0);
  }
  FUN_00ab32d0(*(void **)((int)this + 0xc),0x86b0c27,piVar3);
  piVar4 = (int *)FUN_0044c4f0();
  puVar5 = FUN_00adf150();
  if (puVar5 == (undefined4 *)0x0) {
    piVar6 = (int *)0x0;
  }
  else {
    piVar6 = (int *)FUN_00b4a450(puVar5);
    if (piVar6 != (int *)0x0) {
      (**(code **)(*piVar6 + 4))();
    }
  }
  iVar1 = *(int *)((int)this + 0xc);
  piVar6[2] = *(int *)(iVar1 + 0x48);
  piVar6[3] = *(int *)(iVar1 + 0x4c);
  FUN_00b4c8c0(this,piVar6 + 4,piVar6 + 0xc,piVar6 + 0x14);
  (**(code **)(*piVar4 + 0x1c))(0x8a283fb,piVar6,0,0);
  (**(code **)(*piVar6 + 8))();
  (**(code **)(*piVar3 + 8))();
LAB_00b52dc1:
  if (local_14 != (undefined2 *)0x0) {
    FUN_004e44e0((int)local_14);
  }
  return;
}

