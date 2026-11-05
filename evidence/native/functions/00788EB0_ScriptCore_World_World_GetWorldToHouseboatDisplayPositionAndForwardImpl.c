/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163d98 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetWorldToHouseboatDisplayPositionAndForwardImpl [assembly=ScriptCore
   token=0x060008B2; lotId: System.UInt64, worldPos: Sims3.SimIFace.Vector3, worldFwd:
   Sims3.SimIFace.Vector3, outPos: Sims3.SimIFace.Vector3&, outFwd: Sims3.SimIFace.Vector3&;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.World::World_GetWorldToHouseboatDisplayPositionAndForwardImpl
          (int param_1,int param_2,float param_3,float param_4,float param_5,float param_6,
          float param_7,float param_8,void *param_9,void *param_10)

{
  int *in_EAX;
  undefined4 uVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (DAT_011edbc4 != (void *)0x0) {
    in_EAX = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    if ((in_EAX != (int *)0x0) && ((char)in_EAX[0x111] != '\0')) {
      Lot_GetAttachedWorldQuaternionTranslation(in_EAX,&local_30);
      fVar2 = (param_5 * fStack_2c - param_4 * fStack_28) + fStack_24 * param_3;
      fVar3 = (param_3 * fStack_28 - param_5 * local_30) + fStack_24 * param_4;
      fVar4 = (param_4 * local_30 - param_3 * fStack_2c) + fStack_24 * param_5;
      local_50 = (fVar4 * fStack_2c - fVar3 * fStack_28) * 2.0 + param_3 + local_20;
      fStack_4c = (fVar2 * fStack_28 - fVar4 * local_30) * 2.0 + param_4 + fStack_1c;
      fStack_48 = (fVar3 * local_30 - fVar2 * fStack_2c) * 2.0 + param_5 + fStack_18;
      fStack_44 = (fVar2 * local_30 - fVar2 * local_30) * 2.0 + param_3 + fStack_14;
      local_40 = 2.0;
      fStack_3c = 2.0;
      fStack_38 = 2.0;
      fStack_34 = 2.0;
      FUN_0076c100(param_9,&local_50);
      fVar2 = (param_8 * fStack_2c - param_7 * fStack_28) + fStack_24 * param_6;
      fVar3 = (param_6 * fStack_28 - param_8 * local_30) + fStack_24 * param_7;
      fVar4 = (param_7 * local_30 - param_6 * fStack_2c) + fStack_24 * param_8;
      local_50 = (fVar4 * fStack_2c - fVar3 * fStack_28) * local_40 + param_6;
      fStack_4c = (fVar2 * fStack_28 - fVar4 * local_30) * fStack_3c + param_7;
      fStack_48 = (fVar3 * local_30 - fVar2 * fStack_2c) * fStack_38 + param_8;
      fStack_44 = (fVar2 * local_30 - fVar2 * local_30) * fStack_34 + param_6;
      uVar1 = FUN_0076c100(param_10,&local_50);
      return CONCAT31((int3)((uint)uVar1 >> 8),1);
    }
  }
  return (uint)in_EAX & 0xffffff00;
}

