/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_ActorDefinition_GetName;
   SacsWrap_ParameterDefinition_GetName. Export ordinal(s): 2094; 2149. Entry VA: 0x1098cbb0.
   Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000D67; CSHostWrap:0x06000D77. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl SacsWrap_ActorDefinition_GetName(int param_1)

{
  undefined4 uVar1;
  
                    /* 0x98cbb0  2094  SacsWrap_ActorDefinition_GetName
                       0x98cbb0  2149  SacsWrap_ParameterDefinition_GetName */
  if (param_1 != 0) {
    uVar1 = FUN_105eebb0(param_1);
    return uVar1;
  }
  return 0;
}

