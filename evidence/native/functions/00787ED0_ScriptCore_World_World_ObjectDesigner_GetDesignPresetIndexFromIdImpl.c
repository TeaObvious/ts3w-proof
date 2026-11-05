/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163880 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_GetDesignPresetIndexFromIdImpl [assembly=ScriptCore
   token=0x06000816; id: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ObjectDesigner_GetDesignPresetIndexFromIdImpl(uint param_1)

{
  void *this;
  
  this = (void *)ProductPresets_GetGlobalOwner();
  FUN_00b31050(this,param_1);
  return;
}

