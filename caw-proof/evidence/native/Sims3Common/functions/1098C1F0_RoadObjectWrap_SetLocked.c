/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RoadObjectWrap_SetLocked. Export ordinal(s):
   2065. Entry VA: 0x1098c1f0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000509. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl RoadObjectWrap_SetLocked(int param_1,int param_2)

{
                    /* 0x98c1f0  2065  RoadObjectWrap_SetLocked */
  if (param_1 != 0) {
    *(bool *)(param_1 + 0x24) = param_2 != 0;
  }
  return;
}

