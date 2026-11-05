/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LotWrap_GetResidentialLotSubType. Export
   ordinal(s): 1916. Entry VA: 0x10986620. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000A9C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl LotWrap_GetResidentialLotSubType(int param_1)

{
                    /* 0x986620  1916  LotWrap_GetResidentialLotSubType */
  if ((param_1 != 0) && (*(int *)(param_1 + 0x408) == 0)) {
    return *(undefined4 *)(param_1 + 0x40c);
  }
  return 0;
}

