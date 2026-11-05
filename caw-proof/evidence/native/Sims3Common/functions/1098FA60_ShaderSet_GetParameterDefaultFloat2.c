/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ShaderSet_GetParameterDefaultFloat2. Export
   ordinal(s): 2306. Entry VA: 0x1098fa60. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060003C5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined8 __cdecl ShaderSet_GetParameterDefaultFloat2(void *param_1,int param_2)

{
  int iVar1;
  undefined8 *puVar2;
  
                    /* 0x98fa60  2306  ShaderSet_GetParameterDefaultFloat2 */
  iVar1 = FUN_105932c0(param_1,param_2);
  if (iVar1 != 2) {
    return CONCAT44(DAT_10b97260,DAT_10b9725c);
  }
  puVar2 = (undefined8 *)FUN_10593310(param_1,param_2);
  return *puVar2;
}

