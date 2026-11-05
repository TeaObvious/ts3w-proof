/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011612b8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LocalizedStringService::LocalizedStringService_GetLocalizedLogoSuffixEP
   [assembly=ScriptCore token=0x06000CF0; ; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_LocalizedStringService__LocalizedStringService_GetLocalizedLogoSuffixEP(void)

{
  int *piVar1;
  wchar_t *pwVar2;
  undefined4 unaff_ESI;
  void *unaff_EDI;
  undefined4 uStack_34;
  int aiStack_30 [2];
  undefined **ppuStack_28;
  char *pcStack_24;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  
  if (DAT_011cf2d0 == 0) {
    return 0;
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pwVar2 = FUN_0059c200(DAT_011cf2d0);
  aiStack_30[0] = 0;
  aiStack_30[1] = 0;
  ppuStack_28 = (undefined **)0x0;
  pcStack_24 = "String/LocalizedStringService";
  FUN_0040b590(aiStack_30,pwVar2);
  appuStack_20[0] = &PTR_FUN_00fba6f4;
  uStack_18 = 0;
  uStack_16 = 0;
  FUN_004f59c0(aiStack_30 + 4,0x13,9,aiStack_30,0x10,1);
  uStack_34 = 0;
  (**(code **)(*piVar1 + 0x50))(aiStack_30 + 4,&uStack_34);
  ppuStack_28 = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_20[0] & 4) != 0) {
    FUN_004f5760(aiStack_30 + 2,'\0');
  }
  if ((2 < (int)(aiStack_30[0] - (int)unaff_EDI & 0xfffffffeU)) && (unaff_EDI != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_EDI);
  }
  return unaff_ESI;
}

