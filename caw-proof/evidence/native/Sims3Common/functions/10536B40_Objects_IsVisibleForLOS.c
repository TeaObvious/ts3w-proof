/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Objects_IsVisibleForLOS. Export ordinal(s): 487.
   Entry VA: 0x10536b40. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000FC3. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined1 Objects_IsVisibleForLOS(void)

{
  undefined1 uVar1;
  int iVar2;
  void *this;
  
                    /* 0x536b40  487  Objects_IsVisibleForLOS */
  iVar2 = FUN_1072a1a0();
  if (iVar2 != 0) {
    this = (void *)FUN_1072abb0(iVar2);
    if (this != (void *)0x0) {
      iVar2 = FUN_10726da0(this,DAT_10c8d808);
      if (iVar2 != 0) {
        uVar1 = FUN_1069a0f0(iVar2);
        return uVar1;
      }
    }
  }
  return 0;
}

