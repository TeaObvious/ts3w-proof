/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst static routing contract: Goal deleting destructor frees valid-room vector+0x20, destroys
   all destinations via0074fdf0 on sentinel+0x18, resets inherited vtables, frees goal itself only
   when deleting flag bit0 is set. Return this EAX. Refcount release calls inherited destructor slot
   with1. */

void * __thiscall RouteGoal_Delete(void *this,byte param_1)

{
  *(undefined ***)this = &PTR_FUN_01005498;
  *(undefined ***)((int)this + 4) = &PTR_LAB_01005488;
  if (*(void **)((int)this + 0x20) != (void *)0x0) {
    Memory_FreeIfNonNull(*(void **)((int)this + 0x20));
  }
  RouteGoal_DeleteAllDestinations((undefined4 *)((int)this + 0x18));
  *(undefined ***)((int)this + 4) = &PTR_LAB_01052a40;
  *(undefined ***)((int)this + 4) = &PTR_LAB_00ff4a78;
  *(undefined ***)this = &PTR_LAB_00fa2b80;
  if ((param_1 & 1) != 0) {
    Memory_FreeIfNonNull(this);
  }
  return this;
}

