/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationManager_GetFireAssertEvents. Export
   ordinal(s): 1657. Entry VA: 0x1097d070. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060002FB. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint AnimationManager_GetFireAssertEvents(void)

{
                    /* 0x97d070  1657  AnimationManager_GetFireAssertEvents */
  if (DAT_10c72100 != 0) {
    return *(uint *)(DAT_10c72100 + 0x28) >> 2 & 1;
  }
  return 0;
}

