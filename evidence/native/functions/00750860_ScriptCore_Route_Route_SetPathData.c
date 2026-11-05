/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161978 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_SetPathData [assembly=ScriptCore token=0x06001112; handle: System.UInt32,
   pathData: Sims3.SimIFace.PathData&; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.Route::Route_SetPathData(uint param_1,undefined4 *param_2)

{
  int *piVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 auStack_30 [2];
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  if ((DAT_011d50c4 != (void *)0x0) &&
     (piVar2 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1), piVar2 != (int *)0x0)) {
    (**(code **)(*piVar2 + 0x10))();
    uStack_28 = param_2[2];
    uStack_24 = param_2[3];
    auStack_30[0] = *param_2;
    uStack_34 = 0;
    uStack_38 = 0;
    uStack_3c = 0;
    uStack_40 = 0;
    uStack_20 = 0;
    uStack_1c = 0;
    uStack_18 = 0;
    uStack_14 = 0;
    puVar3 = (undefined4 *)FUN_0076c050(param_2 + 4,&uStack_40);
    uStack_20 = *puVar3;
    uStack_1c = puVar3[1];
    uStack_18 = puVar3[2];
    uStack_14 = puVar3[3];
    for (piVar1 = (int *)piVar2[0x38]; piVar1 != piVar2 + 0x38; piVar1 = (int *)*piVar1) {
      (**(code **)(*(int *)piVar1[2] + 0x34))(auStack_30);
    }
    (**(code **)(*piVar2 + 0x14))();
  }
  return;
}

