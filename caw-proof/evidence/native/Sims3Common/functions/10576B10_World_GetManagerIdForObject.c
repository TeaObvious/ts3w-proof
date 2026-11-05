/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetManagerIdForObject. Export ordinal(s):
   1353. Entry VA: 0x10576b10. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000BA9. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined8 World_GetManagerIdForObject(void)

{
  int iVar1;
  uint uVar2;
  
                    /* 0x576b10  1353  World_GetManagerIdForObject */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    uVar2 = FUN_1072abb0(iVar1);
    if (uVar2 != 0) {
      iVar1 = FUN_10967620(uVar2);
      if (iVar1 != 0) {
        return *(undefined8 *)(iVar1 + 0x48);
      }
      return 0;
    }
  }
  return 0;
}

