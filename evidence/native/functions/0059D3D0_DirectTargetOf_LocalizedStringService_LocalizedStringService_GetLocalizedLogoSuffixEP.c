/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.LocalizedStringService::LocalizedStringService_GetLocalizedLogoSuffixEP at 0x00743a40,
   bytes e98b99e5ff. This is a static control-flow link from the registered entry; the target may
   have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.LocalizedStringService::LocalizedStringService_GetLocalizedLogoSuffixEP at 0x00743a40,
   bytes e98b99e5ff. This is a static control-flow link from the registered entry; the target may
   have other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

undefined4
DirectTargetOf_LocalizedStringService_LocalizedStringService_GetLocalizedLogoSuffixEP(void)

{
  int *piVar1;
  wchar_t *pwVar2;
  undefined4 unaff_ESI;
  void *unaff_EDI;
  undefined4 local_34;
  int local_30 [2];
  undefined **local_28;
  char *local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  if (DAT_011cf2d0 == 0) {
    return 0;
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pwVar2 = FUN_0059c200(DAT_011cf2d0);
  local_30[0] = 0;
  local_30[1] = 0;
  local_28 = (undefined **)0x0;
  local_24 = "String/LocalizedStringService";
  FUN_0040b590(local_30,pwVar2);
  local_20[0] = &PTR_FUN_00fba6f4;
  local_18 = 0;
  local_16 = 0;
  FUN_004f59c0(local_30 + 4,0x13,9,local_30,0x10,1);
  local_34 = 0;
  (**(code **)(*piVar1 + 0x50))(local_30 + 4,&local_34);
  local_28 = &PTR_FUN_00fba6f4;
  if (((uint)local_20[0] & 4) != 0) {
    FUN_004f5760(local_30 + 2,'\0');
  }
  if ((2 < (int)(local_30[0] - (int)unaff_EDI & 0xfffffffeU)) && (unaff_EDI != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_EDI);
  }
  return unaff_ESI;
}

