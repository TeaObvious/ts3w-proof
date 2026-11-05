/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX procedure, IWindow then event-message pointer, two
   stack words/RET 8, lowAL handled. Message+8 is event ID; source/destination are first two pointer
   words. Message1000 records window at+34, then normal membership admission. Registered normal
   events optionally pass through7ECF80/7EDC70/7ECFA0 interception beforeHost780510. For1001,
   test4097 membership and invoke780510 when present; THEN call77EBB0 wheneverHost +38 non-null,
   regardless4097 membership. RereadHost separately after event callback. Afterwards clear+34; if
   registry+3C exists invoke742220(window,this). Registry removal is after both callbacks. No CLR
   thread check, deferred FIFO or early removal in full body. */

bool __thiscall
UiScriptWindowProcedure_ProcessMessage(void *this,void *windowInterface,void *eventMessage)

{
  uint *puVar1;
  int iVar2;
  bool bVar3;
  int *piVar4;
  void *this_00;
  undefined4 local_8 [2];
  
  puVar1 = (uint *)((int)eventMessage + 8);
  if (*puVar1 == 0x1000) {
    *(void **)((int)this + 0x34) = windowInterface;
  }
  else if (*puVar1 == 0x1001) {
    iVar2 = *(int *)(*(int *)((int)this + 0x14) + *(int *)((int)this + 0x18) * 4);
    piVar4 = (int *)FUN_008b26c0((void *)((int)this + 0x10),local_8,puVar1);
    if ((*piVar4 != iVar2) && (*(void **)((int)this + 0x38) != (void *)0x0)) {
      UiHost_ProcessWindowEvent(*(void **)((int)this + 0x38),windowInterface,eventMessage);
    }
    if (*(void **)((int)this + 0x38) != (void *)0x0) {
      UiHost_NotifyWindowShutdown(*(void **)((int)this + 0x38),windowInterface);
    }
    *(undefined4 *)((int)this + 0x34) = 0;
    if (*(void **)((int)this + 0x3c) == (void *)0x0) {
      return false;
    }
    UiScriptEventRegistry_RetireProcedure(*(void **)((int)this + 0x3c),windowInterface,this);
    return false;
  }
  iVar2 = *(int *)(*(int *)((int)this + 0x14) + *(int *)((int)this + 0x18) * 4);
  piVar4 = (int *)FUN_008b26c0((void *)((int)this + 0x10),local_8,puVar1);
  if (*piVar4 != iVar2) {
    this_00 = (void *)FUN_007ecf80();
    if ((this_00 != (void *)0x0) &&
       (bVar3 = FUN_007edc70(this_00,windowInterface,(int)eventMessage), bVar3)) {
      FUN_007ecfa0(this_00,windowInterface,(int)eventMessage);
    }
    if (*(void **)((int)this + 0x38) != (void *)0x0) {
      bVar3 = UiHost_ProcessWindowEvent(*(void **)((int)this + 0x38),windowInterface,eventMessage);
      return bVar3;
    }
  }
  return false;
}

