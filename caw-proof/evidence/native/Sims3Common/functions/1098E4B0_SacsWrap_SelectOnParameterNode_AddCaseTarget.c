/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_SelectOnParameterNode_AddCaseTarget.
   Export ordinal(s): 2179. Entry VA: 0x1098e4b0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000E26. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
SacsWrap_SelectOnParameterNode_AddCaseTarget(void *param_1,wint_t *param_2,uint param_3)

{
  ulong uVar1;
  
                    /* 0x98e4b0  2179  SacsWrap_SelectOnParameterNode_AddCaseTarget */
  if (((param_1 != (void *)0x0) && (param_2 != (wint_t *)0x0)) && (param_3 != 0)) {
    uVar1 = FUN_105ee7f0(param_2);
    FUN_105f13a0(param_1,uVar1,param_3);
  }
  return;
}

