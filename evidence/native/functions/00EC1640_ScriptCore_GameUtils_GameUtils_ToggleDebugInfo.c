/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011971f0 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_ToggleDebugInfo [assembly=ScriptCore token=0x06000250; show:
   System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.GameUtils::GameUtils_ToggleDebugInfo(char param_1)

{
  int iVar1;
  
  FUN_00ec0380(param_1);
  iVar1 = FUN_006e8170();
  if (iVar1 != 0) {
    *(char *)(iVar1 + 0x26f) = param_1;
  }
  return;
}

