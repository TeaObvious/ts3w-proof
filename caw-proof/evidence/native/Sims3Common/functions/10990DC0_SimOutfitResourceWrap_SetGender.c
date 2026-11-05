/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimOutfitResourceWrap_SetGender. Export
   ordinal(s): 2386. Entry VA: 0x10990dc0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000388. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SimOutfitResourceWrap_SetGender(int param_1,uint param_2)

{
                    /* 0x990dc0  2386  SimOutfitResourceWrap_SetGender */
  *(uint *)(param_1 + 0x38) = *(uint *)(param_1 + 0x38) & 0xffffcfff | param_2;
  return;
}

