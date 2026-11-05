/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162a30 (original PC 1.67 TS3W.exe).
   ScriptCore.VisualEffect::Swarm_SetTargetObjectAndSlotOrBone [assembly=ScriptCore
   token=0x060004CA; effectHandle: System.UInt64, targetObjectId: System.UInt64, boneOrSlotHash:
   System.UInt32, trans: Sims3.SimIFace.Vector3, bIsBone: System.Boolean; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.VisualEffect::Swarm_SetTargetObjectAndSlotOrBone
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,int param_5,
          undefined4 param_6,undefined4 param_7,undefined4 param_8,char param_9)

{
  int iVar1;
  void *pvVar2;
  undefined4 uVar3;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  iVar1 = FUN_00937570();
  pvVar2 = (void *)FUN_00937f80(iVar1);
  if (pvVar2 != (void *)0x0) {
    pvVar2 = (void *)FUN_00934260(pvVar2,DAT_011e9e90);
    if (pvVar2 != (void *)0x0) {
      local_20 = param_6;
      uStack_1c = param_7;
      uStack_18 = param_8;
      uStack_14 = param_6;
      uVar3 = FUN_00944070(pvVar2,param_3,param_4,param_5,&local_20,param_9);
      return uVar3;
    }
  }
  return 0;
}

