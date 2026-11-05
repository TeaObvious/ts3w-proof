/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01197348 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_SetWeatherOverride [assembly=ScriptCore token=0x06000243;
   weatherType: System.Single, transitionTime: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.GameUtils::GameUtils_SetWeatherOverride(undefined4 param_1,undefined4 param_2)

{
  byte local_60 [4];
  undefined **local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  
  local_4c = param_1;
  local_60[0] = 0xff;
  local_60[1] = 0x43;
  local_60[2] = 0xa6;
  local_60[3] = 8;
  local_58 = 0;
  local_54 = 0;
  local_5c = &PTR_PTR_01197358;
  local_50 = param_2;
  RenderCommand_EnqueueIfDispatcherExists(local_60);
  if (local_5c != (undefined **)0x0) {
    (**(code **)*local_5c)(&local_50);
  }
  return;
}

