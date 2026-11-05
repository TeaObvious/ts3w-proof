/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_WallExistsBetweenPointsImpl. Export
   ordinal(s): 1622. Entry VA: 0x10577790. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CBB. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl World_WallExistsBetweenPointsImpl(int param_1,int param_2)

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
  
                    /* 0x577790  1622  World_WallExistsBetweenPointsImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    in_EAX = 0;
    if (piVar1 != (int *)0x0) {
      pfVar4 = &local_2c;
      local_2c = DAT_10aae184;
      local_28 = DAT_10aae184;
      local_24 = 0;
      pfVar2 = (float *)FUN_1055db20(&stack0x0000000c,local_20);
      FUN_100a30e0(piVar1,pfVar2,pfVar4);
      pfVar4 = &local_38;
      local_38 = DAT_10aae184;
      local_34 = DAT_10aae184;
      local_30 = 0;
      pfVar2 = (float *)FUN_1055db20(&stack0x00000018,local_20);
      in_EAX = FUN_100a30e0(piVar1,pfVar2,pfVar4);
      this = *(void **)(piVar1[0xa6] + 0x54 + in_stack_00000024 * 4);
      if (this != (void *)0x0) {
        local_30 = local_24;
        uVar3 = FUN_10214e00(this,&local_2c,&local_38,(void *)0x0);
        return uVar3;
      }
    }
  }
  return in_EAX & 0xffffff00;
}

