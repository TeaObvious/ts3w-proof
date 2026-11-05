/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163838 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_GetHairSwatchThumbnailImpl [assembly=ScriptCore
   token=0x0600080C; instanceId: System.UInt64, root: System.UInt32, diffuse: System.UInt32,
   highlight: System.UInt32, tips: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ObjectDesigner_GetHairSwatchThumbnailImpl
               (uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *this;
  
  this = (void *)ProductPresets_GetGlobalOwner();
  FUN_00b363c0(this,param_1,param_2,param_3,param_4);
  return;
}

