/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* PC 1.67 registered ScriptCore.SACS::SACS_EnterStateImpl. If driver exists, forwards actorHash and
   stateHash to 0x00803D60; missing driver is a no-op. Compare the callee before assigning
   EnterState result semantics. Raw proof:
   guides/sacs/native/disassembly/enter-state-entry-7670a0.objdump.txt;
   reference . */



/* PC 1.67 registered ScriptCore.SACS::SACS_EnterStateImpl. If driver exists, forwards actorHash and
   stateHash to 0x00803D60; missing driver is a no-op. Compare the callee before assigning
   EnterState result semantics. Raw proof: the canonical ASM/C pair for this function; reference
   SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

void ScriptCore_SACS__SACS_EnterStateImpl(int param_1,int param_2)

{
  int *piVar1;
  void *this;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    SacsDriver_EnterActorState(this,param_1,param_2);
  }
  return;
}

