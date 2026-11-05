/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; analyst display name FootprintGather_AppendDeferredReference.
   Original Ghidra database symbol: FUN_006694c0; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [006694c0,006694f9); 0 envelope gap bytes are not owned instructions.
*/

/* The fast path appends the incoming footprint pointer to a temporary vector and calls virtual+90 for a nonnull value (6694D2..E6). Capacity exhaustion delegates to unresolved 669360; its allocator/failure behavior is not inferred. Callers release temporary references via virtual+94 after conditional set insertion. */

void __thiscall FootprintGather_AppendDeferredReference(void *this,int *param_1)

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
