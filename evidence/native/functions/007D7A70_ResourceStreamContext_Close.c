/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. ECX context, no stack arguments. If owned context +4
   exists, invoke its +20h then +8 slots and clear owned context, stream +8 and cached flag +15h.
   Does not change status +14h or validate the payload return. */

void __thiscall ResourceStreamContext_Close(void *this)

{
  int *arg0;
  
  arg0 = *(int **)((int)this + 4);
  if (arg0 != (int *)0x0) {
    (**(code **)(*arg0 + 0x20))(arg0);
    (**(code **)(**(int **)((int)this + 4) + 8))(*(int **)((int)this + 4));
    *(undefined4 *)((int)this + 4) = 0;
    *(undefined4 *)((int)this + 8) = 0;
    *(undefined1 *)((int)this + 0x15) = 0;
  }
  return;
}

