/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011637c8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectDesigner_SetPatternImpl [assembly=ScriptCore token=0x060007FD;
   patternKey: Sims3.SimIFace.ResourceKey, presetKey: Sims3.SimIFace.ResourceKey;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectDesigner_SetPatternImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  void *this;
  
  this = (void *)ProductPresets_GetGlobalOwner();
  param_5 = param_3;
  param_6 = param_4;
  param_7 = param_1;
  param_8 = param_2;
  FUN_00b37960(this,&param_5);
  return;
}

