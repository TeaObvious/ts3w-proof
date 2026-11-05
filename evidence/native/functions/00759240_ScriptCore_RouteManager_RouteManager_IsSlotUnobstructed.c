/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161c10 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_IsSlotUnobstructed [assembly=ScriptCore token=0x06001060;
   scriptHandle: System.UInt64, slotNameHash: System.UInt32, checkForSims: System.Boolean, options:
   System.UInt64, options2: System.UInt64, objectIdToIgnore: System.UInt64, agsFlags: System.UInt32,
   isExitSlot: System.Boolean; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float ScriptCore_RouteManager__RouteManager_IsSlotUnobstructed
                (int param_1,int param_2,int param_3,undefined4 param_4,undefined4 param_5,
                undefined4 param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9,
                undefined4 param_10,undefined4 param_11,undefined4 param_12,undefined4 param_13)

{
  undefined1 auStack_a0 [128];
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  float afStack_10 [4];
  
  uStack_14 = param_13;
  uStack_18 = param_11;
  uStack_1c = param_10;
  uStack_20 = param_9;
  FUN_0081c7b0(auStack_a0,param_5,param_6,param_7,param_8);
  FUN_00758500(afStack_10,param_1,param_2,param_3,param_4);
  return afStack_10[0];
}

