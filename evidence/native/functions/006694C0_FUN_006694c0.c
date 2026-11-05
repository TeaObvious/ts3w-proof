/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; analyst display name FootprintGather_AppendDeferredReference.
   Original Ghidra database symbol: FUN_006694c0; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [006694c0,006694f9); 0 envelope gap bytes are not owned instructions.
*/

/* Retained historical annotation 2, previous C line 12; earlier snapshot context. */
/* The fast path appends the incoming footprint pointer to a temporary vector and calls virtual+90 for a nonnull value (6694D2..E6). Capacity exhaustion delegates to unresolved 669360; its allocator/failure behavior is not inferred. Callers release temporary references via virtual+94 after conditional set insertion. */



void __thiscall FUN_006694c0(void *this,int *param_1)

{
  int *piVar1;
  int *piVar2;
  
  piVar1 = *(int **)((int)this + 4);
  if (piVar1 < *(int **)((int)this + 8)) {
    *(int **)((int)this + 4) = piVar1 + 1;
    if (piVar1 != (int *)0x0) {
      piVar2 = (int *)*param_1;
      *piVar1 = (int)piVar2;
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 0x90))();
        return;
      }
    }
  }
  else {
    FUN_00669360(this,piVar1,param_1);
  }
  return;
}

