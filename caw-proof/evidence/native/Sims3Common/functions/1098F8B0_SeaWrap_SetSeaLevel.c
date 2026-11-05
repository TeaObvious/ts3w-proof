/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified CAW 1.22.10 Sims3Common.dll PE export SeaWrap_SetSeaLevel (RVA 0x98F8B0). Pristine
   CSHostWrap declares void SeaWrap_SetSeaLevel(IntPtr sea, float level). Raw x86 moves the sea
   pointer into ECX, pushes the float level and literal zero, then calls 0x101D9860. The helper
   stores level at sea+0x14 and a global, marks scene state dirty when present, and calls child
   update 0x101DBF80 across a collection. Ghidra pseudocode omits the implicit this pointer in the
   wrapper; it must not be read as ignoring the sea argument. Static code does not prove generated
   water geometry. */

void __cdecl SeaWrap_SetSeaLevel(void *param_1,undefined4 param_2)

{
                    /* 0x98f8b0  2297  SeaWrap_SetSeaLevel */
  CAW_SeaSetLevelAndPropagate(param_1,param_2);
  return;
}

