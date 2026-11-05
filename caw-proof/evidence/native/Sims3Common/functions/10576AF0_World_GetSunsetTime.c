/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetSunsetTime. Export ordinal(s): 1381.
   Entry VA: 0x10576af0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C4D. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

float10 World_GetSunsetTime(void)

{
                    /* 0x576af0  1381  World_GetSunsetTime */
  if (DAT_10c700c4 != 0) {
    return (float10)*(float *)(DAT_10c700c4 + 0x130);
  }
  return (float10)_DAT_10aaef14;
}

