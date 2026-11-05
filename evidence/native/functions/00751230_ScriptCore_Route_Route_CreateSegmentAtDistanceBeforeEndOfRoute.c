/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161b60 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_CreateSegmentAtDistanceBeforeEndOfRoute [assembly=ScriptCore
   token=0x06001143; routeHandle: System.UInt32, fDistance: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Route__Route_CreateSegmentAtDistanceBeforeEndOfRoute(uint param_1,float param_2)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  float10 fVar7;
  float fStack_c;
  
  piVar3 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
  if (piVar3 == (int *)0x0) {
    return;
  }
  (**(code **)(*piVar3 + 0x10))();
  piVar1 = piVar3 + 0x38;
  fStack_c = 0.0;
  piVar6 = piVar1;
  if (piVar1 != (int *)*piVar1) {
    do {
      piVar2 = *(int **)(piVar6[1] + 8);
      fVar7 = (float10)(**(code **)(*piVar2 + 300))();
      if ((float)fVar7 < param_2 - fStack_c) {
        fStack_c = (float)fVar7 + fStack_c;
      }
      else {
        iVar4 = (**(code **)(*piVar2 + 0x48))();
        if (iVar4 != 0) {
          iVar4 = *piVar2;
          iVar5 = (**(code **)(iVar4 + 0x48))(param_2 - fStack_c,1);
          (**(code **)(iVar4 + 0xec))(iVar5 + -1);
                    /* WARNING: Could not recover jumptable at 0x007512e6. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          (**(code **)(*piVar3 + 0x14))();
          return;
        }
      }
      piVar6 = (int *)piVar6[1];
    } while (piVar6 != (int *)*piVar1);
  }
                    /* WARNING: Could not recover jumptable at 0x0075130e. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar3 + 0x14))();
  return;
}

