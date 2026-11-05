/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LotWrap_UsedForBuild. Export ordinal(s): 1932.
   Entry VA: 0x10986570. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000A90. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl LotWrap_UsedForBuild(int param_1)

{
                    /* 0x986570  1932  LotWrap_UsedForBuild */
  if (param_1 != 0) {
    return *(uint *)(param_1 + 0x130) & 1;
  }
  return 0;
}

