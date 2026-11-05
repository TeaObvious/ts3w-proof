/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ScriptComponent_GetScriptHandle. Export
   ordinal(s): 2292. Entry VA: 0x1097f860. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600012C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined8 __cdecl ScriptComponent_GetScriptHandle(int param_1)

{
                    /* 0x97f860  2292  ScriptComponent_GetScriptHandle */
  if (param_1 != 0) {
    return *(undefined8 *)(param_1 + 8);
  }
  return 0;
}

