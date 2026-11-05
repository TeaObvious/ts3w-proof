/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_CreatePropNode_SetKey. Export
   ordinal(s): 2123. Entry VA: 0x1098d580. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000E98. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
SacsWrap_CreatePropNode_SetKey
          (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5)

{
                    /* 0x98d580  2123  SacsWrap_CreatePropNode_SetKey */
  if (param_1 != 0) {
    *(undefined4 *)(param_1 + 0x58) = param_4;
    *(undefined4 *)(param_1 + 0x5c) = param_5;
    *(undefined4 *)(param_1 + 0x60) = param_2;
    *(undefined4 *)(param_1 + 100) = param_3;
  }
  return;
}

