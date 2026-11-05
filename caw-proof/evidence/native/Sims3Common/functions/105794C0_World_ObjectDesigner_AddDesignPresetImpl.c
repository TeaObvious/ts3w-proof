/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectDesigner_AddDesignPresetImpl. Export
   ordinal(s): 1469. Entry VA: 0x105794c0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C74. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_ObjectDesigner_AddDesignPresetImpl(undefined4 param_1,undefined4 param_2)

{
  void *this;
  int *piVar1;
  undefined4 uVar2;
  
                    /* 0x5794c0  1469  World_ObjectDesigner_AddDesignPresetImpl */
  this = (void *)FUN_100f8460();
  piVar1 = (int *)FUN_1055b120();
  uVar2 = 4;
  piVar1 = (int *)(**(code **)(*piVar1 + 0x58))(param_1,4,param_2);
  FUN_101012a0(this,piVar1,(byte)param_1,uVar2);
  return;
}

