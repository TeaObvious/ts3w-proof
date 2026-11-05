/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011972d0 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_StartupYield [assembly=ScriptCore token=0x0600026C; callback:
   System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.GameUtils::GameUtils_StartupYield(undefined4 param_1)

{
  int *piVar1;
  undefined8 uVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar2 = (**(code **)(*piVar1 + 0x118))();
  FUN_00ec8680((int)uVar2,(int)((ulonglong)uVar2 >> 0x20));
  (**(code **)(*piVar1 + 0x120))(uVar2,0xffffffff,param_1,0);
                    /* WARNING: Could not recover jumptable at 0x00ec1068. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar1 + 0x11c))();
  return;
}

