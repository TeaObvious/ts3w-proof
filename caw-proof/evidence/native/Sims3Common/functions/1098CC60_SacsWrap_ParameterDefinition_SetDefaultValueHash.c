/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_ParameterDefinition_SetDefaultValueHash.
   Export ordinal(s): 2151. Entry VA: 0x1098cc60. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000D7C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SacsWrap_ParameterDefinition_SetDefaultValueHash(int param_1,undefined4 param_2)

{
                    /* 0x98cc60  2151  SacsWrap_ParameterDefinition_SetDefaultValueHash */
  if (param_1 != 0) {
    if (*(int *)(param_1 + 0x38) != 0) {
      FUN_10918e90(*(int *)(param_1 + 0x38));
    }
    *(undefined4 *)(param_1 + 0x34) = param_2;
    *(undefined4 *)(param_1 + 0x38) = 0;
  }
  return;
}

