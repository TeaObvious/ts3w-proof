/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Swarm_SetTargetObjectAndSlotOrBone. Export
   ordinal(s): 1022. Entry VA: 0x10568bd0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000636. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
Swarm_SetTargetObjectAndSlotOrBone
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,int param_5,
          undefined4 param_6,undefined4 param_7,undefined4 param_8,char param_9)

{
  int iVar1;
  void *pvVar2;
  undefined4 uVar3;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
                    /* 0x568bd0  1022  Swarm_SetTargetObjectAndSlotOrBone */
  iVar1 = FUN_1072a1a0();
  pvVar2 = (void *)FUN_1072abb0(iVar1);
  if (pvVar2 != (void *)0x0) {
    pvVar2 = (void *)FUN_10726da0(pvVar2,DAT_10c8d6d0);
    if (pvVar2 != (void *)0x0) {
      local_20 = param_6;
      uStack_1c = param_7;
      uStack_18 = param_8;
      uStack_14 = param_6;
      uVar3 = FUN_107365d0(pvVar2,param_3,param_4,param_5,&local_20,param_9);
      return uVar3;
    }
  }
  return 0;
}

