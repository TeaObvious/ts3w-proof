/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_IsCatalogLoadedImpl. Export
   ordinal(s): 1216. Entry VA: 0x102be0f0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000AA8. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 UserToolUtils_IsCatalogLoadedImpl(void)

{
                    /* 0x2be0f0  1216  UserToolUtils_IsCatalogLoadedImpl */
  if (DAT_10c70534 != 0) {
    return CONCAT31((int3)((uint)DAT_10c70534 >> 8),*(undefined1 *)(DAT_10c70534 + 5));
  }
  return 0;
}

