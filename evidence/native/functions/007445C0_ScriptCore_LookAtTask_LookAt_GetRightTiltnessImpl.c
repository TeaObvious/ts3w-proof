/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161368 (original PC 1.67 TS3W.exe).
   ScriptCore.LookAtTask::LookAt_GetRightTiltnessImpl [assembly=ScriptCore token=0x06000FC3; handle:
   System.UInt32; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 __cdecl ScriptCore.LookAtTask::LookAt_GetRightTiltnessImpl(uint param_1)

{
  float fVar1;
  int iVar2;
  int *piVar3;
  undefined4 *puVar4;
  float *pfVar5;
  
  if ((param_1 & 0xff000000) == 0x46000000) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    puVar4 = (undefined4 *)(**(code **)(*piVar3 + 0xcc))(param_1);
    if (puVar4 != (undefined4 *)0x0) {
      puVar4[1] = puVar4[1] + 1;
      piVar3 = (int *)FUN_00739aa0((int)puVar4);
      pfVar5 = (float *)(**(code **)(*piVar3 + 0x1c))();
      fVar1 = *pfVar5;
      iVar2 = puVar4[1];
      puVar4[1] = iVar2 + -1;
      if (iVar2 + -1 == 0) {
        puVar4[1] = 1;
        (**(code **)*puVar4)(1);
      }
      return (float10)fVar1;
    }
  }
  return (float10)DAT_00f998f8;
}

