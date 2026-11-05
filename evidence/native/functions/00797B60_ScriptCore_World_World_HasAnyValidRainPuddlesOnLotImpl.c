/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163ac8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_HasAnyValidRainPuddlesOnLotImpl [assembly=ScriptCore token=0x060008AA;
   lotId: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_HasAnyValidRainPuddlesOnLotImpl(int param_1,int param_2)

{
  void *pvVar1;
  char cVar2;
  int *in_EAX;
  int *this;
  undefined3 extraout_var;
  uint uVar3;
  undefined4 uVar4;
  uint auStack_10 [3];
  char *pcStack_4;
  
  pvVar1 = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    this = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    in_EAX = this;
    if ((this != (int *)0x0) && (*(int *)((int)pvVar1 + 0x74) != 0)) {
      cVar2 = FUN_00d69ae0();
      in_EAX = (int *)CONCAT31(extraout_var,cVar2);
      if (cVar2 != '\0') {
        auStack_10[0] = 0;
        auStack_10[1] = 0;
        auStack_10[2] = 0;
        pcStack_4 = "Scratch/ValidTilePartsPerLevel";
        uVar3 = FUN_00ab0280(this,auStack_10);
        if ((char)uVar3 != '\0') {
          uVar4 = FUN_007976b0(auStack_10);
          return CONCAT31((int3)((uint)uVar4 >> 8),1);
        }
        in_EAX = (int *)FUN_007976b0(auStack_10);
      }
    }
  }
  return (uint)in_EAX & 0xffffff00;
}

