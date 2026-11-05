/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_ActorOperationNode_GetOperation;
   SacsWrap_CreatePropNode_GetParameter. Export ordinal(s): 2100; 2121. Entry VA: 0x1098d2c0.
   Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000E99; CSHostWrap:0x06000EAA. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl SacsWrap_ActorOperationNode_GetOperation(int param_1)

{
                    /* 0x98d2c0  2100  SacsWrap_ActorOperationNode_GetOperation
                       0x98d2c0  2121  SacsWrap_CreatePropNode_GetParameter */
  if (param_1 != 0) {
    return *(undefined4 *)(param_1 + 0x54);
  }
  return 0;
}

