/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LotWrap_SetLotType. Export ordinal(s): 1927.
   Entry VA: 0x109867e0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000A9B. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl LotWrap_SetLotType(int param_1,int param_2)

{
                    /* 0x9867e0  1927  LotWrap_SetLotType */
  if ((param_1 != 0) && (*(int *)(param_1 + 0x408) != param_2)) {
    *(undefined4 *)(param_1 + 0x40c) = 0;
    *(int *)(param_1 + 0x408) = param_2;
  }
  return;
}

