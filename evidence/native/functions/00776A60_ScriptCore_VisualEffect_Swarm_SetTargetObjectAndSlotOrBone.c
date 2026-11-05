/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162a30 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  void *pvVar1;
  undefined4 uVar2;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1));
  if (pvVar1 != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011e9e90);
    if (pvVar1 != (void *)0x0) {
      local_20 = param_6;
      uStack_1c = param_7;
      uStack_18 = param_8;
      uStack_14 = param_6;
      uVar2 = FUN_00944070(pvVar1,param_3,param_4,param_5,&local_20,param_9);
      return uVar2;
    }
  }
  return 0;
}

