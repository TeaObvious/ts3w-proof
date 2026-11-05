/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst static routing contract: Appends destination's embedded node at destination+4 to goal's
   circular doubly linked list sentinel+0x18. Native ownership moves into goal list. Zero pointer
   path really writes addresses0/+4; observed bridge callers check allocation first, so no safe null
   append contract is inferred. */

void __thiscall RouteGoal_AppendDestination(void *this,int param_1)

{
  int *piVar1;
  
  if (param_1 != 0) {
    piVar1 = (int *)(param_1 + 4);
    *(undefined4 *)(param_1 + 8) = *(undefined4 *)((int)this + 0x1c);
    *piVar1 = (int)this + 0x18;
    *(int **)((int)this + 0x1c) = piVar1;
    **(int **)(param_1 + 8) = (int)piVar1;
    return;
  }
  _DAT_00000004 = *(undefined4 **)((int)this + 0x1c);
  _DAT_00000000 = (int)this + 0x18;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *_DAT_00000004 = 0;
  return;
}

