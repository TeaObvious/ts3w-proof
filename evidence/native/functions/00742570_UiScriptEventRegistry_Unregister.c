/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX registry, two stack words/RET 8. Lookup window in
   registry+4; absent returns. For present procedure call742400(eventType). When AL 1 means event
   set became empty, invoke IWindow virtual 0x10C(procedure), entering real procedure removal
   and1001 lifecycle. Nonempty or missing event leaves procedure attached; does not eagerly erase
   registry key before shutdown callback. */

void __thiscall UiScriptEventRegistry_Unregister(void *this,void *windowInterface,uint eventType)

{
  void *this_00;
  bool bVar1;
  int local_8 [2];
  
  UInt32PairMap_Find((void *)((int)this + 4),local_8,(uint *)&windowInterface);
  if (local_8[0] != *(int *)(*(int *)((int)this + 8) + *(int *)((int)this + 0xc) * 4)) {
    this_00 = *(void **)(local_8[0] + 4);
    bVar1 = UiScriptWindowProcedure_UnregisterEvent(this_00,eventType);
    if (bVar1) {
      (**(code **)(*(int *)windowInterface + 0x10c))(this_00);
    }
  }
  return;
}

