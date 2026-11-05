/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_FunctionProxy. Export
   ordinal(s): 494. Entry VA: 0x10539af0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600058C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl OnlineFeaturesHost_FunctionProxy(undefined4 param_1)

{
  undefined4 *puVar1;
  int *piVar2;
  undefined4 uStack_34;
  int aiStack_30 [3];
  char *pcStack_24;
  undefined **appuStack_20 [2];
  uint uStack_18;
  
  puVar1 = FUN_10538380(appuStack_20,param_1);
  aiStack_30[0] = 0;
  aiStack_30[1] = 0;
  aiStack_30[2] = 0;
  pcStack_24 = "SIGS/sFunctionProxy/tmpVal";
  FUN_1006a620(aiStack_30,(short *)*puVar1);
  if ((2 < (int)(uStack_18 - (int)appuStack_20[0] & 0xfffffffe)) &&
     (appuStack_20[0] != (undefined **)0x0)) {
    FUN_10918e90((int)appuStack_20[0]);
  }
  piVar2 = (int *)FUN_1055b120();
  if (piVar2 != (int *)0x0) {
    appuStack_20[0] = &PTR_FUN_10aca5b4;
    uStack_18 = 0;
    FUN_10928b90(appuStack_20,0x13,9,aiStack_30,0x10,1);
    (**(code **)(*piVar2 + 0x50))(appuStack_20,&uStack_34);
    appuStack_20[0] = &PTR_FUN_10aca5b4;
    if ((uStack_18 & 4) != 0) {
      FUN_10928a90(appuStack_20,'\0');
    }
  }
  if ((2 < (int)(aiStack_30[2] - aiStack_30[0] & 0xfffffffeU)) && (aiStack_30[0] != 0)) {
    FUN_10918e90(aiStack_30[0]);
  }
  return uStack_34;
}

