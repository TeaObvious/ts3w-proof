/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01197348 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_SetWeatherOverride [assembly=ScriptCore token=0x06000243;
   weatherType: System.Single, transitionTime: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.GameUtils::GameUtils_SetWeatherOverride(undefined4 param_1,undefined4 param_2)

{
  undefined4 local_60;
  undefined **local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  
  local_4c = param_1;
  local_60 = 0x8a643ff;
  local_58 = 0;
  local_54 = 0;
  local_5c = &PTR_PTR_01197358;
  local_50 = param_2;
  FUN_00693380(&local_60);
  if (local_5c != (undefined **)0x0) {
    (**(code **)*local_5c)(&local_50);
  }
  return;
}

