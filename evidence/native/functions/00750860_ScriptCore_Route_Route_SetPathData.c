/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161978 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_SetPathData [assembly=ScriptCore token=0x06001112; handle: System.UInt32,
   pathData: Sims3.SimIFace.PathData&; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.Route::Route_SetPathData(uint param_1,undefined4 *param_2)

{
  int *piVar1;
  int *piVar2;
  float *pfVar3;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 auStack_30 [2];
  undefined4 uStack_28;
  undefined4 uStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if ((DAT_011d50c4 != (void *)0x0) &&
     (piVar2 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1), piVar2 != (int *)0x0))
  {
    (**(code **)(*piVar2 + 0x10))();
    uStack_28 = param_2[2];
    uStack_24 = param_2[3];
    auStack_30[0] = *param_2;
    uStack_34 = 0;
    uStack_38 = 0;
    uStack_3c = 0;
    uStack_40 = 0;
    fStack_20 = 0.0;
    fStack_1c = 0.0;
    fStack_18 = 0.0;
    fStack_14 = 0.0;
    pfVar3 = RouteVector_ExpandXYZWithXLane(param_2 + 4,&uStack_40);
    fStack_20 = *pfVar3;
    fStack_1c = pfVar3[1];
    fStack_18 = pfVar3[2];
    fStack_14 = pfVar3[3];
    for (piVar1 = (int *)piVar2[0x38]; piVar1 != piVar2 + 0x38; piVar1 = (int *)*piVar1) {
      (**(code **)(*(int *)piVar1[2] + 0x34))(auStack_30);
    }
    (**(code **)(*piVar2 + 0x14))();
  }
  return;
}

