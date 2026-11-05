/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* PC 1.67 registered ScriptCore.SACS::SACS_CanPauseImpl. If driver exists, calls 0x008000E0 with
   actorHash; otherwise returns false. Raw proof:
   guides/sacs/native/disassembly/can-pause-entry-7670d0.objdump.txt;
   reference . */



/* PC 1.67 registered ScriptCore.SACS::SACS_CanPauseImpl. If driver exists, calls 0x008000E0 with
   actorHash; otherwise returns false. Raw proof: the canonical ASM/C pair for this function;
   reference SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

bool ScriptCore_SACS__SACS_CanPauseImpl(int param_1)

{
  bool bVar1;
  int *piVar2;
  void *this;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar2 + 0xcc))(param_1);
  if (this == (void *)0x0) {
    return false;
  }
  bVar1 = SacsDriver_CanPauseActor(this,param_1);
  return bVar1;
}

