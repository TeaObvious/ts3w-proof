/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161348 (original PC 1.67 TS3W.exe).
   ScriptCore.LookAtTask::LookAt_GetHoldJointLimitsImpl [assembly=ScriptCore token=0x06000FBF;
   handle: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 __cdecl ScriptCore.LookAtTask::LookAt_GetHoldJointLimitsImpl(uint param_1)

{
  int iVar1;
  undefined1 uVar2;
  int *piVar3;
  undefined4 *puVar4;
  
  if ((param_1 & 0xff000000) == 0x46000000) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    puVar4 = (undefined4 *)(**(code **)(*piVar3 + 0xcc))(param_1);
    if (puVar4 != (undefined4 *)0x0) {
      puVar4[1] = puVar4[1] + 1;
      piVar3 = (int *)FUN_00739aa0((int)puVar4);
      uVar2 = (**(code **)(*piVar3 + 0x18))();
      iVar1 = puVar4[1];
      puVar4[1] = iVar1 + -1;
      if (iVar1 + -1 == 0) {
        puVar4[1] = 1;
        (**(code **)*puVar4)(1);
      }
      return uVar2;
    }
  }
  return 1;
}

