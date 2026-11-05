/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 registered ScriptCore.SACS::SACS_CanPauseImpl. If driver exists, calls 0x008000E0 with
   actorHash; otherwise returns false. Raw proof:
   guides/sacs/native/disassembly/can-pause-entry-7670d0.objdump.txt;
   reference . */

bool ScriptCore_SACS__SACS_CanPauseImpl(int param_1)

{
  bool bVar1;
  int *piVar2;
  void *this;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar2 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    bVar1 = FUN_008000e0(this,param_1);
    return bVar1;
  }
  return false;
}

