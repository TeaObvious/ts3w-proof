/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_IsEditInGameFromWBModeImpl. Export
   ordinal(s): 1417. Entry VA: 0x1057afe0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CC0. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 World_IsEditInGameFromWBModeImpl(void)

{
                    /* 0x57afe0  1417  World_IsEditInGameFromWBModeImpl */
  if (DAT_10c700c4 != 0) {
    return CONCAT31((int3)((uint)DAT_10c700c4 >> 8),*(int *)(DAT_10c700c4 + 0x1b4) == 2);
  }
  return 0;
}

