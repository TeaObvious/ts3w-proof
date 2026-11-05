/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LotWrap_GetLotBeautifulVistaBuf. Export
   ordinal(s): 1912. Entry VA: 0x109866f0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000AA2. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl LotWrap_GetLotBeautifulVistaBuf(int param_1,undefined4 *param_2)

{
                    /* 0x9866f0  1912  LotWrap_GetLotBeautifulVistaBuf */
  *param_2 = 0;
  if (param_1 != 0) {
    *param_2 = *(undefined4 *)(param_1 + 0x418);
    return 1;
  }
  return 0;
}

