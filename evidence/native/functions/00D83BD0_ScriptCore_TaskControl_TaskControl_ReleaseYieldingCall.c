/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0108d690 (original PC 1.67 TS3W.exe).
   ScriptCore.TaskControl::TaskControl_ReleaseYieldingCall [assembly=ScriptCore token=0x0600012D;
   handle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.TaskControl::TaskControl_ReleaseYieldingCall(uint param_1)

{
  int iVar1;
  int *piVar2;
  
  if ((param_1 & 0xff000000) == 0x43000000) {
    iVar1 = GetGlobalInterfacePointer_11D5BBC();
    if (iVar1 == 0) {
      iVar1 = 0;
    }
    else {
      iVar1 = iVar1 + -8;
    }
    piVar2 = (int *)(**(code **)(*(int *)(iVar1 + 8) + 0xd8))(param_1);
    if (piVar2 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x00d83c0e. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar2 + 4))();
      return;
    }
  }
  return;
}

