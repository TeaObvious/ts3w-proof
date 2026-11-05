/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: PC1.67 tomb/diving contract. Collects markerType0seed rooms, compares cached signedshort
   vector+0xd0, replaces and emits roomset message0x086b0c27 when changed/forced; also emits related
   partition message0x08a283fb after building boundary sets. Exact fog boundary meshing/render
   consumers remain open; static update producer only. */

void __thiscall LotPartition_RefreshFoggedRoomList(void *this,bool force)

{
  int iVar1;
  undefined4 uVar2;
  int *message;
  int *piVar3;
  undefined4 *puVar4;
  int *piVar5;
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
  message = FloorMessagePool_AcquireStorage();
  if (message == (int *)0x0) {
    message = (int *)0x0;
  }
  else {
    *message = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
    LOCK();
    message[1] = 0;
    UNLOCK();
    *message = (int)&PTR_FUN_0106ddf0;
    message[4] = 0;
    message[5] = 0;
    message[6] = 0;
    message[7] = (int)"Lot/tRoomSetChangedMsgData";
    (**(code **)(*message + 4))();
  }
  iVar1 = *(int *)((int)this + 0xc);
  message[2] = *(int *)(iVar1 + 0x48);
  message[3] = *(int *)(iVar1 + 0x4c);
  FUN_005d3480(message + 4,(int)local_10 - (int)local_14 >> 1);
  FUN_00b4f310((undefined4 *)&force,local_14,local_10,message + 4);
  piVar3 = (int *)FUN_007693a0();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x1c))(0x86b0c27,message,0,0);
  }
  Lot_SendManagerMessage(*(void **)((int)this + 0xc),0x86b0c27,message);
  piVar3 = (int *)MessageDispatch_GetCurrent();
  puVar4 = FloorMessagePool_AcquireStorage();
  if (puVar4 == (undefined4 *)0x0) {
    piVar5 = (int *)0x0;
  }
  else {
    piVar5 = (int *)FUN_00b4a450(puVar4);
    if (piVar5 != (int *)0x0) {
      (**(code **)(*piVar5 + 4))();
    }
  }
  iVar1 = *(int *)((int)this + 0xc);
  piVar5[2] = *(int *)(iVar1 + 0x48);
  piVar5[3] = *(int *)(iVar1 + 0x4c);
  FUN_00b4c8c0(this,piVar5 + 4,piVar5 + 0xc,piVar5 + 0x14);
  (**(code **)(*piVar3 + 0x1c))(0x8a283fb,piVar5,0,0);
  (**(code **)(*piVar5 + 8))();
  (**(code **)(*message + 8))();
LAB_00b52dc1:
  if (local_14 != (undefined2 *)0x0) {
    Memory_FreeIfNonNull(local_14);
  }
  return;
}

