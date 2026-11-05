/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011638e0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_IsUserColorInfoPresetImpl [assembly=ScriptCore
   token=0x06000827; key: Sims3.SimIFace.ResourceKey; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectDesigner_IsUserColorInfoPresetImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *this;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  this = (void *)ProductPresets_GetGlobalOwner();
  local_10 = param_3;
  local_8 = param_1;
  local_c = param_4;
  local_4 = param_2;
  FUN_00b30df0(this,&local_10);
  return;
}

