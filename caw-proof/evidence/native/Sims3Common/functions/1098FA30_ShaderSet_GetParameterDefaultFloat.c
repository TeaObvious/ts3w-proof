/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ShaderSet_GetParameterDefaultFloat. Export
   ordinal(s): 2305. Entry VA: 0x1098fa30. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060003C4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

float10 __cdecl ShaderSet_GetParameterDefaultFloat(void *param_1,int param_2)

{
  int iVar1;
  float *pfVar2;
  
                    /* 0x98fa30  2305  ShaderSet_GetParameterDefaultFloat */
  iVar1 = FUN_105932c0(param_1,param_2);
  if (iVar1 == 1) {
    pfVar2 = (float *)FUN_10593310(param_1,param_2);
    return (float10)*pfVar2;
  }
  return (float10)0;
}

