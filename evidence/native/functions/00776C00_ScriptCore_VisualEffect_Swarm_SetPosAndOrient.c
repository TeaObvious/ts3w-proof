/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011629b8 (original PC 1.67 TS3W.exe).
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
  int iVar1;
  void *pvVar2;
  undefined4 uVar3;
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
  undefined4 uStack_14;
  
  iVar1 = FUN_00937570();
  if (iVar1 != 0) {
    pvVar2 = (void *)FUN_00937f80(iVar1);
    if (pvVar2 != (void *)0x0) {
      pvVar2 = (void *)FUN_00934260(pvVar2,DAT_011ea158);
      if (pvVar2 != (void *)0x0) {
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
        uStack_14 = DAT_00f998f8;
        uVar3 = FUN_00958760(pvVar2,&local_50,&local_50);
        return CONCAT31((int3)((uint)uVar3 >> 8),1);
      }
    }
  }
  return 0;
}

