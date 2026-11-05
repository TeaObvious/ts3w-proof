/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, pristine PC1.67 instructions. ECX manager receiver, no incoming stack words, plain
   RET; AL=1 on normal return, upper EAX incidental. Optional DebugVar service receives Animation
   category and manager addresses: +48 Enable SACS Load/Save via slot28, +3C QueueLimitFrames via
   slot38 with physical parameters 1,360,1; +40 ScriptReturnFrames and +44 LoopDelayFrames each with
   parameters 1,60,1. Those triplets are observed registration arguments; clamp/step semantics of
   the virtual service are not inferred here. Registers missing-animation callback command through
   slot58; resets category. Replaces global011D9D48 reflected driver-type registration after
   unregister/release, allocates24-byte type owner, initializes Sims3::SACS::StateMachineDriver /
   SACS/StateMachineDriver and key2860B6D5, then service slot10 registers it. Stored C pointer/int
   casts are inference; exact external managed hook identity remains unchanged. This function
   registers settings and type, not a per-driver playback update. */

undefined4 __fastcall SacsManager_RegisterSettingsAndDriverType(int param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x18))(L"Animation",0x834);
  }
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x28))(param_1 + 0x48,0x10202bc);
  }
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x38))(param_1 + 0x3c,0x1020298,1,0x168,1);
  }
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x38))(param_1 + 0x40,0x1020270,1,0x3c,1);
  }
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x38))(param_1 + 0x44,0x1020250,1,0x3c,1);
  }
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    puVar2 = (undefined4 *)FUN_004e4500(8,"Debug/DebugVarMan/CmdCallback",0);
    if (puVar2 == (undefined4 *)0x0) {
      puVar2 = (undefined4 *)0x0;
    }
    else {
      *puVar2 = &PTR_LAB_00ffee04;
      puVar2[1] = ScriptCore.Animation::Animation_SetMissingAnimationCallback;
    }
    (**(code **)(*piVar1 + 0x58))(0x10202e8,param_1,puVar2);
  }
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x18))(0,0x7fffffff);
  }
  piVar1 = (int *)FUN_00593930();
  if (DAT_011d9d48 != (undefined4 *)0x0) {
    (**(code **)(*piVar1 + 0x14))(DAT_011d9d48);
    if (DAT_011d9d48 != (undefined4 *)0x0) {
      (**(code **)*DAT_011d9d48)(1);
    }
  }
  puVar2 = (undefined4 *)FUN_004e4500(0x18,"SACS/SacsManager",0);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    FUN_007d4000(puVar2,"Sims3::SACS::StateMachineDriver","SACS/StateMachineDriver",0x2860b6d5);
    *puVar2 = &PTR_FUN_010203c4;
    puVar2[1] = &PTR_FUN_01005430;
    puVar2[2] = &PTR_LAB_010203a4;
  }
  DAT_011d9d48 = puVar2;
  uVar3 = (**(code **)(*piVar1 + 0x10))(puVar2,0);
  return CONCAT31((int3)((uint)uVar3 >> 8),1);
}

