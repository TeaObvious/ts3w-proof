/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ModelComponent_UpdateMaterialParameterFloat.
   Export ordinal(s): 1944. Entry VA: 0x10981ce0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060005AD. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
ModelComponent_UpdateMaterialParameterFloat(int param_1,undefined4 param_2,char *param_3)

{
  int iVar1;
  int *piVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined1 *puVar5;
  undefined4 uVar6;
  
                    /* 0x981ce0  1944  ModelComponent_UpdateMaterialParameterFloat */
  piVar2 = FUN_10981c00(param_1);
  if (piVar2 != (int *)0x0) {
    iVar1 = *piVar2;
    uVar6 = 1;
    puVar5 = &stack0x00000010;
    uVar4 = 1;
    uVar3 = FUN_105c39b0(param_3);
    (**(code **)(iVar1 + 0x1c))(param_2,uVar3,uVar4,puVar5,uVar6);
  }
  return;
}

