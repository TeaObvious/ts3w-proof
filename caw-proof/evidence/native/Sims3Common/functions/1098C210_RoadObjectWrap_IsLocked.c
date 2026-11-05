/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RoadObjectWrap_IsLocked. Export ordinal(s): 2062.
   Entry VA: 0x1098c210. Original managed P/Invoke MethodDef(s): none located in the shipped managed
   assemblies. This is an export/declaration annotation only; ABI, behavior and runtime execution
   require the original instructions and caller evidence. */

bool __cdecl RoadObjectWrap_IsLocked(int param_1)

{
                    /* 0x98c210  2062  RoadObjectWrap_IsLocked */
  if (param_1 != 0) {
    return *(char *)(param_1 + 0x24) != '\0';
  }
  return false;
}

