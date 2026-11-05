/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011633e0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_LotGetWorldToLotTransformImpl [assembly=ScriptCore token=0x06000779;
   lotId: System.UInt64; return=Sims3.SimIFace.Matrix44]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl
ScriptCore.World::World_LotGetWorldToLotTransformImpl(undefined4 *param_1,int param_2,int param_3)

{
  int *this;
  undefined4 *puVar1;
  uint local_50 [6];
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  uint uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  uint uStack_14;
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = FUN_00c62810(DAT_011edbc4,param_2,param_3,(int *)0x0);
    if (this != (int *)0x0) {
      puVar1 = (undefined4 *)FUN_00ab1610(this,local_50);
      FUN_0076c220(param_1,puVar1);
      return param_1;
    }
  }
  local_50[0] = DAT_00f998f8;
  local_50[1] = 0;
  local_50[2] = 0;
  local_50[3] = 0;
  local_50[4] = 0;
  local_50[5] = DAT_00f998f8;
  uStack_38 = 0;
  uStack_34 = 0;
  local_30 = 0;
  uStack_2c = 0;
  uStack_28 = DAT_00f998f8;
  uStack_24 = 0;
  local_20 = 0;
  uStack_1c = 0;
  uStack_18 = 0;
  uStack_14 = DAT_00f998f8;
  FUN_0076c220(param_1,local_50);
  return param_1;
}

