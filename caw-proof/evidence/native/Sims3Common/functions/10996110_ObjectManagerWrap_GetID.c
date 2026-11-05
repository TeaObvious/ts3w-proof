/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_GetID. Export ordinal(s): 1969.
   Entry VA: 0x10996110. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600025E. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined8 __cdecl ObjectManagerWrap_GetID(int param_1)

{
                    /* 0x996110  1969  ObjectManagerWrap_GetID */
  if (param_1 != 0) {
    return *(undefined8 *)(param_1 + 0x48);
  }
  return 0;
}

