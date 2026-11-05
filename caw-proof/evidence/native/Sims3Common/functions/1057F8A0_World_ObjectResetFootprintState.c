/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectResetFootprintState. Export
   ordinal(s): 1534. Entry VA: 0x1057f8a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C32. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 World_ObjectResetFootprintState(void)

{
  int iVar1;
  void *this;
  undefined4 uVar2;
  
                    /* 0x57f8a0  1534  World_ObjectResetFootprintState */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    this = (void *)FUN_1072abb0(iVar1);
    if (this != (void *)0x0) {
      iVar1 = FUN_10726da0(this,DAT_10c8d7e8);
      if (iVar1 != 0) {
        uVar2 = FUN_10738310(iVar1);
        return CONCAT31((int3)((uint)uVar2 >> 8),1);
      }
    }
  }
  return 0;
}

