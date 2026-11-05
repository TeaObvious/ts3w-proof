/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163d90 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetHouseboatDisplayToWorldPositionImpl [assembly=ScriptCore
   token=0x060008B1; lotId: System.UInt64, houseboatPos: Sims3.SimIFace.Vector3, outPos:
   Sims3.SimIFace.Vector3&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.World::World_GetHouseboatDisplayToWorldPositionImpl
          (int param_1,int param_2,float param_3,float param_4,float param_5,void *param_6)

{
  float fVar1;
  float fVar2;
  float fVar3;
  int *in_EAX;
  float *pfVar4;
  undefined4 uVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30 [11];
  
  if (DAT_011edbc4 != (void *)0x0) {
    in_EAX = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    if ((in_EAX != (int *)0x0) && ((char)in_EAX[0x111] != '\0')) {
      pfVar4 = (float *)FUN_00ab1cb0(in_EAX,local_30);
      fVar1 = *pfVar4;
      fVar2 = pfVar4[1];
      fVar3 = pfVar4[2];
      fVar8 = pfVar4[3];
      fVar6 = (param_5 * fVar2 - param_4 * fVar3) + fVar8 * param_3;
      fVar7 = (param_3 * fVar3 - param_5 * fVar1) + fVar8 * param_4;
      fVar8 = (param_4 * fVar1 - param_3 * fVar2) + fVar8 * param_5;
      local_40 = (fVar8 * fVar2 - fVar7 * fVar3) * DAT_0103fd88 + param_3 + pfVar4[4];
      fStack_3c = (fVar6 * fVar3 - fVar8 * fVar1) * DAT_0103fd88 + param_4 + pfVar4[5];
      fStack_38 = (fVar7 * fVar1 - fVar6 * fVar2) * DAT_0103fd88 + param_5 + pfVar4[6];
      fStack_34 = (fVar6 * fVar1 - fVar6 * fVar1) * DAT_0103fd88 + param_3 + pfVar4[7];
      uVar5 = FUN_0076c100(param_6,&local_40);
      return CONCAT31((int3)((uint)uVar5 >> 8),1);
    }
  }
  return (uint)in_EAX & 0xffffff00;
}

