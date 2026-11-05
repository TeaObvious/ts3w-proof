/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67 instructions. ECX walker, one physical target pointer, RET4 or tail
   jump007FFD90 using same cleanup. If pointer equals current pending+1C, return without dirty
   update. Otherwise store pending pointer first, replace low byte of forwarded word with
   target!=null, and tail-call dirty propagation. Remaining upper EAX/forwarded bits are incidental
   because child reads low byte. Clearing pending passes false but does not clear already-dirty
   state in child. No immediate graph enter; original stepper remains separate. */

void __thiscall SacsWalker_SetPendingState(void *this,int param_1)

{
  if (param_1 != *(int *)((int)this + 0x1c)) {
    *(int *)((int)this + 0x1c) = param_1;
    SacsWalker_PropagateDirtyState(this,param_1 != 0);
    return;
  }
  return;
}

