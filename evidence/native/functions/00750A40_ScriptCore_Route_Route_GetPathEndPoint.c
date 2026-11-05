/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011619a0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_GetPathEndPoint [assembly=ScriptCore token=0x06001117; handle:
   System.UInt32, pathIndex: System.UInt32, outPosition: Sims3.SimIFace.Vector3&;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.Route::Route_GetPathEndPoint(uint param_1,int param_2,void *param_3)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  undefined4 *puVar4;
  undefined1 auStack_20 [28];
  
  if (DAT_011d50c4 == (void *)0x0) {
    piVar2 = (int *)0x0;
  }
  else {
    piVar2 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
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
          puVar4 = (undefined4 *)(**(code **)(*(int *)piVar3[2] + 0x134))(auStack_20);
          FUN_0076c100(param_3,puVar4);
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

