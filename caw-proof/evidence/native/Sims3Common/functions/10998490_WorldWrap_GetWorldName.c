/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetWorldName. Export ordinal(s): 2664.
   Entry VA: 0x10998490. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000511. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl WorldWrap_GetWorldName(int param_1)

{
  uint uVar1;
  
                    /* 0x998490  2664  WorldWrap_GetWorldName */
  if (param_1 != 0) {
    uVar1 = FUN_1039c2e0(param_1 + 0x270);
    return uVar1;
  }
  return 0xffffffff;
}

