/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Native lot-content manager import orchestrator. After preparing placement
   data, calls the floor manager loader at A97780 and the object import at AB48C0 with that
   placement. There is no exact-cover shortcut around these manager imports.
   
   Analyst note (PC1.67 supplied lot identity/import counterpart): Existing analyst identity
   retained. ECX resolved destination lot plus six DWORD stack arguments: stream context, contentID
   low/high, rotation/position references, objectID vector; RET18hex, only AL Boolean status.
   Placement preparation AC6590 failure takes actual cleanup/false path. Supplied contentID
   constructs reference-key context; actual floor/roof/other manager loads and object import AB48C0
   precede callbacks/dirty-state/release work and success AL1. Preserve complete existing
   instruction order and dependencies; child placement/catalog/geometry semantics are not inferred
   from helper names. Calls carrying ScriptCore.Animation::Animation_SetMissingAnimationCallback
   label on global helper are existing symbol-analysis artifacts and are not evidence for an
   animation-callback role in this import. No curated16type SHA256/path-cache/distance mechanism is
   implemented in this selected body; no global absence claim. */

byte __thiscall
LotImport_ImportManagersAndObjects
          (void *this,void *streamContext,uint contentIdLow,uint contentIdHigh,ushort *rotation,
          ushort *position,void *objectIdVector)

{
  char cVar1;
  uint uVar2;
  uint uVar3;
  char cVar4;
  int *piVar5;
  int *piVar6;
  int iVar7;
  void *this_00;
  undefined4 uVar8;
  undefined4 uStack_104;
  int local_100;
  int local_fc;
  uint auStack_f8 [9];
  uint uStack_d4;
  int iStack_d0;
  undefined1 auStack_84 [132];
  
  piVar5 = (int *)FUN_007693a0();
  if (piVar5 != (int *)0x0) {
    (**(code **)(*piVar5 + 0x38))();
  }
  cVar1 = *(char *)((int)this + 0x444);
  local_100 = *(int *)((int)this + 0x460);
  local_fc = *(int *)((int)this + 0x464);
  if (cVar1 != '\0') {
    FUN_00ab8540(this,0,0);
  }
  FUN_00799140(&uStack_104,this);
  ResourceReferences_ConstructContext(auStack_84,0);
  cVar4 = FUN_00ac6590(this,streamContext,contentIdLow,contentIdHigh,rotation,position,auStack_f8);
  if (cVar4 == '\0') {
    FUN_00a475d0(&uStack_104);
    FUN_007d6890((int)auStack_84);
    ScriptCore.Animation::Animation_SetMissingAnimationCallback();
    return 0;
  }
  ReferenceStore_ReadResource(auStack_84,streamContext,0,CONCAT44(contentIdHigh,contentIdLow),1);
  FUN_00ab4ef0((int)this);
  FUN_00ac4e00(this,*(int **)((int)this + 0x174),*(int *)((int)this + 0x178),uStack_d4,iStack_d0);
  LotImport_LoadFloorManager(*(void **)((int)this + 0x290),streamContext,0.0,auStack_f8);
  FUN_00ac6b50(this,streamContext,auStack_f8);
  if (*(void **)((int)this + 0x2e4) != (void *)0x0) {
    FUN_00c0e690(*(void **)((int)this + 0x2e4),streamContext,objectIdVector,contentIdLow,
                 contentIdHigh,(int)auStack_f8,0);
  }
  if ((int)uStack_d4 < 0) {
    (**(code **)(**(int **)((int)this + 0x2d0) + 4))(-uStack_d4,0,0);
  }
  if (0 < iStack_d0) {
    (**(code **)(**(int **)((int)this + 0x2d0) + 4))(iStack_d0,1,0);
  }
  if (*(void **)((int)this + 0x2b4) != (void *)0x0) {
    FUN_00b21ed0(*(void **)((int)this + 0x2b4),streamContext,auStack_f8,objectIdVector,0);
  }
  if (*(void **)((int)this + 0x2b8) != (void *)0x0) {
    FUN_00c1d700(*(void **)((int)this + 0x2b8),streamContext,auStack_f8,objectIdVector,0);
  }
  Lot_ImportLibraryObjectRecords
            (this,streamContext,contentIdLow,contentIdHigh,objectIdVector,auStack_f8);
  ObjectManager_NotifyExistingMembersInserted(this);
  if (*(void **)((int)this + 0x2d8) != (void *)0x0) {
    FUN_00c09400(*(void **)((int)this + 0x2d8),streamContext,objectIdVector,contentIdLow,
                 contentIdHigh,(int)auStack_f8,0);
  }
  if (*(void **)((int)this + 0x2cc) != (void *)0x0) {
    FireplaceGroups_ImportObjectIndices
              (*(void **)((int)this + 0x2cc),streamContext,objectIdVector,
               CONCAT44(contentIdHigh,contentIdLow),0);
  }
  piVar5 = FloorMessagePool_AcquireStorage();
  if (piVar5 == (int *)0x0) {
    piVar5 = (int *)0x0;
  }
  else {
    *piVar5 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
    LOCK();
    piVar5[1] = 0;
    UNLOCK();
    *piVar5 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
    (**(code **)(*piVar5 + 4))();
  }
  piVar5[2] = *(int *)((int)this + 0x48);
  piVar5[3] = *(int *)((int)this + 0x4c);
  piVar5[4] = *(int *)((int)this + 0x17c);
  piVar5[5] = *(int *)((int)this + 0x180);
  if ((*(char *)((int)this + 0xc9) == '\0') && (*(int *)((int)this + 0x364) != 0)) {
    piVar6 = (int *)MessageDispatch_GetCurrent();
    if (piVar6 != (int *)0x0) {
      (**(code **)(*piVar6 + 0x1c))(0x41f9e24,piVar5,0,*(undefined4 *)((int)this + 0x364));
    }
  }
  (**(code **)(*piVar5 + 8))();
  FUN_00a95f30(*(void **)((int)this + 0x290));
  if (*(void **)((int)this + 0x298) != (void *)0x0) {
    FUN_00b53c30(*(void **)((int)this + 0x298));
  }
  if (*(void **)((int)this + 0x2b4) != (void *)0x0) {
    FUN_00b164a0(*(void **)((int)this + 0x2b4),objectIdVector);
    FUN_00b211d0(*(void **)((int)this + 0x2b4),'\x01');
  }
  if (*(int *)((int)this + 0x2b8) != 0) {
    ScriptCore.Animation::Animation_SetMissingAnimationCallback();
  }
  if (*(void **)((int)this + 700) != (void *)0x0) {
    PoolManager_ReconcileRoomHelpersWithFlag(*(void **)((int)this + 700));
  }
  if (*(int *)((int)this + 0x2c8) != 0) {
    FUN_00b65f00(*(int *)((int)this + 0x2c8));
  }
  if (*(void **)((int)this + 0x2c0) != (void *)0x0) {
    FUN_00b56e70(*(void **)((int)this + 0x2c0));
  }
  if (*(int *)((int)this + 0x2e8) != 0) {
    Lot_RefreshAttachedObjectFootprintHash(this);
  }
  FUN_00ab52f0((int)this);
  FUN_00c6dcd0(this,1,1,0,(int *)0x0);
  *(uint *)((int)this + 0x130) = *(uint *)((int)this + 0x130) | 1;
  *(undefined1 *)((int)this + 200) = 1;
  *(undefined1 *)((int)this + 0x328) = 1;
  *(undefined1 *)((int)this + 0x334) = 1;
  *(undefined1 *)((int)this + 0x33c) = 1;
  *(undefined1 *)((int)this + 0x33d) = 1;
  *(undefined1 *)((int)this + 0x270) = 1;
  *(undefined1 *)((int)this + 0x425) = 1;
  *(undefined1 *)((int)this + 0xba) = 1;
  if ((*(char *)((int)this + 0xb9) == '\0') && (DAT_011eec30 != (void *)0x0)) {
    FUN_00d61850(DAT_011eec30,*(int *)((int)this + 0x48),*(int *)((int)this + 0x4c),
                 *(int *)((int)this + 0x48),*(int *)((int)this + 0x4c),7);
    *(undefined1 *)((int)this + 0xb9) = 1;
  }
  FUN_00a475d0(&uStack_104);
  if (*(int *)((int)this + 0x2d8) != 0) {
    thunk_FUN_00c08970(*(int *)((int)this + 0x2d8));
  }
  if (*(int *)((int)this + 0x2e4) != 0) {
    thunk_FUN_00c0e390(*(int *)((int)this + 0x2e4));
  }
  iVar7 = thunk_FUN_00835d40();
  if (iVar7 != 0) {
    this_00 = (void *)FUN_008295c0(iVar7);
    if (this_00 != (void *)0x0) {
      uVar2 = *(uint *)((int)this + 0x4c);
      uVar3 = *(uint *)((int)this + 0x48);
      uVar8 = FUN_006322c0(this_00,uVar3,uVar2);
      FUN_00631730(this_00,uVar3,uVar2);
      FUN_0063e080(this_00,uVar3,uVar2);
      if ((char)uVar8 != '\0') {
        FUN_00632310(this_00,uVar3,uVar2);
      }
    }
  }
  World_ReleaseHeightmapRelatedData(*(void **)((int)this + 0xc),false);
  if (cVar1 != '\0') {
    FUN_00ab8540(this,local_100,local_fc);
  }
  FUN_007d6890((int)auStack_84);
  ScriptCore.Animation::Animation_SetMissingAnimationCallback();
  return 1;
}

