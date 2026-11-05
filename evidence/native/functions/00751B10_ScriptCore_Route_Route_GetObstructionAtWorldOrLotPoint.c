/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161910 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_GetObstructionAtWorldOrLotPoint [assembly=ScriptCore token=0x06001101;
   handle: System.UInt32, x: System.Single, y: System.Single, z: System.Single;
   return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

longlong ScriptCore_Route__Route_GetObstructionAtWorldOrLotPoint
                   (uint param_1,undefined4 *param_2,int *******param_3,int *******param_4)

{
  int *piVar1;
  int iVar2;
  void *this;
  longlong lVar3;
  uint auStack_30 [2];
  int iStack_28;
  int iStack_24;
  undefined4 uStack_10;
  undefined1 uStack_c;
  undefined1 uStack_b;
  int *piStack_8;
  
  if (DAT_011d50c4 != (void *)0x0) {
    piVar1 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x10))();
      iVar2 = thunk_FUN_00835d40();
      if (iVar2 != 0) {
        this = (void *)FUN_00829600(iVar2);
        if (this != (void *)0x0) {
          auStack_30[0] = piVar1[0xf];
          piStack_8 = piVar1 + 0x56;
          iStack_28 = piVar1[0x10];
          iStack_24 = piVar1[0x11];
          uStack_10 = 0;
          uStack_c = 1;
          uStack_b = 0;
          lVar3 = FUN_00655eb0(this,auStack_30,param_2,param_3,param_4,'\0');
          FUN_00643c30((int)auStack_30);
          (**(code **)(*piVar1 + 0x14))();
          return lVar3;
        }
      }
      (**(code **)(*piVar1 + 0x14))();
    }
  }
  return 0;
}

