/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 registered ScriptCore.SACS::SACS_PauseImpl. If driver exists, calls 0x00803FE0 with
   actorHash; otherwise returns false. Raw proof:
   guides/sacs/native/disassembly/pause-entry-767100.objdump.txt; reference
   . */

undefined4 ScriptCore_SACS__SACS_PauseImpl(int param_1)

{
  int *piVar1;
  void *this;
  undefined4 uVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    uVar2 = FUN_00803fe0(this,param_1);
    return uVar2;
  }
  return 0;
}

