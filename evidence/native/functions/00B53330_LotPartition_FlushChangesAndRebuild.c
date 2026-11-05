/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x00b53448) */
/* Original PC 1.67: Flush four graph event queues, then four room-definition change lists,
   emit047E869A with owner identifier pair, continue original partition work. No claim that
   message-delivery order equals submission order. */

void __fastcall LotPartition_FlushChangesAndRebuild(void *param_1)

{
  void *this;
  int *piVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int iVar4;
  undefined1 auStack_12 [2];
  int aiStack_10 [4];
  
  LotRoomGraph_SubmitQueuedRoomMessages(*(int *)((int)param_1 + 0x54));
  LotRoomGraph_SubmitQueuedRoomMessages(*(int *)((int)param_1 + 0x58));
  LotRoomGraph_SubmitQueuedRoomMessages(*(int *)((int)param_1 + 0x5c));
  LotRoomGraph_SubmitQueuedRoomMessages(*(int *)((int)param_1 + 0x68));
  iVar4 = 4;
  puVar2 = (undefined4 *)((int)param_1 + 0x44);
  do {
    if ((void *)*puVar2 != (void *)0x0) {
      LotRoomSeeds_FlushChangedRooms((void *)*puVar2);
    }
    puVar2 = puVar2 + 1;
    iVar4 = iVar4 + -1;
  } while (iVar4 != 0);
  piVar1 = (int *)MessageDispatch_GetCurrent();
  puVar2 = FloorMessagePool_AcquireStorage();
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    *puVar2 = &PTR_DestroyPooledFloorMessage_01065f8c;
    LOCK();
    puVar2[1] = 0;
    UNLOCK();
    *puVar2 = &PTR_DestroyPooledFloorMessage_01065f8c;
  }
  iVar4 = *(int *)((int)param_1 + 0xc);
  puVar2[2] = *(undefined4 *)(iVar4 + 0x48);
  puVar2[3] = *(undefined4 *)(iVar4 + 0x4c);
  (**(code **)(*piVar1 + 0x1c))(0x47e869a,puVar2,0,0);
  FUN_00b1ba90(*(int *)(*(int *)((int)param_1 + 0xc) + 0x2b4));
  FUN_00b4d450(param_1);
  FUN_00b4d2e0((int)param_1);
  FUN_00b52a20(param_1,'\0');
  FUN_00b52860(param_1,'\0');
  LotPartition_RefreshFoggedRoomList(param_1,false);
  this = *(void **)((int)param_1 + 0x44);
  if (this != (void *)0x0) {
    LotRoomSeeds_CollectUniqueNonzeroRooms(this,1,auStack_12 + -0x12);
  }
  uVar3 = FUN_00b48570((int *)(auStack_12 + -0x12),(undefined4 *)((int)param_1 + 0xe4));
  if ((char)uVar3 == '\0') {
    FUN_005d33b0((undefined4 *)((int)param_1 + 0xe4),(int *)(auStack_12 + -0x12));
  }
  FUN_00b52df0(param_1,'\0');
  FUN_00b52f10(param_1,0);
  FUN_00b4ee60(param_1,'\0');
  FUN_00b507b0(param_1,0);
  *(undefined1 *)((int)param_1 + 500) = 0;
  *(undefined4 *)((int)param_1 + 0x1f8) = 0;
  *(undefined4 *)((int)param_1 + 0x1fc) = 0;
  *(undefined4 *)((int)param_1 + 0x200) = 0;
  *(undefined4 *)((int)param_1 + 0x204) = 0;
  return;
}

