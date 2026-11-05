/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 8; earlier snapshot context. */
/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.CASUtils::CASUtils_ExtractEnabledLayerIndices at 0x005a5810, bytes e92b170500. This is
   a static control-flow link from the registered entry; the target may have other callers and its
   side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* WARNING: Removing unreachable block (ram,0x005f7004) */
/* WARNING: Removing unreachable block (ram,0x005f702c) */
/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.CASUtils::CASUtils_ExtractEnabledLayerIndices at 0x005a5810, bytes e92b170500. This is
   a static control-flow link from the registered entry; the target may have other callers and its
   side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

undefined1 * DirectTargetOf_CASUtils_CASUtils_ExtractEnabledLayerIndices(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  uint uVar3;
  undefined1 auStack_18e [2];
  uint auStack_18c [6];
  undefined4 auStack_174 [24];
  byte *pbStack_114;
  byte *pbStack_110;
  undefined1 *puStack_10c;
  byte abStack_104 [256];
  undefined1 auStack_4 [4];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if (pWVar2 == (LPCWSTR)0x0) {
    return (undefined1 *)0x0;
  }
  DesignPreset_InitializeEmpty(auStack_174);
  FUN_005c0060(auStack_174,pWVar2);
  pbStack_114 = abStack_104;
  puStack_10c = auStack_4;
  abStack_104[0] = 0;
  auStack_18c[0] = 7;
  uVar3 = 0;
  pbStack_110 = pbStack_114;
  do {
    uVar3 = uVar3 + 1;
    FUN_00930fa0(&pbStack_114,"Layer%dEnabled");
    FUN_005bf000(auStack_174,pbStack_114,auStack_18c,auStack_18e + -3);
  } while (uVar3 < 5);
  FUN_005bfce0(auStack_174);
  return (undefined1 *)0x0;
}

