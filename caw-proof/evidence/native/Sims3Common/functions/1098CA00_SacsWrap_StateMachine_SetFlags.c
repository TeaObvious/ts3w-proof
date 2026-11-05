/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_StateMachine_SetFlags. Export
   ordinal(s): 2223. Entry VA: 0x1098ca00. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000CE1. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SacsWrap_StateMachine_SetFlags(int param_1,undefined4 param_2)

{
                    /* 0x98ca00  2223  SacsWrap_StateMachine_SetFlags */
  if (param_1 != 0) {
    *(undefined4 *)(param_1 + 0x3c) = param_2;
  }
  return;
}

