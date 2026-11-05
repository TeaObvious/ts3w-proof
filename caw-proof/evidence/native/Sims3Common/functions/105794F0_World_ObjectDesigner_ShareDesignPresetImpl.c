/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectDesigner_ShareDesignPresetImpl.
   Export ordinal(s): 1514. Entry VA: 0x105794f0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C75. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
World_ObjectDesigner_ShareDesignPresetImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  void *this;
  int *piVar1;
  uint uVar2;
  LPCWSTR pWVar3;
  LPCWSTR pWVar4;
  short *unaff_ESI;
  
                    /* 0x5794f0  1514  World_ObjectDesigner_ShareDesignPresetImpl */
  this = (void *)FUN_100f8460();
  piVar1 = (int *)FUN_1055b120();
  uVar2 = (**(code **)(*piVar1 + 0x58))(param_3,param_4,param_5);
  pWVar3 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  pWVar4 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  FUN_101027c0(this,pWVar4,unaff_ESI,pWVar3,param_1,uVar2);
  return;
}

