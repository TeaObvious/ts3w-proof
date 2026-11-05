/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161b00 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_StopFollowingRoute [assembly=ScriptCore token=0x06001106; handle:
   System.UInt32, stopMode: System.Int32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_Route__Route_StopFollowingRoute(uint param_1,int param_2)

{
  uint in_EAX;
  int *this;
  undefined4 uVar1;
  undefined4 uVar2;
  
  if (DAT_011d50c4 != (void *)0x0) {
    this = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
    in_EAX = 0;
    if (this != (int *)0x0) {
      (**(code **)(*this + 0x10))();
      uVar1 = FUN_00753400(this,param_2);
      uVar2 = (**(code **)(*this + 0x14))();
      return CONCAT31((int3)((uint)uVar2 >> 8),(char)uVar1);
    }
  }
  return in_EAX & 0xffffff00;
}

