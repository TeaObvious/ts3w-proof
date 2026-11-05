/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161ac0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_GetDistanceBetweenSegments [assembly=ScriptCore token=0x06001149; handle:
   System.UInt32, startSegmentId: System.UInt32, endSegmentID: System.UInt32; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_Route__Route_GetDistanceBetweenSegments
                  (uint param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  float10 fVar5;
  
  if (DAT_011d50c4 == (void *)0x0) goto LAB_00753d64;
  piVar3 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
  if (piVar3 == (int *)0x0) goto LAB_00753d64;
  (**(code **)(*piVar3 + 0x10))();
  if ((char)piVar3[0x3d] == '\0') {
    piVar4 = piVar3 + 0x38;
    if ((int *)*piVar4 != piVar4) {
      piVar4 = *(int **)(*piVar4 + 8);
      goto LAB_00753d00;
    }
  }
  else {
    piVar4 = (int *)piVar3[0x3b];
LAB_00753d00:
    if (piVar4 != (int *)0x0) {
      piVar1 = piVar4 + 1;
      LOCK();
      *piVar1 = *piVar1 + 1;
      UNLOCK();
      fVar5 = (float10)(**(code **)(*piVar4 + 0x70))(param_2,param_3);
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*piVar4)(1);
      }
      (**(code **)(*piVar3 + 0x14))();
      return (float10)(float)fVar5;
    }
  }
  (**(code **)(*piVar3 + 0x14))();
LAB_00753d64:
  return (float10)0;
}

