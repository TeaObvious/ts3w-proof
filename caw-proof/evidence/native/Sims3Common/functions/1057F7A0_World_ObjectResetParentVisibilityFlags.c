/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectResetParentVisibilityFlags. Export
   ordinal(s): 1535. Entry VA: 0x1057f7a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C2D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void World_ObjectResetParentVisibilityFlags(void)

{
  int iVar1;
  void *pvVar2;
  
                    /* 0x57f7a0  1535  World_ObjectResetParentVisibilityFlags */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    pvVar2 = (void *)FUN_1072abb0(iVar1);
    if (pvVar2 != (void *)0x0) {
      pvVar2 = (void *)FUN_10726da0(pvVar2,DAT_10c8dae8);
      if (pvVar2 != (void *)0x0) {
        FUN_10752060(pvVar2);
        return;
      }
    }
  }
  return;
}

