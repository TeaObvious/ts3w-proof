/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163b08 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_WallExistsBetweenPointsImpl [assembly=ScriptCore token=0x06000863; lotId:
   System.UInt64, a: Sims3.SimIFace.Vector3, b: Sims3.SimIFace.Vector3, roomDef: System.Int32;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.World::World_WallExistsBetweenPointsImpl(int param_1,int param_2)

{
  void *this;
  uint in_EAX;
  int *piVar1;
  float *pfVar2;
  uint uVar3;
  int in_stack_00000024;
  float *pfVar4;
  float local_38;
  float local_34;
  undefined4 local_30;
  float local_2c;
  float local_28;
  undefined4 local_24;
  undefined4 local_20 [7];
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    in_EAX = 0;
    if (piVar1 != (int *)0x0) {
      pfVar4 = &local_2c;
      local_2c = DAT_00fab218;
      local_28 = DAT_00fab218;
      local_24 = 0;
      pfVar2 = (float *)FUN_0076c050(&stack0x0000000c,local_20);
      FUN_00adc860(piVar1,pfVar2,pfVar4);
      pfVar4 = &local_38;
      local_38 = DAT_00fab218;
      local_34 = DAT_00fab218;
      local_30 = 0;
      pfVar2 = (float *)FUN_0076c050(&stack0x00000018,local_20);
      in_EAX = FUN_00adc860(piVar1,pfVar2,pfVar4);
      this = *(void **)(piVar1[0xa6] + 0x54 + in_stack_00000024 * 4);
      if (this != (void *)0x0) {
        local_30 = local_24;
        uVar3 = FUN_00c40c60(this,&local_2c,&local_38,(void *)0x0);
        return uVar3;
      }
    }
  }
  return in_EAX & 0xffffff00;
}

