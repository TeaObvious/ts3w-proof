/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LotWrap_SetResidentialLotSubType. Export
   ordinal(s): 1928. Entry VA: 0x10986640. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000A9D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl LotWrap_SetResidentialLotSubType(int param_1,undefined4 param_2)

{
                    /* 0x986640  1928  LotWrap_SetResidentialLotSubType */
  if ((param_1 != 0) && (*(int *)(param_1 + 0x408) == 0)) {
    *(undefined4 *)(param_1 + 0x40c) = param_2;
  }
  return;
}

