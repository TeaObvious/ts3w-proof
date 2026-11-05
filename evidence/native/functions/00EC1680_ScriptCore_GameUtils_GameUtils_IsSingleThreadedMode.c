/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01197238 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_IsSingleThreadedMode [assembly=ScriptCore token=0x06000259; ;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore_GameUtils__GameUtils_IsSingleThreadedMode(void)

{
  uint uVar1;
  uint uVar2;
  
  uVar1 = ThreadIdentity_ReadRemoteDispatchThreadId();
  uVar2 = ThreadIdentity_ReadRegisteredPumpThreadId();
  return uVar1 == uVar2;
}

