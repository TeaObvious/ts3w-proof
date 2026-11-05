/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetNumSpeedTreesImpl. Export ordinal(s):
   1359. Entry VA: 0x105822f0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000D0C. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int World_GetNumSpeedTreesImpl(void)

{
  int iVar1;
  void *this;
  
                    /* 0x5822f0  1359  World_GetNumSpeedTreesImpl */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    this = (void *)FUN_1072abb0(iVar1);
    if (this != (void *)0x0) {
      iVar1 = FUN_10726da0(this,DAT_10c8dad0);
      if (iVar1 != 0) {
        iVar1 = FUN_1074ce90(iVar1);
        return iVar1;
      }
      return 1;
    }
  }
  return 0;
}

