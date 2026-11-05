/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_StateMachineDriver_GetParameter. Export
   ordinal(s): 2195. Entry VA: 0x1098cd60. Original managed P/Invoke MethodDef(s): none located in
   the shipped managed assemblies. This is an export/declaration annotation only; ABI, behavior and
   runtime execution require the original instructions and caller evidence. */

uint __cdecl SacsWrap_StateMachineDriver_GetParameter(void *param_1,wint_t *param_2)

{
  uint uVar1;
  
                    /* 0x98cd60  2195  SacsWrap_StateMachineDriver_GetParameter */
  if ((param_1 != (void *)0x0) && (param_2 != (wint_t *)0x0)) {
    uVar1 = FUN_105f2100(param_1,param_2,'\0');
    return uVar1;
  }
  return 0;
}

