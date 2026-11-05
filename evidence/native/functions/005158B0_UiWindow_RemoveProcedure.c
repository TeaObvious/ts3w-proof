/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX complete WindowBase, one procedure word/RET 4. If
   service+30 exists inform50B9C0(window,procedure); search procedure list complete+218. On match
   build message1001 with source/destination0; pass IWindow complete+4 and message to procedure
   virtual 0x18. After callback release procedure virtual 4, then unlink/free actual list
   node4E44E0. Missing-list/node returns without invented callback. Native callback state is
   live/reentrant; list mutation safety beyond selected instructions not inferred. */

void __thiscall UiWindow_RemoveProcedure(void *this,void *procedure)

{
  int *piVar1;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  if (*(void **)((int)this + 0x30) != (void *)0x0) {
    FUN_0050b9c0(*(void **)((int)this + 0x30),(int)this,(int)procedure);
  }
  piVar1 = *(int **)((int)this + 0x218);
  if (piVar1 != (int *)((int)this + 0x218)) {
    while ((void *)piVar1[2] != procedure) {
      piVar1 = (int *)*piVar1;
      if (piVar1 == (int *)((int)this + 0x218)) {
        return;
      }
    }
    local_14 = 0x1001;
    local_1c = 0;
    local_18 = 0;
    (**(code **)(*(int *)procedure + 0x18))((int)this + 4,&local_1c);
    (**(code **)(*(int *)procedure + 4))();
    piVar1 = *(int **)(*piVar1 + 4);
    *(int *)piVar1[1] = *piVar1;
    *(int *)(*piVar1 + 4) = piVar1[1];
    Memory_FreeIfNonNull(piVar1);
  }
  return;
}

