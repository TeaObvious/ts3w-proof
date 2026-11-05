/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161380 (original PC 1.67 TS3W.exe).
   ScriptCore.LookAtTask::LookAt_SetTorsoThresholdImpl [assembly=ScriptCore token=0x06000FC6;
   handle: System.UInt32, torsoThreshold: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.LookAtTask::LookAt_SetTorsoThresholdImpl(uint param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 *this;
  
  if ((param_1 & 0xff000000) == 0x46000000) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    this = (undefined4 *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if (this != (undefined4 *)0x0) {
      this[1] = this[1] + 1;
      FUN_00580480(this,param_1);
      iVar1 = this[1];
      this[1] = iVar1 + -1;
      if (iVar1 + -1 == 0) {
        this[1] = 1;
        (**(code **)*this)(1);
      }
    }
  }
  return;
}

