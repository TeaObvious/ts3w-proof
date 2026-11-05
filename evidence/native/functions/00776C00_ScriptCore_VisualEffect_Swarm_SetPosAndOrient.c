/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011629b8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.VisualEffect::Swarm_SetPosAndOrient [assembly=ScriptCore token=0x060004BB;
   effectHandle: System.UInt64, pos: Sims3.SimIFace.Vector3, fwd: Sims3.SimIFace.Vector3, up:
   Sims3.SimIFace.Vector3; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.VisualEffect::Swarm_SetPosAndOrient
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,float param_6,float param_7,float param_8,float param_9,float param_10,
          float param_11)

{
  void *pvVar1;
  undefined4 extraout_EAX;
  float local_50;
  float fStack_4c;
  float fStack_48;
  undefined4 uStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  undefined4 uStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  float fStack_14;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1));
    if (pvVar1 != (void *)0x0) {
      pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea158);
      if (pvVar1 != (void *)0x0) {
        local_50 = param_8 * param_10 - param_11 * param_7;
        fStack_48 = param_7 * param_9 - param_6 * param_10;
        fStack_4c = param_11 * param_6 - param_8 * param_9;
        local_30 = param_6;
        fStack_2c = param_7;
        fStack_28 = param_8;
        uStack_24 = 0;
        uStack_44 = 0;
        local_40 = param_9;
        fStack_3c = param_10;
        fStack_38 = param_11;
        uStack_34 = 0;
        local_20 = param_3;
        uStack_1c = param_4;
        uStack_18 = param_5;
        fStack_14 = 1.0;
        TransformComponent_SetWorldMatrix(pvVar1,&local_50);
        return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
      }
    }
  }
  return 0;
}

