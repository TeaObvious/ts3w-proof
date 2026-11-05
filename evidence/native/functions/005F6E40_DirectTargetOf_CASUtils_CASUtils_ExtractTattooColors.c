/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.CASUtils::CASUtils_ExtractTattooColors at
   0x005a5800, bytes e93b160500. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.CASUtils::CASUtils_ExtractTattooColors at
   0x005a5800, bytes e93b160500. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

int __cdecl DirectTargetOf_CASUtils_CASUtils_ExtractTattooColors(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  undefined4 uStack_7c;
  uint uStack_78;
  undefined4 auStack_74 [4];
  undefined4 auStack_64 [25];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if (pWVar2 == (LPCWSTR)0x0) {
    return 0;
  }
  iVar5 = 0;
  DesignPreset_InitializeEmpty(auStack_64);
  FUN_005c0060(auStack_64,pWVar2);
  uStack_78 = 7;
  uVar4 = 0;
  do {
    FUN_005bf000(auStack_64,*(byte **)((int)&PTR_s_ColorREnabled_01158d50 + uVar4),&uStack_78,
                 (int)auStack_74 + -9);
    uVar3 = FUN_005f6c50(auStack_64,*(undefined4 *)((int)&PTR_s_Layer_dColorR_01158d40 + uVar4));
    *(undefined4 *)((int)auStack_74 + uVar4) = uVar3;
    uVar4 = uVar4 + 4;
    iVar5 = iVar5 + 1;
  } while (uVar4 < 0x10);
  if (iVar5 == 0) {
    FUN_005bfce0(auStack_64);
    return 0;
  }
  iVar6 = iVar5;
  (**(code **)(*piVar1 + 0x84))(&uStack_7c);
  (**(code **)(*piVar1 + 0x9c))(auStack_74 + -4,&uStack_7c,0,iVar5);
  FUN_005bfce0(&uStack_7c);
  return iVar6;
}

