/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_NumberOfObjectManagers. Export
   ordinal(s): 2682. Entry VA: 0x10998610. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004B6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl WorldWrap_NumberOfObjectManagers(int param_1)

{
                    /* 0x998610  2682  WorldWrap_NumberOfObjectManagers */
  if (param_1 != 0) {
    return *(int *)(param_1 + 0xa0) - *(int *)(param_1 + 0x9c) >> 2;
  }
  return 0;
}

