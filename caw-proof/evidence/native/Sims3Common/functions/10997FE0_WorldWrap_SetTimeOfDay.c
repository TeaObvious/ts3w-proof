/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_SetTimeOfDay. Export ordinal(s): 2709.
   Entry VA: 0x10997fe0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004D3. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl WorldWrap_SetTimeOfDay(int param_1,undefined4 param_2)

{
                    /* 0x997fe0  2709  WorldWrap_SetTimeOfDay */
  *(undefined4 *)(param_1 + 0x124) = param_2;
  return;
}

