/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete160-instruction body: store supplied request flags at walker+20 and selected
   target-state argument at+24 before7FFD90(target!=0). Existing canonical8029E0 request supplies
   that target through8028E0; this establishes the quiescence predicate field as a request
   destination, not a reference/work counter. Preserve existing event type50/subtypeA emissions,
   status/dirty scheduling, binding flag and retained/one-shot branches in actual body. RET8. This
   contextual label does not establish every downstream80150/804FB0/7FCF80 side effect or parity of
   authored request/lifetime policy. */

void __thiscall SACS_WalkerInstallDestination_802690(void *this,uint param_1,int param_2)

{
  int *piVar1;
  uint uVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  int iVar5;
  
  *(uint *)((int)this + 0x20) = param_1;
  *(int *)((int)this + 0x24) = param_2;
  SacsWalker_PropagateDirtyState(this,param_2 != 0);
  if (*(int *)((int)this + 0x34) == *(int *)((int)this + 0x44)) {
    piVar1 = FUN_007427b0();
    if (piVar1 == (int *)0x0) {
      piVar1 = (int *)0x0;
    }
    else {
      iVar5 = *(int *)(*(int *)(*(int *)((int)this + 8) + 0x20) + 0x2c);
      piVar1[1] = 0;
      *piVar1 = (int)&PTR_FUN_01021018;
      piVar1[2] = 0x50;
      piVar1[3] = 10;
      piVar1[4] = iVar5;
      piVar1[8] = (int)"Scripting/EventQueue/Event";
      piVar1[5] = (int)&DAT_011c8e54;
      piVar1[6] = (int)&DAT_011c8e54;
      piVar1[7] = (int)&DAT_011c8e55;
    }
    if (*(void **)((int)this + 4) != (void *)0x0) {
      SACS_AdmitFilteredEvent(*(void **)((int)this + 4),piVar1);
    }
    if (param_2 == 0) {
      iVar5 = 0;
    }
    else {
      iVar5 = *(int *)(param_2 + 0x28);
    }
    piVar1 = FUN_007427b0();
    if (piVar1 == (int *)0x0) {
      piVar1 = (int *)0x0;
    }
    else {
      piVar1[1] = 0;
      *piVar1 = (int)&PTR_FUN_01021018;
      piVar1[2] = 0x50;
      piVar1[3] = 10;
      piVar1[4] = iVar5;
      piVar1[8] = (int)"Scripting/EventQueue/Event";
      piVar1[5] = (int)&DAT_011c8e54;
      piVar1[6] = (int)&DAT_011c8e54;
      piVar1[7] = (int)&DAT_011c8e55;
    }
    if (*(void **)((int)this + 4) != (void *)0x0) {
      SACS_AdmitFilteredEvent(*(void **)((int)this + 4),piVar1);
    }
  }
  if ((param_1 & 0x20) == 0) {
    if ((*(int *)((int)this + 0x6c) == 3) &&
       (((*(int *)((int)this + 0x6c) < 1 ||
         (uVar2 = SacsListener_HasBlockingController(*(int *)((int)this + 100)), (char)uVar2 == '\0'
         )) || (uVar3 = SacsDriver_CheckWalkerIdleReadiness(*(void **)((int)this + 4),(int)this),
               (char)uVar3 != '\0')))) {
      LOCK();
      *(int *)((int)this + 0x6c) = 0;
      UNLOCK();
      if (*(void **)((int)this + 100) != (void *)0x0) {
        RecordField14_StoreDword(*(void **)((int)this + 100),0);
      }
      iVar5 = *(int *)((int)this + 4);
      *(undefined1 *)((int)this + 0xc) = 1;
      *(undefined1 *)(iVar5 + 0x146) = 1;
      if (DAT_011d9d40 != (void *)0x0) {
        SACS_QueueOrRevisitDriver_7FCF80(DAT_011d9d40,iVar5,'\0');
      }
    }
  }
  else if (*(int *)((int)this + 0x6c) != 4) {
    LOCK();
    *(undefined4 *)((int)this + 0x6c) = 5;
    UNLOCK();
  }
  FUN_00804d40(*(void **)((int)this + 100),(byte)(param_1 >> 6) & 1);
  iVar5 = *(int *)((int)this + 0x24);
  if (iVar5 != 0) {
    if (*(char *)(iVar5 + 0x53) == '\0') {
      if (*(char *)(iVar5 + 0x54) == '\0') {
        *(int *)((int)this + 0x28) = iVar5;
        return;
      }
    }
    else {
      uVar3 = *(undefined4 *)(iVar5 + 0x28);
      puVar4 = FUN_007427b0();
      if (puVar4 == (undefined4 *)0x0) {
        piVar1 = (int *)0x0;
      }
      else {
        piVar1 = FUN_008020a0(puVar4,8,uVar3,"%s<0x%08x> is a one-shot");
      }
      if (*(void **)((int)this + 4) != (void *)0x0) {
        SACS_AdmitFilteredEvent(*(void **)((int)this + 4),piVar1);
      }
    }
  }
  return;
}

