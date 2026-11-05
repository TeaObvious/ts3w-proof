/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: ECX newly allocated12-byte modifier, one stack model pointer, EAX=this, RET4.
   Stores transient basevptr00FF0FDC, atomically zeros refcount+4, stores actual vptr00FF409C and
   initializes retainedmodel+8. For a different nonnull input calls its virtual+0 before assignment,
   then releases a nonnull previous pointer through virtual+4; same-pointer/null branches remain
   literal. Direct caller006E6550 stage at006E6605 supplies model query result minus28, attaches via
   object virtual+80 then releases its local modifier reference. 00FDF6BC is the attachment
   argument, not this stored vptr. No geometry, scale or pose calculation in this constructor. */

void * __thiscall SimHeadIsolationModifier_Construct(void *this,int *param_1)

{
  int *piVar1;
  
  *(undefined ***)this = &PTR_FUN_00ff0fdc;
  LOCK();
  *(undefined4 *)((int)this + 4) = 0;
  UNLOCK();
  *(undefined ***)this = &PTR_FUN_00ff409c;
  *(undefined4 *)((int)this + 8) = 0;
  piVar1 = *(int **)((int)this + 8);
  if (param_1 != piVar1) {
    if (param_1 != (int *)0x0) {
      (**(code **)*param_1)();
    }
    *(int **)((int)this + 8) = param_1;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
  }
  return this;
}

