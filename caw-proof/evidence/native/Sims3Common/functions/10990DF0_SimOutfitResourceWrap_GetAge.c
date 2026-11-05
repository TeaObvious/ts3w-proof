/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimOutfitResourceWrap_GetAge. Export ordinal(s):
   2374. Entry VA: 0x10990df0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600038A. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl SimOutfitResourceWrap_GetAge(int param_1)

{
                    /* 0x990df0  2374  SimOutfitResourceWrap_GetAge */
  return *(uint *)(param_1 + 0x38) & 0x7f;
}

