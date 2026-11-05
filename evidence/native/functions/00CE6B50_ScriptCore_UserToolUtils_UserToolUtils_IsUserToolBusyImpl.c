/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189f90 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_IsUserToolBusyImpl [assembly=ScriptCore token=0x06000C21;
   ; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_UserToolUtils__UserToolUtils_IsUserToolBusyImpl(void)

{
  uint uVar1;
  
  uVar1 = FUN_00cef500();
  if ((uVar1 != 0) && (*(int **)(uVar1 + 0x2c) != (int *)0x0)) {
                    /* WARNING: Could not recover jumptable at 0x00ce6b65. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    uVar1 = (**(code **)(**(int **)(uVar1 + 0x2c) + 0x30))();
    return uVar1;
  }
  return uVar1 & 0xffffff00;
}

