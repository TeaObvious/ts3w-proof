/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011629e0 (original PC 1.67 TS3W.exe).
   ScriptCore.VisualEffect::Swarm_SetEffectDoubleTextureOverride [assembly=ScriptCore
   token=0x060004C0; effectHandle: System.UInt64, texture1Hash: System.UInt64, texture1Override:
   System.Int32, groupId1: System.UInt32, texture2Hash: System.UInt64, texture2Override:
   System.Int32, groupId2: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_VisualEffect__Swarm_SetEffectDoubleTextureOverride
               (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
               undefined4 param_9,undefined4 param_10)

{
  int iStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  GetGlobalInterfacePointer_11D5BBC();
  iStack_20 = param_3;
  uStack_18 = param_5;
  uStack_1c = param_4;
  uStack_14 = param_6;
  uStack_c = param_8;
  uStack_10 = param_7;
  uStack_8 = param_9;
  uStack_4 = param_10;
  FUN_00777250(param_1,param_2,1,&iStack_20,8);
  return;
}

