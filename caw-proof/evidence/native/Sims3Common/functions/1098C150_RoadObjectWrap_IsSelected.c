/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RoadObjectWrap_IsSelected. Export ordinal(s):
   2063. Entry VA: 0x1098c150. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060001DA. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

bool __cdecl RoadObjectWrap_IsSelected(int param_1)

{
                    /* 0x98c150  2063  RoadObjectWrap_IsSelected */
  return *(char *)(param_1 + 4) != '\0';
}

