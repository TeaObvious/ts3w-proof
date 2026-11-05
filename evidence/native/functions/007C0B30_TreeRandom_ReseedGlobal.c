/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree numeric instruction contract. One signed32stackseed RET4,
   unusedincomingECX/EDX. seed!=-1 clampssignedseed<=1 to1 thencdeclFillFromSignedSeed.
   Setsglobalinitializedbyte011D9650. Sentinel-1 separateambient path: default12345 or
   existingNext*float2147483648 truncated, calls_time64(NULL), usesSIGNEDLOW32time forratio
   withselectedseed, callsFillFromFraction(double), setsinitialized. No
   generalizedsafeentropy/zero-divisor/failureclaim; currentportableexplicitseedpathrejects-1. */

void TreeRandom_ReseedGlobal(int seed)

{
  int iVar1;
  float10 fVar2;
  __time64_t _Var3;
  
  if (seed != -1) {
    if (seed < 2) {
      seed = 1;
    }
    TreeRandom_FillFromSignedSeed(seed);
    DAT_011d9650 = '\x01';
    return;
  }
  seed = 0x3039;
  if (DAT_011d9650 != '\0') {
    fVar2 = TreeRandom_NextGlobal();
    seed = Compiler_TruncateX87ToLowInt32(fVar2 * (float10)FLOAT_01017bf0);
  }
  _Var3 = _time64((__time64_t *)0x0);
  iVar1 = (int)_Var3;
  if (iVar1 < seed) {
    TreeRandom_FillFromFraction((double)iVar1 / (double)seed);
    DAT_011d9650 = '\x01';
    return;
  }
  TreeRandom_FillFromFraction((double)seed / (double)iVar1);
  DAT_011d9650 = '\x01';
  return;
}

