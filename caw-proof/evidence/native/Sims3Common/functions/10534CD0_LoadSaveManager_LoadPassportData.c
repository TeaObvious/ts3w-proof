/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Type propagation algorithm not settling */
/* CAW 1.22.10 Sims3Common.dll PE export identity: LoadSaveManager_LoadPassportData. Export
   ordinal(s): 1891. Entry VA: 0x10534cd0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600003A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl LoadSaveManager_LoadPassportData(undefined4 param_1)

{
  int *piVar1;
  int iVar2;
  wint_t *pwVar3;
  int unaff_ESI;
  undefined4 unaff_EDI;
  int aiStack_34 [2];
  undefined **ppuStack_2c;
  undefined4 uStack_28;
  char *apcStack_24 [9];
  
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  iVar2 = FUN_1006ee60();
  if (iVar2 != 0) {
    aiStack_34[1] = 0;
    ppuStack_2c = (undefined **)0x0;
    uStack_28 = 0;
    apcStack_24[0] = "World/LoadSaveManager";
    FUN_1006a620(aiStack_34 + 1,L"NotLoaded");
    pwVar3 = (wint_t *)(**(code **)(*piVar1 + 0x58))(param_1);
    if (pwVar3 == (wint_t *)0x0) {
      if ((2 < (int)((int)ppuStack_2c - aiStack_34[0] & 0xfffffffeU)) && (aiStack_34[0] != 0)) {
        FUN_10918e90(aiStack_34[0]);
        return 0;
      }
    }
    else {
      if (*pwVar3 != 0) {
        FUN_10071a70(aiStack_34,pwVar3);
        FUN_102c0e40(apcStack_24,aiStack_34);
        (**(code **)(*piVar1 + 0x50))(apcStack_24,&stack0xffffffc8);
        ppuStack_2c = &PTR_FUN_10aca5b4;
        if (((uint)apcStack_24[0] & 4) != 0) {
          FUN_10928a90(&ppuStack_2c,'\0');
        }
        if ((2 < (int)(aiStack_34[0] - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
          FUN_10918e90(unaff_ESI);
        }
        return unaff_EDI;
      }
      if ((2 < (int)((int)ppuStack_2c - aiStack_34[0] & 0xfffffffeU)) && (aiStack_34[0] != 0)) {
        FUN_10918e90(aiStack_34[0]);
      }
    }
  }
  return 0;
}

