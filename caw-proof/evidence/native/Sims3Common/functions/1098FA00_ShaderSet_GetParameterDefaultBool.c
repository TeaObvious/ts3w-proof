/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ShaderSet_GetParameterDefaultBool. Export
   ordinal(s): 2304. Entry VA: 0x1098fa00. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060003C3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl ShaderSet_GetParameterDefaultBool(void *param_1,int param_2)

{
  int iVar1;
  int *piVar2;
  
                    /* 0x98fa00  2304  ShaderSet_GetParameterDefaultBool */
  iVar1 = FUN_105932c0(param_1,param_2);
  if (iVar1 == 5) {
    piVar2 = (int *)FUN_10593310(param_1,param_2);
    return *piVar2 != 0;
  }
  return false;
}

