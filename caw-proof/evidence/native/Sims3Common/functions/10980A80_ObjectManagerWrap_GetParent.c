/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_GetParent;
   ScriptComponent_GetName. Export ordinal(s): 1975; 2291. Entry VA: 0x10980a80. Original managed
   P/Invoke MethodDef(s): CSHostWrap:0x0600012D; CSHostWrap:0x0600025F. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl ObjectManagerWrap_GetParent(int param_1)

{
                    /* 0x980a80  1975  ObjectManagerWrap_GetParent
                       0x980a80  2291  ScriptComponent_GetName */
  if (param_1 != 0) {
    return *(undefined4 *)(param_1 + 0x10);
  }
  return 0;
}

