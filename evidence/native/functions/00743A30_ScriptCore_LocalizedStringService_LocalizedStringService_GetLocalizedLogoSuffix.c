/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011612b0 (original PC 1.67 TS3W.exe).
   ScriptCore.LocalizedStringService::LocalizedStringService_GetLocalizedLogoSuffix
   [assembly=ScriptCore token=0x06000CEF; ; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_LocalizedStringService__LocalizedStringService_GetLocalizedLogoSuffix(void)

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
  
  if (DAT_011cf2d0 != 0) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    pwVar2 = FUN_0059bd30(DAT_011cf2d0);
    aiStack_30[0] = 0;
    aiStack_30[1] = 0;
    ppuStack_28 = (undefined **)0x0;
    pcStack_24 = "String/LocalizedStringService";
    FUN_0040b590(aiStack_30,pwVar2);
    appuStack_20[0] = &PTR_FUN_00fba6f4;
    uStack_18 = 0;
    uStack_16 = 0;
    FUN_004f59c0(appuStack_20,0x13,9,aiStack_30,0x10,1);
    uStack_34 = 0;
    (**(code **)(*piVar1 + 0x50))(appuStack_20,&uStack_34);
    ppuStack_28 = &PTR_FUN_00fba6f4;
    if (((uint)appuStack_20[0] & 4) != 0) {
      FUN_004f5760(&ppuStack_28,'\0');
    }
    if ((2 < (int)(aiStack_30[0] - unaff_EDI & 0xfffffffeU)) && (unaff_EDI != 0)) {
      FUN_004e44e0(unaff_EDI);
    }
    return unaff_ESI;
  }
  return 0;
}

