/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   UserToolUtils_GetTerrainProductListByCategoryImpl. Export ordinal(s): 1210. Entry VA: 0x102c2b20.
   Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A86. This is an export/declaration
   annotation only; ABI, behavior and runtime execution require the original instructions and caller
   evidence. */

undefined4 __cdecl UserToolUtils_GetTerrainProductListByCategoryImpl(int param_1)

{
  undefined4 uVar1;
  int aiStack_10 [3];
  char *pcStack_4;
  
  if (DAT_10c70534 != (void *)0x0) {
    aiStack_10[0] = 0;
    aiStack_10[1] = 0;
    aiStack_10[2] = 0;
    pcStack_4 = "World/Catalog/ProductVector";
    FUN_102670c0(DAT_10c70534,param_1,aiStack_10);
    uVar1 = FUN_102c2510(aiStack_10,0x12,0);
    if (aiStack_10[0] != 0) {
      FUN_10918e90(aiStack_10[0]);
    }
    return uVar1;
  }
  return 0;
}

