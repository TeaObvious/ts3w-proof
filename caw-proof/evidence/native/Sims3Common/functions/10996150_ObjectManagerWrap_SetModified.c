/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_SetModified. Export ordinal(s):
   1992. Entry VA: 0x10996150. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000269. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl ObjectManagerWrap_SetModified(int param_1)

{
                    /* 0x996150  1992  ObjectManagerWrap_SetModified */
  if (param_1 != 0) {
    *(undefined1 *)(param_1 + 0x76) = 1;
  }
  return;
}

