/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011972e0 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_RemoveStartupScreen [assembly=ScriptCore token=0x0600026E; ;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_GameUtils__GameUtils_RemoveStartupScreen(void)

{
  int *piVar1;
  
  piVar1 = (int *)FUN_0050af90();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x1c))(&LAB_00ec7b70,0);
  }
  FUN_00ec6fd0();
  return;
}

