/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_StaysAfterEvictImpl. Export ordinal(s):
   1609. Entry VA: 0x105778b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CBD. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint World_StaysAfterEvictImpl(void)

{
  int iVar1;
  uint uVar2;
  
                    /* 0x5778b0  1609  World_StaysAfterEvictImpl */
  iVar1 = FUN_1072a1a0();
  if (iVar1 != 0) {
    uVar2 = FUN_1072abb0(iVar1);
    if (uVar2 != 0) {
      iVar1 = FUN_102656d0(DAT_10c70534,(uint *)(uVar2 + 0x18));
      if (iVar1 != 0) {
        return *(uint *)(iVar1 + 0xa8) >> 1 & 1;
      }
    }
  }
  return 0;
}

