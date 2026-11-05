/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.CASUtils::CASUtils_ExtractTattooDimensions
   at 0x005a5850, bytes e9ab1b0500. This is a static control-flow link from the registered entry;
   the target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.CASUtils::CASUtils_ExtractTattooDimensions
   at 0x005a5850, bytes e9ab1b0500. This is a static control-flow link from the registered entry;
   the target may have other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

int __cdecl DirectTargetOf_CASUtils_CASUtils_ExtractTattooDimensions(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  uint uVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined4 uStack_d0;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 auStack_7c [6];
  undefined1 auStack_64 [100];
  
  uStack_d0 = 0x5f740d;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uStack_d0 = param_1;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 == (LPCWSTR)0x0) {
    return 0;
  }
  DesignPreset_InitializeEmpty(auStack_64);
  FUN_005c0060(auStack_64,pWVar2);
  iVar4 = (-(uint)((char)param_1 != '\0') & 0xfffffff0) + 0x14;
  if ((char)param_1 == '\0') {
    uVar3 = 0;
    puVar5 = &uStack_b4;
    do {
      uVar3 = uVar3 + 1;
      FUN_005f7160(auStack_64,uVar3,puVar5);
      puVar5 = puVar5 + 4;
    } while (uVar3 < 5);
  }
  else {
    uStack_bc = 0;
    uStack_b8 = 0;
    uStack_c4 = 0;
    uStack_c0 = 0;
    FUN_005f5bd0(auStack_64,&uStack_bc,&uStack_c4);
    uStack_b4 = uStack_bc;
    uStack_b0 = uStack_b8;
    uStack_ac = uStack_c4;
    uStack_a8 = uStack_c0;
  }
  (**(code **)(*piVar1 + 0x90))(auStack_7c + -0x13,iVar4);
  (**(code **)(*piVar1 + 0xa8))(&uStack_d0,&uStack_bc,0);
  FUN_005bfce0(auStack_7c);
  return iVar4;
}

