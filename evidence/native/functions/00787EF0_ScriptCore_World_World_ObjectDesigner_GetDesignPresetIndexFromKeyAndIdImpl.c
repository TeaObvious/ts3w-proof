/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163888 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_GetDesignPresetIndexFromKeyAndIdImpl [assembly=ScriptCore
   token=0x06000817; key: Sims3.SimIFace.ResourceKey, id: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectDesigner_GetDesignPresetIndexFromKeyAndIdImpl
          (undefined4 param_1,undefined4 param_2,uint param_3,undefined4 param_4,uint param_5)

{
  void *this;
  uint *puVar1;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  puVar1 = &local_10;
  local_c = param_4;
  local_8 = param_1;
  local_10 = param_3;
  local_4 = param_2;
  this = (void *)ProductPresets_GetGlobalOwner();
  FUN_00b32b20(this,puVar1,param_5);
  return;
}

