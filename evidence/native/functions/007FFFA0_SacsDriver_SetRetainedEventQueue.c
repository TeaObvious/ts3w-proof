/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS host reset contract): ECX driver, event queue POINTER stackword RET4.
   If pointer differs from driver+12C, retain new nonnull queue through virtual0, store it, release
   old nonnull queue through virtual4. This field is a retained native pointer, NOT the numeric
   script handle;766F90 resolves handles before entering here. Retention differs from temporary
   typed-handle registration used by767480. */

void __thiscall SacsDriver_SetRetainedEventQueue(void *this,int *param_1)

{
  int *piVar1;
  
  piVar1 = *(int **)((int)this + 300);
  if (param_1 != piVar1) {
    if (param_1 != (int *)0x0) {
      (**(code **)*param_1)();
    }
    *(int **)((int)this + 300) = param_1;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
  }
  return;
}

