/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ModelComponent_UpdateMaterialParameterBool.
   Export ordinal(s): 1943. Entry VA: 0x10981c90. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060005AC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
ModelComponent_UpdateMaterialParameterBool
          (int param_1,undefined4 param_2,char *param_3,char param_4)

{
  int iVar1;
  int *piVar2;
  uint uVar3;
  undefined4 uVar4;
  uint *puVar5;
  undefined4 uVar6;
  uint local_4;
  
                    /* 0x981c90  1943  ModelComponent_UpdateMaterialParameterBool */
  piVar2 = FUN_10981c00(param_1);
  if (piVar2 != (int *)0x0) {
    iVar1 = *piVar2;
    local_4 = (uint)(param_4 != '\0');
    uVar6 = 1;
    puVar5 = &local_4;
    uVar4 = 2;
    uVar3 = FUN_105c39b0(param_3);
    (**(code **)(iVar1 + 0x1c))(param_2,uVar3,uVar4,puVar5,uVar6);
  }
  return;
}

