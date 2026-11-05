/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163438 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  int *extraout_EAX;
  int *extraout_EAX_00;
  int iVar2;
  int iVar3;
  int *piStack_114;
  int *piStack_110;
  int aiStack_100 [64];
  
  if (DAT_011edbc4 != (void *)0x0) {
    in_EAX = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
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
              Memory_FreeIfNonNull(piStack_114);
              piStack_114 = extraout_EAX_00;
            }
            return CONCAT31((int3)((uint)piStack_114 >> 8),1);
          }
          iVar3 = iVar3 + 1;
        } while (iVar3 < iVar2);
      }
      in_EAX = piStack_114;
      if ((piStack_114 != (int *)0x0) && (piStack_114 != aiStack_100)) {
        Memory_FreeIfNonNull(piStack_114);
        in_EAX = extraout_EAX;
      }
    }
  }
  return (uint)in_EAX & 0xffffff00;
}

