/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011563c0 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimBuilderCacheOutfitImpl [assembly=ScriptCore token=0x0600031E;
   handle: System.UInt32, instanceName: System.String, uniformComponents: System.UInt64, bSimSave:
   System.Boolean; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 *
ScriptCore_CASUtils__CASUtils_SimBuilderCacheOutfitImpl
          (undefined4 *param_1,uint param_2,uint param_3,uint param_4,char param_5)

{
  int *piVar1;
  short *psVar2;
  undefined4 unaff_ESI;
  void *this;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  
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
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_3);
  if (this != (void *)0x0) {
    FUN_005e31b0(this,(int *)&stack0xffffffec,psVar2,param_3,param_4,param_5);
    *param_1 = uStack_c;
    param_1[1] = uStack_8;
    param_1[2] = unaff_ESI;
    param_1[3] = uStack_10;
  }
  return param_1;
}

