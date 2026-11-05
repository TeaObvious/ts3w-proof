/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetLocalizedNameKey. Export ordinal(s):
   2637. Entry VA: 0x10999780. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600050D. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int __cdecl WorldWrap_GetLocalizedNameKey(int param_1)

{
                    /* 0x999780  2637  WorldWrap_GetLocalizedNameKey */
  if ((param_1 != 0) && (*(int *)(param_1 + 0x27c) != *(int *)(param_1 + 0x280))) {
    return *(int *)(param_1 + 0x27c);
  }
  return 0;
}

