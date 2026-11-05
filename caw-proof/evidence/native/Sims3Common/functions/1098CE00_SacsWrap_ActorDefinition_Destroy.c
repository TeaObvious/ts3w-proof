/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_ActorDefinition_Destroy;
   SacsWrap_DecisionGraph_Destroy; SacsWrap_ParameterDefinition_Destroy; SacsWrap_Release;
   SacsWrap_StateMachine_Destroy. Export ordinal(s): 2093; 2133; 2146; 2172; 2209. Entry VA:
   0x1098ce00. Original managed P/Invoke MethodDef(s): none located in the shipped managed
   assemblies. This is an export/declaration annotation only; ABI, behavior and runtime execution
   require the original instructions and caller evidence. */

void __cdecl SacsWrap_ActorDefinition_Destroy(int *param_1)

{
                    /* 0x98ce00  2093  SacsWrap_ActorDefinition_Destroy
                       0x98ce00  2133  SacsWrap_DecisionGraph_Destroy
                       0x98ce00  2146  SacsWrap_ParameterDefinition_Destroy
                       0x98ce00  2172  SacsWrap_Release
                       0x98ce00  2209  SacsWrap_StateMachine_Destroy */
  if ((DAT_10c7d5a0 != 0) && (param_1 != (int *)0x0)) {
                    /* WARNING: Could not recover jumptable at 0x1098ce16. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*param_1 + 4))();
    return;
  }
  return;
}

