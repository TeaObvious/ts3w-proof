/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ModelComponent_UpdateMaterialParameterFloat3.
   Export ordinal(s): 1946. Entry VA: 0x10981d60. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060005AF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
ModelComponent_UpdateMaterialParameterFloat3
          (int param_1,undefined4 param_2,char *param_3,undefined4 param_4)

{
  int iVar1;
  int *piVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  
                    /* 0x981d60  1946  ModelComponent_UpdateMaterialParameterFloat3 */
  piVar2 = FUN_10981c00(param_1);
  if (piVar2 != (int *)0x0) {
    iVar1 = *piVar2;
    uVar5 = 3;
    uVar4 = 1;
    uVar3 = FUN_105c39b0(param_3);
    (**(code **)(iVar1 + 0x1c))(param_2,uVar3,uVar4,param_4,uVar5);
  }
  return;
}

