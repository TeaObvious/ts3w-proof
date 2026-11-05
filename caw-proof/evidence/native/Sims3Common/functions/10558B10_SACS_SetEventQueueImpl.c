/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_SetEventQueueImpl. Export ordinal(s): 729.
   Entry VA: 0x10558b10. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EA7. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl SACS_SetEventQueueImpl(undefined4 param_1)

{
  int *piVar1;
  void *this;
  
                    /* 0x558b10  729  SACS_SetEventQueueImpl */
  piVar1 = (int *)FUN_1055b120();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    FUN_105f1b30(this,piVar1);
  }
  return;
}

