/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_SetWorldType. Export ordinal(s): 2713.
   Entry VA: 0x109984b0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000512. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl WorldWrap_SetWorldType(int param_1,undefined4 param_2)

{
                    /* 0x9984b0  2713  WorldWrap_SetWorldType */
  if (param_1 != 0) {
    *(undefined4 *)(param_1 + 0x2d4) = param_2;
  }
  return;
}

