/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011638c0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_AddDesignPresetImpl [assembly=ScriptCore token=0x0600081C;
   presetStr: System.String, subsort: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ObjectDesigner_AddDesignPresetImpl
               (undefined4 param_1,undefined4 param_2)

{
  void *this;
  int *piVar1;
  short *psVar2;
  undefined4 uVar3;
  
  this = (void *)ProductPresets_GetGlobalOwner();
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar3 = 4;
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1,4,param_2);
  FUN_00b38240(this,psVar2,(byte)param_1,uVar3);
  return;
}

