/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189e18 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_FlushCommandQueues [assembly=ScriptCore token=0x06000BEA;
   ; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UserToolUtils__UserToolUtils_FlushCommandQueues(void)

{
  int iVar1;
  
  iVar1 = FUN_00cef500();
  if ((iVar1 != 0) && (*(int **)(iVar1 + 0x28) != (int *)0x0)) {
    FUN_00d398b0(*(int **)(iVar1 + 0x28));
    return;
  }
  return;
}

