/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_IsModified. Export ordinal(s):
   1982. Entry VA: 0x10996160. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600026A. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

bool __cdecl ObjectManagerWrap_IsModified(int param_1)

{
                    /* 0x996160  1982  ObjectManagerWrap_IsModified */
  return *(char *)(param_1 + 0x76) != '\0';
}

