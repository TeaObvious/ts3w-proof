/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161900 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_GetDestinationObstruction [assembly=ScriptCore token=0x060010FF; handle:
   System.UInt32; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

longlong __cdecl ScriptCore.Route::Route_GetDestinationObstruction(uint param_1)

{
  int *piVar1;
  int *piVar2;
  longlong lVar3;
  int iStack_34;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  float fStack_24;
  undefined1 auStack_20 [28];
  
  if (DAT_011d50c4 != (void *)0x0) {
    piVar2 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x10))();
      if (((int *)piVar2[0x38] != piVar2 + 0x38) &&
         (piVar1 = *(int **)(piVar2[0x39] + 8), piVar1 != (int *)0x0)) {
        (**(code **)(*piVar1 + 0x134))(auStack_20);
        iStack_30 = piVar2[0x11];
        iStack_2c = piVar2[0x12];
        iStack_34 = piVar2[0x10];
        iStack_28 = piVar2[0x13];
        lVar3 = FUN_008460f0(piVar1,(int *)0x0,&fStack_24,(int)&iStack_34,2);
        (**(code **)(*piVar2 + 0x14))();
        return lVar3;
      }
      (**(code **)(*piVar2 + 0x14))();
    }
  }
  return 0;
}

