/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 bridge watch destructor releases the retained destination driver reference at callback
   +0x1C; the destructor alone does not release a destination waiter. Raw proof:
   guides/sacs/native/disassembly/bridge-watch-destructor-767290.objdump.txt;
   reference . */

void * __thiscall SACS_BridgeWatchDestructor_767290(void *this,byte param_1)

{
  *(undefined ***)this = &PTR_SACS_BridgeWatchDestructor_767290_01007dfc;
  if (*(int *)((int)this + 0x1c) != 0) {
    (**(code **)(*(int *)(*(int *)((int)this + 0x1c) + 8) + 4))();
  }
  *(undefined ***)this = &PTR_FUN_00f9b454;
  if ((param_1 & 1) != 0) {
    FUN_0076ae70(this);
  }
  return this;
}

