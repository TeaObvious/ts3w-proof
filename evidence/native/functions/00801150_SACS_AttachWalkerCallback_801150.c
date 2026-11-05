/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 callback attachment. For nonnull callback, calls its retain interface and appends a node
   to the source walker linked list rooted at +0x58. The same callback object can be attached to
   multiple source walkers. Raw proof: the reviewed original reference reference PC1.67 identity
   recorded centrally
   
   Analyst note (PC1.67 SACS migration contract): ECX walker, native retained callback inserted into
   list+58. This producer is separate from queued state/flags deque+34. Actual registered bridge
   watch can be shared across walkers; project TaskCompletionSource completion/follow logic is not
   native callback ABI. Existing full original callback comments retained. */

void __thiscall SACS_AttachWalkerCallback_801150(void *this,int *param_1)

{
  int *piVar1;
  
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 4))();
    piVar1 = (int *)FUN_004e4500(0xc,*(undefined4 *)((int)this + 0x60),0);
    if (piVar1 + 2 != (int *)0x0) {
      piVar1[2] = (int)param_1;
    }
    *piVar1 = (int)this + 0x58;
    piVar1[1] = *(int *)((int)this + 0x5c);
    **(int **)((int)this + 0x5c) = (int)piVar1;
    *(int **)((int)this + 0x5c) = piVar1;
  }
  return;
}

