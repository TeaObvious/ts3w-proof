/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_GetBuildModePriceScaleImpl. Export
   ordinal(s): 1183. Entry VA: 0x102be450. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000AAA. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

float10 UserToolUtils_GetBuildModePriceScaleImpl(void)

{
  float10 fVar1;
  
                    /* 0x2be450  1183  UserToolUtils_GetBuildModePriceScaleImpl */
  if ((DAT_10c70c20 != 0) && (*(int *)(DAT_10c70c20 + 8) != 0)) {
    fVar1 = FUN_102c73d0(*(int *)(DAT_10c70c20 + 8));
    return fVar1;
  }
  return (float10)DAT_10acb0d4;
}

