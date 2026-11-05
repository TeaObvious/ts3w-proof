/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163378 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_LotGetDefaultAutoRoofStyleImpl [assembly=ScriptCore token=0x0600076F;
   lotId: System.UInt64; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 *
ScriptCore_World__World_LotGetDefaultAutoRoofStyleImpl(undefined4 *param_1,int param_2,int param_3)

{
  void *this;
  int *piVar1;
  bool bVar2;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  this = DAT_011edbc4;
  bVar2 = DAT_011edbc4 != (void *)0x0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  *param_1 = 0;
  if (bVar2) {
    piVar1 = FUN_00c62810(this,param_2,param_3,(int *)0x0);
    if ((piVar1 != (int *)0x0) && (piVar1[0xab] != 0)) {
      FUN_00b94570(&uStack_10);
      param_1[2] = uStack_10;
      param_1[3] = uStack_c;
      param_1[1] = uStack_4;
      *param_1 = uStack_8;
    }
  }
  return param_1;
}

