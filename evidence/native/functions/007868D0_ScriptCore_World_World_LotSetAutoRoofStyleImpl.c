/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163340 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_LotSetAutoRoofStyleImpl [assembly=ScriptCore token=0x06000765; lotId:
   System.UInt64, productKey: Sims3.SimIFace.ResourceKey; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_LotSetAutoRoofStyleImpl
               (int param_1,int param_2,undefined4 param_3,undefined4 param_4,int param_5,
               undefined4 param_6)

{
  int *piVar1;
  int iStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    if ((piVar1 != (int *)0x0) && ((void *)piVar1[0xab] != (void *)0x0)) {
      iStack_10 = param_5;
      uStack_8 = param_3;
      uStack_c = param_6;
      uStack_4 = param_4;
      FUN_00b95270((void *)piVar1[0xab],&iStack_10);
    }
  }
  return;
}

