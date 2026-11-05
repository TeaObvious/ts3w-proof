/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 registered ScriptCore.SACS::SACS_EnterStateImpl. If driver exists, forwards actorHash and
   stateHash to 0x00803D60; missing driver is a no-op. Compare the callee before assigning
   EnterState result semantics. Raw proof:
   guides/sacs/native/disassembly/enter-state-entry-7670a0.objdump.txt;
   reference . */

void ScriptCore_SACS__SACS_EnterStateImpl(int param_1,int param_2)

{
  int *piVar1;
  void *this;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    FUN_00803d60(this,param_1,param_2);
  }
  return;
}

