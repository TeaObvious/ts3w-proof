/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011618d8 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_IsPointRoutable [assembly=ScriptCore token=0x06001103; handle:
   System.UInt32, worldPos: Sims3.SimIFace.Vector3; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.Route::Route_IsPointRoutable
          (uint param_1,float param_2,undefined4 param_3,undefined4 param_4)

{
  uint in_EAX;
  int *this;
  uint uVar1;
  undefined4 uVar2;
  float fStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  float fStack_14;
  
  if (DAT_011d50c4 != (void *)0x0) {
    this = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
    in_EAX = 0;
    if (this != (int *)0x0) {
      (**(code **)(*this + 0x10))();
      fStack_20 = param_2;
      uStack_1c = param_3;
      uStack_18 = param_4;
      fStack_14 = param_2;
      uVar1 = FUN_00752770(this,&fStack_20);
      uVar2 = (**(code **)(*this + 0x14))();
      return CONCAT31((int3)((uint)uVar2 >> 8),(char)uVar1);
    }
  }
  return in_EAX & 0xffffff00;
}

