/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_SelectOnParameterNode_RemoveCaseTarget.
   Export ordinal(s): 2185. Entry VA: 0x1098e4e0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000E27. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
SacsWrap_SelectOnParameterNode_RemoveCaseTarget(void *param_1,wint_t *param_2,uint param_3)

{
  ulong uVar1;
  
                    /* 0x98e4e0  2185  SacsWrap_SelectOnParameterNode_RemoveCaseTarget */
  if (((param_1 != (void *)0x0) && (param_2 != (wint_t *)0x0)) && (param_3 != 0)) {
    uVar1 = FUN_105ee7f0(param_2);
    FUN_1098e400(param_1,uVar1,param_3);
  }
  return;
}

