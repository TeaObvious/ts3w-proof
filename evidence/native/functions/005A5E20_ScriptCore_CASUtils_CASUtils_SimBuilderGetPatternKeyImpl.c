/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011562d8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimBuilderGetPatternKeyImpl [assembly=ScriptCore token=0x06000300;
   handle: System.UInt32, key: Sims3.SimIFace.ResourceKey, compositorHash: System.UInt32, callback:
   System.Delegate; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 *
ScriptCore_CASUtils__CASUtils_SimBuilderGetPatternKeyImpl
          (undefined4 *param_1,uint param_2,undefined4 param_3,undefined4 param_4,int param_5,
          undefined4 param_6,undefined4 param_7)

{
  int *piVar1;
  void *this;
  int iStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  if ((param_2 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_2);
  }
  else {
    this = (void *)0x0;
  }
  GetGlobalInterfacePointer_11D5BBC();
  if (this != (void *)0x0) {
    iStack_20 = param_5;
    uStack_1c = param_6;
    uStack_18 = param_3;
    uStack_14 = param_4;
    FUN_005e3490(this,&uStack_10,&iStack_20,param_7);
    *param_1 = uStack_8;
    param_1[1] = uStack_4;
    param_1[2] = uStack_10;
    param_1[3] = uStack_c;
  }
  return param_1;
}

