/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_GetBrushID. Export ordinal(s):
   2563. Entry VA: 0x10996610. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000AF2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int __cdecl WorldTerrainWrap_GetBrushID(int param_1)

{
  int *piVar1;
  
                    /* 0x996610  2563  WorldTerrainWrap_GetBrushID */
  piVar1 = (int *)PTR_LOOP_10c0e508;
  for (; param_1 != 0; param_1 = param_1 + -1) {
    piVar1 = FUN_10915ad0(piVar1);
  }
  return piVar1[4];
}

