/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   UserToolUtils_GetFloorPatternPresetListByTypeImpl. Export ordinal(s): 1193. Entry VA: 0x102c31e0.
   Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A8A. This is an export/declaration
   annotation only; ABI, behavior and runtime execution require the original instructions and caller
   evidence. */

undefined4 __cdecl UserToolUtils_GetFloorPatternPresetListByTypeImpl(uint param_1)

{
  undefined4 uVar1;
  int aiStack_10 [3];
  char *pcStack_4;
  
  if (DAT_10c70534 != (void *)0x0) {
    aiStack_10[0] = 0;
    aiStack_10[1] = 0;
    aiStack_10[2] = 0;
    pcStack_4 = "World/Catalog/ProductPresetReferenceVector";
    FUN_102654d0(DAT_10c70534,param_1,aiStack_10);
    uVar1 = FUN_102c2cd0(aiStack_10,1);
    if (aiStack_10[0] != 0) {
      FUN_10918e90(aiStack_10[0]);
    }
    return uVar1;
  }
  return 0;
}

