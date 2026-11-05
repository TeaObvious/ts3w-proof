/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_CompoundBlendGetNameImpl. Export
   ordinal(s): 73. Entry VA: 0x103a7220. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600044E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl CASUtils_CompoundBlendGetNameImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  int unaff_EDI;
  int iStack_30;
  undefined **appuStack_2c [2];
  byte abStack_24 [28];
  undefined4 uStack_8;
  
  if ((param_1 & 0xff000000) != 0x35000000) {
    return 0;
  }
  piVar1 = (int *)FUN_1055b120();
  iVar2 = (**(code **)(*piVar1 + 0xcc))();
  if (iVar2 != 0) {
    FUN_1006a320(&stack0xffffffcc,(undefined4 *)(iVar2 + 0x28));
    if ((iStack_30 - unaff_EDI & 0xfffffffeU) != 0) {
      FUN_102c0de0(abStack_24,&stack0xffffffcc);
      (**(code **)(*piVar1 + 0x50))(abStack_24,&stack0x00000000);
      appuStack_2c[0] = &PTR_FUN_10aca5b4;
      if ((abStack_24[0] & 4) != 0) {
        FUN_10928a90(appuStack_2c,'\0');
      }
      if ((2 < (int)(unaff_EDI - param_1 & 0xfffffffe)) && (param_1 != 0)) {
        FUN_10918e90(param_1);
      }
      return uStack_8;
    }
    if ((2 < (int)((int)appuStack_2c[0] - unaff_EDI & 0xfffffffeU)) && (unaff_EDI != 0)) {
      FUN_10918e90(unaff_EDI);
    }
  }
  return 0;
}

