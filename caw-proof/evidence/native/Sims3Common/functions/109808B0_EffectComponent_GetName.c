/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: EffectComponent_GetName. Export ordinal(s): 1800.
   Entry VA: 0x109808b0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060003E4. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl EffectComponent_GetName(int param_1)

{
                    /* 0x9808b0  1800  EffectComponent_GetName */
  if (param_1 != 0) {
    return *(undefined4 *)(param_1 + 8);
  }
  return 0;
}

