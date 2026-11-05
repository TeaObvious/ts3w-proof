/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011971f0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_ToggleDebugInfo [assembly=ScriptCore token=0x06000250; show:
   System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.GameUtils::GameUtils_ToggleDebugInfo(char param_1)

{
  void *pvVar1;
  
  FUN_00ec0380(param_1);
  pvVar1 = LoadPump_ReadFrameServiceGlobal();
  if (pvVar1 != (void *)0x0) {
    *(char *)((int)pvVar1 + 0x26f) = param_1;
  }
  return;
}

