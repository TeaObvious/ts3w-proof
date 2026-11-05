/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_SetLotLightingSolversEnabled. Export
   ordinal(s): 2704. Entry VA: 0x109980e0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004DF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldWrap_SetLotLightingSolversEnabled(int param_1,int param_2)

{
                    /* 0x9980e0  2704  WorldWrap_SetLotLightingSolversEnabled */
  *(bool *)(param_1 + 0x151) = param_2 != 0;
  return;
}

