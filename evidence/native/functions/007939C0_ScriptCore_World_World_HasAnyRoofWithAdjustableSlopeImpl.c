/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163438 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_HasAnyRoofWithAdjustableSlopeImpl [assembly=ScriptCore token=0x0600078E;
   lotId: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_HasAnyRoofWithAdjustableSlopeImpl(int param_1,int param_2)

{
  void *this;
  int *in_EAX;
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int *piStack_114;
  int *piStack_110;
  int aiStack_100 [64];
  
  if (DAT_011edbc4 != (void *)0x0) {
    in_EAX = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    if ((in_EAX != (int *)0x0) && (this = (void *)in_EAX[0xab], this != (void *)0x0)) {
      piStack_114 = aiStack_100;
      piStack_110 = aiStack_100;
      FUN_00b97dd0(this,&piStack_114);
      iVar2 = (int)piStack_110 - (int)piStack_114 >> 2;
      iVar3 = 0;
      if (0 < iVar2) {
        do {
          uVar1 = FUN_00b95f10(this,piStack_114[iVar3]);
          if ((char)uVar1 != '\0') {
            if ((piStack_114 != (int *)0x0) && (piStack_114 != aiStack_100)) {
              piStack_114 = (int *)FUN_004e44e0((int)piStack_114);
            }
            return CONCAT31((int3)((uint)piStack_114 >> 8),1);
          }
          iVar3 = iVar3 + 1;
        } while (iVar3 < iVar2);
      }
      in_EAX = piStack_114;
      if ((piStack_114 != (int *)0x0) && (piStack_114 != aiStack_100)) {
        in_EAX = (int *)FUN_004e44e0((int)piStack_114);
      }
    }
  }
  return (uint)in_EAX & 0xffffff00;
}

