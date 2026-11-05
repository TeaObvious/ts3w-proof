/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_TerrainSculptToolActiveImpl. Export
   ordinal(s): 1235. Entry VA: 0x102be510. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000AB6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint UserToolUtils_TerrainSculptToolActiveImpl(void)

{
  uint uVar1;
  uint uVar2;
  
                    /* 0x2be510  1235  UserToolUtils_TerrainSculptToolActiveImpl */
  uVar2 = FUN_102c72b0();
  if (((uVar2 != 0) &&
      (((*(int *)(uVar2 + 0x30) == 0xf || (*(int *)(uVar2 + 0x30) == 0x17)) &&
       (uVar1 = *(uint *)(uVar2 + 0x2c), uVar2 = uVar1, uVar1 != 0)))) &&
     ((uVar2 = uVar1 - 0x28, uVar2 != 0 && (*(char *)(uVar1 + 0x5e) != '\0')))) {
    return CONCAT31((int3)(uVar2 >> 8),1);
  }
  return uVar2 & 0xffffff00;
}

