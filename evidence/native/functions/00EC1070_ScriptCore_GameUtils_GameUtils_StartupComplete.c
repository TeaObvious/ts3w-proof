/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011972d8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_StartupComplete [assembly=ScriptCore token=0x0600026D; ;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_GameUtils__GameUtils_StartupComplete(void)

{
  int *piVar1;
  
  piVar1 = (int *)MessageDispatch_GetCurrent();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x1c))(0xd594e3ae,0,0,0);
  }
  return;
}

