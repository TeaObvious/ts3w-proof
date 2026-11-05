/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_GetName;
   SacsWrap_ActorOperationNode_GetTarget; SacsWrap_CreatePropNode_GetActor;
   SacsWrap_SelectOnParameterNode_GetParameter. Export ordinal(s): 1970; 2101; 2119; 2184. Entry VA:
   0x1098d5b0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000261; CSHostWrap:0x06000E25;
   CSHostWrap:0x06000E95; CSHostWrap:0x06000EA8. This is an export/declaration annotation only; ABI,
   behavior and runtime execution require the original instructions and caller evidence. */

undefined4 __cdecl ObjectManagerWrap_GetName(int param_1)

{
                    /* 0x98d5b0  1970  ObjectManagerWrap_GetName
                       0x98d5b0  2101  SacsWrap_ActorOperationNode_GetTarget
                       0x98d5b0  2119  SacsWrap_CreatePropNode_GetActor
                       0x98d5b0  2184  SacsWrap_SelectOnParameterNode_GetParameter */
  if (param_1 != 0) {
    return *(undefined4 *)(param_1 + 0x50);
  }
  return 0;
}

