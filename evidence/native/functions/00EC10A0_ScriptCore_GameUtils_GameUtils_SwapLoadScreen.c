/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011972e8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.GameUtils::GameUtils_SwapLoadScreen [assembly=ScriptCore token=0x0600026F; callback:
   System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   Physical adapter closure (PC 1.67): the complete five-byte E9 instruction tail-jumps to 007F1B50.
   It is a JMP, not a CALL or an adapter RET. The target consumes the existing callback stack word
   and returns with plain RET; the preserved registered-entry prototype remains an inference
   artifact. Only EC10A0..EC10A4 is admitted to this adapter body; alignment and neighboring entries
   are excluded. */

void ScriptCore_GameUtils__GameUtils_SwapLoadScreen(undefined4 param_1)

{
  int *piVar1;
  
  piVar1 = (int *)FUN_0050af90();
  if (piVar1 != (int *)0x0) {
    DAT_011d9c4c = param_1;
    (**(code **)(*piVar1 + 0x1c))(GameUtils_DispatchPendingLoadScreenSwap,0);
  }
  return;
}

