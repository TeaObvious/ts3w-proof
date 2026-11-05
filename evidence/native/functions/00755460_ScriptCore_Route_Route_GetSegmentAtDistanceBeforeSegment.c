/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161b68 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_GetSegmentAtDistanceBeforeSegment [assembly=ScriptCore token=0x06001144;
   routeHandle: System.UInt32, beginSegmentId: System.UInt32, fDistance: System.Single, bCreate:
   System.Boolean; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.Route::Route_GetSegmentAtDistanceBeforeSegment
          (uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  undefined4 uVar4;
  int *piVar5;
  
  piVar3 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
  if (piVar3 == (int *)0x0) {
    return 0;
  }
  (**(code **)(*piVar3 + 0x10))();
  if ((char)piVar3[0x3d] == '\0') {
    piVar5 = piVar3 + 0x38;
    if ((int *)*piVar5 == piVar5) goto LAB_00755508;
    piVar5 = *(int **)(*piVar5 + 8);
  }
  else {
    piVar5 = (int *)piVar3[0x3b];
  }
  if (piVar5 != (int *)0x0) {
    piVar1 = piVar5 + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    uVar4 = (**(code **)(*piVar5 + 0xf0))(param_2,param_3,param_4);
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*piVar5)(1);
    }
    (**(code **)(*piVar3 + 0x14))();
    return uVar4;
  }
LAB_00755508:
  (**(code **)(*piVar3 + 0x14))();
  return 0;
}

