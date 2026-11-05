/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156858 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimServiceEnableTimeSlicing [assembly=ScriptCore token=0x060003AB;
   bEnable: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CASUtils__CASUtils_SimServiceEnableTimeSlicing(undefined1 param_1)

{
  int iVar1;
  
  iVar1 = FUN_005ebac0();
  if (iVar1 != 0) {
    *(undefined1 *)(iVar1 + 0x139) = param_1;
  }
  return;
}

