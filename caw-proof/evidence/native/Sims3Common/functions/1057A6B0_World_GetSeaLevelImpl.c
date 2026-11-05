/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetSeaLevelImpl. Export ordinal(s): 1379.
   Entry VA: 0x1057a6b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000B9E. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

float10 World_GetSeaLevelImpl(void)

{
  float10 fVar1;
  
                    /* 0x57a6b0  1379  World_GetSeaLevelImpl */
  if (DAT_10c700c4 != 0) {
    fVar1 = FUN_10235540(DAT_10c700c4);
    return fVar1;
  }
  return (float10)0.0;
}

