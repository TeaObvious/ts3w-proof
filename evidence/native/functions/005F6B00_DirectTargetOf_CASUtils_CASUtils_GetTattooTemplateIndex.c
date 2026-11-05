/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.CASUtils::CASUtils_GetTattooTemplateIndex
   at 0x005a57e0, bytes e91b130500. This is a static control-flow link from the registered entry;
   the target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.CASUtils::CASUtils_GetTattooTemplateIndex
   at 0x005a57e0, bytes e91b130500. This is a static control-flow link from the registered entry;
   the target may have other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

uint __cdecl DirectTargetOf_CASUtils_CASUtils_GetTattooTemplateIndex(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  LPCWSTR pWVar3;
  uint uVar4;
  uint uVar5;
  undefined1 auStack_be [2];
  undefined4 auStack_bc [21];
  undefined4 auStack_68 [26];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  pWVar3 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if ((pWVar2 == (LPCWSTR)0x0) || (pWVar3 == (LPCWSTR)0x0)) {
    return 0;
  }
  DesignPreset_InitializeEmpty(auStack_68);
  FUN_005c0060(auStack_68,pWVar2);
  DesignPreset_InitializeEmpty(auStack_be + -10);
  FUN_005c0060(auStack_be + -10,pWVar3);
  uVar5 = 1;
  do {
    uVar4 = FUN_005f6a90(auStack_68,auStack_be + -10,uVar5,(char)param_1);
    if ((char)uVar4 != '\0') {
      FUN_005bfce0((undefined4 *)(auStack_be + -10));
      FUN_005bfce0(auStack_68);
      return uVar5;
    }
    uVar5 = uVar5 + 1;
  } while (uVar5 < 6);
  FUN_005bfce0((undefined4 *)(auStack_be + -10));
  FUN_005bfce0(auStack_68);
  return 0xffffffff;
}

