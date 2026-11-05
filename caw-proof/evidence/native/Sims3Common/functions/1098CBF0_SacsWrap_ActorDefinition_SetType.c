/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_ActorDefinition_SetType;
   SacsWrap_StateMachine_SetDefaultPriority. Export ordinal(s): 2097; 2222. Entry VA: 0x1098cbf0.
   Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000CE3; CSHostWrap:0x06000D6A. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl SacsWrap_ActorDefinition_SetType(int param_1,undefined4 param_2)

{
                    /* 0x98cbf0  2097  SacsWrap_ActorDefinition_SetType
                       0x98cbf0  2222  SacsWrap_StateMachine_SetDefaultPriority */
  if (param_1 != 0) {
    *(undefined4 *)(param_1 + 0x34) = param_2;
  }
  return;
}

