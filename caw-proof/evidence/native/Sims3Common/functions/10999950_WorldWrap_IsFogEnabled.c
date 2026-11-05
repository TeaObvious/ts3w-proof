/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_IsFogEnabled. Export ordinal(s): 2672.
   Entry VA: 0x10999950. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000515. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl WorldWrap_IsFogEnabled(int param_1)

{
                    /* 0x999950  2672  WorldWrap_IsFogEnabled */
  if ((param_1 != 0) && (*(int *)(param_1 + 100) != 0)) {
    return *(char *)(*(int *)(param_1 + 100) + 0x982) != '\0';
  }
  return false;
}

