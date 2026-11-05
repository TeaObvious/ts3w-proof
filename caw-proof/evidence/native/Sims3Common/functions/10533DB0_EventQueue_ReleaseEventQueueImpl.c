/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: EventQueue_ReleaseEventQueueImpl. Export
   ordinal(s): 429. Entry VA: 0x10533db0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000353. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl EventQueue_ReleaseEventQueueImpl(uint param_1)

{
  int *piVar1;
  
                    /* 0x533db0  429  EventQueue_ReleaseEventQueueImpl */
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x118))();
    if ((param_1 & 0xff000000) == 0x22000000) {
      piVar1 = (int *)(**(code **)(*piVar1 + 0xd8))(param_1);
      if (piVar1 != (int *)0x0) {
        piVar1[2] = 0;
                    /* WARNING: Could not recover jumptable at 0x10533dfc. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        (**(code **)(*piVar1 + 4))();
        return;
      }
    }
  }
  return;
}

