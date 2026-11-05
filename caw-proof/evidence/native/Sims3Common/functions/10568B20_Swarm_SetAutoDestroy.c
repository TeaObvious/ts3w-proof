/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Swarm_SetAutoDestroy. Export ordinal(s): 1008.
   Entry VA: 0x10568b20. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000630. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Swarm_SetAutoDestroy(undefined4 param_1,undefined4 param_2,char param_3)

{
  int iVar1;
  void *this;
  void *this_00;
  uint local_4;
  
                    /* 0x568b20  1008  Swarm_SetAutoDestroy */
  iVar1 = FUN_1072a1a0();
  this = (void *)FUN_1072abb0(iVar1);
  if (this != (void *)0x0) {
    this_00 = (void *)FUN_10726da0(this,DAT_10c8d6d0);
    if (this_00 != (void *)0x0) {
      local_4 = (uint)(param_3 != '\0');
      FUN_10736ac0(this_00,5,(int *)&local_4,1);
    }
    iVar1 = FUN_10726da0(this,DAT_10c8d998);
    if (iVar1 != 0) {
      FUN_107487b0(iVar1);
      return;
    }
  }
  return;
}

