/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_DestroyClipInfoHandleImpl. Export
   ordinal(s): 712. Entry VA: 0x1055af30. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000EBB. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SACS_DestroyClipInfoHandleImpl(int *param_1)

{
                    /* 0x55af30  712  SACS_DestroyClipInfoHandleImpl */
  if (param_1 != (int *)0x0) {
    if (*param_1 != 0) {
      FUN_10918e90(*param_1);
    }
    FUN_10918e90((int)param_1);
  }
  return;
}

