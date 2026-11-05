/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LotWrap_GetLotAdditionalPropertyValue. Export
   ordinal(s): 1911. Entry VA: 0x109866a0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000AA0. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl LotWrap_GetLotAdditionalPropertyValue(int param_1,undefined4 *param_2)

{
                    /* 0x9866a0  1911  LotWrap_GetLotAdditionalPropertyValue */
  *param_2 = DAT_10acb0d4;
  if (param_1 != 0) {
    *param_2 = *(undefined4 *)(param_1 + 0x420);
    return 1;
  }
  return 0;
}

