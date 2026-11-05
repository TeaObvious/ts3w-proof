/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst name from this complete predicate: ECX component, template pointer at +0xC, collision
   uint32 at template+0x60; CMP 3 / SETNZ AL. No null-template guard. Only AL is established as
   Boolean; upper EAX retains unrelated pointer bits. */

undefined4 __fastcall TreeComponent_HasCollisionShape(int param_1)

{
  return CONCAT31((int3)((uint)*(int *)(param_1 + 0xc) >> 8),
                  *(int *)(*(int *)(param_1 + 0xc) + 0x60) != 3);
}

