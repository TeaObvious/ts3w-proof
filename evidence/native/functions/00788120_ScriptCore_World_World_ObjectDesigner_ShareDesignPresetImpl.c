/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011638e8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_ShareDesignPresetImpl [assembly=ScriptCore
   token=0x0600081D; packageName: System.String, presetStr: System.String, presetDesc:
   System.String, subsort: System.UInt32, presetId: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ObjectDesigner_ShareDesignPresetImpl
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5)

{
  void *this;
  int *piVar1;
  uint uVar2;
  LPCWSTR pWVar3;
  LPCWSTR pWVar4;
  short *unaff_ESI;
  
  this = (void *)ProductPresets_GetGlobalOwner();
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar2 = (**(code **)(*piVar1 + 0x58))(param_3,param_4,param_5);
  pWVar3 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  pWVar4 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  FUN_00b39580(this,pWVar4,unaff_ESI,pWVar3,param_1,uVar2);
  return;
}

