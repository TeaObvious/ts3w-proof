/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RoadObjectWrap_SetSelected. Export ordinal(s):
   2066. Entry VA: 0x1098c140. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060001D9. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl RoadObjectWrap_SetSelected(int param_1,int param_2)

{
                    /* 0x98c140  2066  RoadObjectWrap_SetSelected */
  *(bool *)(param_1 + 4) = param_2 != 0;
  return;
}

