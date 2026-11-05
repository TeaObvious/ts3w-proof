/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_SetModified. Export ordinal(s): 2705.
   Entry VA: 0x10998140. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004F8. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl WorldWrap_SetModified(int param_1)

{
                    /* 0x998140  2705  WorldWrap_SetModified */
  if (param_1 != 0) {
    *(undefined1 *)(param_1 + 0x40) = 1;
  }
  return;
}

