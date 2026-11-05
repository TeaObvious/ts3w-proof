/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LocalizedStringService_GetLocalizedLogoSuffix.
   Export ordinal(s): 432. Entry VA: 0x10535090. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000022. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 LocalizedStringService_GetLocalizedLogoSuffix(void)

{
  int *piVar1;
  wchar_t *pwVar2;
  undefined4 unaff_ESI;
  int unaff_EDI;
  undefined4 uStack_34;
  int aiStack_30 [2];
  undefined **ppuStack_28;
  char *pcStack_24;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  
  if (DAT_10c72bf0 != 0) {
    piVar1 = (int *)FUN_1055b120();
    pwVar2 = FUN_10395790(DAT_10c72bf0);
    aiStack_30[0] = 0;
    aiStack_30[1] = 0;
    ppuStack_28 = (undefined **)0x0;
    pcStack_24 = "String/LocalizedStringService";
    FUN_1006a620(aiStack_30,pwVar2);
    appuStack_20[0] = &PTR_FUN_10aca5b4;
    uStack_18 = 0;
    uStack_16 = 0;
    FUN_10928b90(appuStack_20,0x13,9,aiStack_30,0x10,1);
    uStack_34 = 0;
    (**(code **)(*piVar1 + 0x50))(appuStack_20,&uStack_34);
    ppuStack_28 = &PTR_FUN_10aca5b4;
    if (((uint)appuStack_20[0] & 4) != 0) {
      FUN_10928a90(&ppuStack_28,'\0');
    }
    if ((2 < (int)(aiStack_30[0] - unaff_EDI & 0xfffffffeU)) && (unaff_EDI != 0)) {
      FUN_10918e90(unaff_EDI);
    }
    return unaff_ESI;
  }
  return 0;
}

