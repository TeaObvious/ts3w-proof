/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetLocalizedDetailsKey. Export
   ordinal(s): 2635. Entry VA: 0x109997a0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600050B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl WorldWrap_GetLocalizedDetailsKey(int param_1)

{
                    /* 0x9997a0  2635  WorldWrap_GetLocalizedDetailsKey */
  if ((param_1 != 0) && (*(int *)(param_1 + 0x298) != *(int *)(param_1 + 0x29c))) {
    return *(int *)(param_1 + 0x298);
  }
  return 0;
}

