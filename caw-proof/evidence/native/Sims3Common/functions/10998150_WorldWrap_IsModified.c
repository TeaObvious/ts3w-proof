/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_IsModified. Export ordinal(s): 2674.
   Entry VA: 0x10998150. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004F9. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl WorldWrap_IsModified(int param_1)

{
                    /* 0x998150  2674  WorldWrap_IsModified */
  return *(char *)(param_1 + 0x40) != '\0';
}

