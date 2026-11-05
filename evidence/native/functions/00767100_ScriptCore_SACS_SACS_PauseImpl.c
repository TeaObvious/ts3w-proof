/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* PC 1.67 registered ScriptCore.SACS::SACS_PauseImpl. If driver exists, calls 0x00803FE0 with
   actorHash; otherwise returns false. Raw proof:
   guides/sacs/native/disassembly/pause-entry-767100.objdump.txt; reference
   . */



/* PC 1.67 registered ScriptCore.SACS::SACS_PauseImpl. If driver exists, calls 0x00803FE0 with
   actorHash; otherwise returns false. Raw proof: the canonical ASM/C pair for this function;
   reference SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

undefined4 ScriptCore_SACS__SACS_PauseImpl(int param_1)

{
  int *piVar1;
  void *this;
  undefined4 uVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this == (void *)0x0) {
    return 0;
  }
  uVar2 = SacsDriver_PauseActorWalkers(this,param_1);
  return uVar2;
}

