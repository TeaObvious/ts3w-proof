/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ShaderSet_GetParameterDefaultFloat4. Export
   ordinal(s): 2308. Entry VA: 0x1098fb50. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060003C7. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl ShaderSet_GetParameterDefaultFloat4(undefined4 *param_1,void *param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 *puVar5;
  
                    /* 0x98fb50  2308  ShaderSet_GetParameterDefaultFloat4 */
  iVar4 = FUN_105932c0(param_2,param_3);
  uVar1 = DAT_10b97274;
  if (iVar4 != 4) {
    *param_1 = DAT_10b97270;
    uVar2 = DAT_10b97278;
    param_1[1] = uVar1;
    uVar1 = DAT_10b9727c;
    param_1[2] = uVar2;
    param_1[3] = uVar1;
    return;
  }
  puVar5 = (undefined4 *)FUN_10593310(param_2,param_3);
  uVar1 = puVar5[1];
  uVar2 = puVar5[2];
  uVar3 = puVar5[3];
  *param_1 = *puVar5;
  param_1[1] = uVar1;
  param_1[2] = uVar2;
  param_1[3] = uVar3;
  return;
}

