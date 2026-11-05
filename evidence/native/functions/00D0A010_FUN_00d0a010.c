/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: Two physical binary32 stack words, full EAX0/1, cdecl plainRET. COMISS second,first then JA accepts ordered second>first. Otherwise x87 subtract/absolute, FCOMIP stored binary32 tolerance0108482C versus absolute difference, then JA accepts strictly smaller difference. Unordered falls through both JA and returns0. Actual C reverses that exceptional result; its apparent ordered expression is not authoritative. With first1 the current CLR area<0.9 test is not all-input numerical identity. Productive snapped manual tool coordinates do not yet establish an admitted fractional counterexample; no demonstrated gameplay defect or rounding-policy correction follows. */

undefined4 __cdecl FUN_00d0a010(float param_1,float param_2)

{
  if ((param_2 <= param_1) && (0.1 <= ABS(param_1 - param_2))) {
    return 0;
  }
  return 1;
}
