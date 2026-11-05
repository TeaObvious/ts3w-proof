/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011619a8 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_GetPathStartDirection [assembly=ScriptCore token=0x06001118; handle:
   System.UInt32, pathIndex: System.UInt32, outDirection: Sims3.SimIFace.Vector3&;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.Route::Route_GetPathStartDirection(uint param_1,int param_2,void *param_3)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  undefined4 auStack_28 [2];
  undefined1 auStack_20 [28];
  
  if (DAT_011d50c4 == (void *)0x0) {
    piVar2 = (int *)0x0;
  }
  else {
    piVar2 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x10))();
      piVar3 = (int *)piVar2[0x38];
      piVar1 = piVar2 + 0x38;
      if (piVar3 != piVar1) {
        do {
          if (param_2 == 0) break;
          piVar3 = (int *)*piVar3;
          param_2 = param_2 + -1;
        } while (piVar3 != piVar1);
        if ((piVar3 != piVar1) && ((int *)piVar3[2] != (int *)0x0)) {
          (**(code **)(*(int *)piVar3[2] + 100))(0,auStack_20);
          FUN_0076c100(param_3,auStack_28);
          (**(code **)(*piVar2 + 0x14))();
          return;
        }
      }
    }
  }
  FUN_0076bf70(param_3,0,0,0);
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x14))();
  }
  return;
}

