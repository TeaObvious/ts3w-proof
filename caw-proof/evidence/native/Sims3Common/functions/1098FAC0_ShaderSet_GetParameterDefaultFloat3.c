/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ShaderSet_GetParameterDefaultFloat3. Export
   ordinal(s): 2307. Entry VA: 0x1098fac0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060003C6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl ShaderSet_GetParameterDefaultFloat3(undefined4 *param_1,void *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  
                    /* 0x98fac0  2307  ShaderSet_GetParameterDefaultFloat3 */
  iVar3 = FUN_105932c0(param_2,param_3);
  uVar1 = DAT_10b97268;
  if (iVar3 != 3) {
    *param_1 = DAT_10b97264;
    uVar2 = DAT_10b9726c;
    param_1[1] = uVar1;
    param_1[2] = uVar2;
    return;
  }
  puVar4 = (undefined4 *)FUN_10593310(param_2,param_3);
  uVar1 = puVar4[1];
  uVar2 = puVar4[2];
  *param_1 = *puVar4;
  param_1[1] = uVar1;
  param_1[2] = uVar2;
  return;
}

