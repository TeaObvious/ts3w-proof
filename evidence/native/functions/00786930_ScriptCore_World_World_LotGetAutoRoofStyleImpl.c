/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163348 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_LotGetAutoRoofStyleImpl [assembly=ScriptCore token=0x06000766; lotId:
   System.UInt64; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 *
ScriptCore_World__World_LotGetAutoRoofStyleImpl(undefined4 *param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  void *this;
  int *piVar4;
  undefined4 *puVar5;
  bool bVar6;
  
  this = DAT_011edbc4;
  bVar6 = DAT_011edbc4 != (void *)0x0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  *param_1 = 0;
  if (bVar6) {
    piVar4 = FUN_00c62810(this,param_2,param_3,(int *)0x0);
    if ((piVar4 != (int *)0x0) && (piVar4[0xab] != 0)) {
      puVar5 = (undefined4 *)FUN_00b94560(piVar4[0xab]);
      uVar1 = puVar5[1];
      uVar2 = puVar5[2];
      uVar3 = puVar5[3];
      param_1[2] = *puVar5;
      param_1[3] = uVar1;
      param_1[1] = uVar3;
      *param_1 = uVar2;
    }
  }
  return param_1;
}

