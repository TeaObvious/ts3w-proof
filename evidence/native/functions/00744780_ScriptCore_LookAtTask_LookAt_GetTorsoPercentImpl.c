/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161388 (original PC 1.67 TS3W.exe).
   ScriptCore.LookAtTask::LookAt_GetTorsoPercentImpl [assembly=ScriptCore token=0x06000FC7; handle:
   System.UInt32; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 __cdecl ScriptCore.LookAtTask::LookAt_GetTorsoPercentImpl(uint param_1)

{
  float fVar1;
  int *piVar2;
  undefined4 *puVar3;
  int iVar4;
  
  if ((param_1 & 0xff000000) == 0x46000000) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if (puVar3 != (undefined4 *)0x0) {
      puVar3[1] = puVar3[1] + 1;
      piVar2 = (int *)FUN_00739aa0((int)puVar3);
      iVar4 = (**(code **)(*piVar2 + 0x1c))();
      fVar1 = *(float *)(iVar4 + 8);
      iVar4 = puVar3[1];
      puVar3[1] = iVar4 + -1;
      if (iVar4 + -1 == 0) {
        puVar3[1] = 1;
        (**(code **)*puVar3)(1);
      }
      return (float10)fVar1;
    }
  }
  return (float10)DAT_00f998f8;
}

