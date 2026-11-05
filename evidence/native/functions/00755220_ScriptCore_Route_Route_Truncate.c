/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161b48 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_Truncate [assembly=ScriptCore token=0x06001140; routeHandle:
   System.UInt32, beginSegmentId: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.Route::Route_Truncate(uint param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  
  piVar3 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
  if (piVar3 == (int *)0x0) {
    return;
  }
  (**(code **)(*piVar3 + 0x10))();
  if ((char)piVar3[0x3d] == '\0') {
    piVar4 = piVar3 + 0x38;
    if ((int *)*piVar4 == piVar4) goto LAB_007552b6;
    piVar4 = *(int **)(*piVar4 + 8);
  }
  else {
    piVar4 = (int *)piVar3[0x3b];
  }
  if (piVar4 != (int *)0x0) {
    piVar1 = piVar4 + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    (**(code **)(*piVar4 + 0x10c))(param_2);
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
                    /* WARNING: Could not recover jumptable at 0x007552b4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar3 + 0x14))();
    return;
  }
LAB_007552b6:
                    /* WARNING: Could not recover jumptable at 0x007552c2. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar3 + 0x14))();
  return;
}

