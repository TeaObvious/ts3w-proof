/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x005f7004) */
/* WARNING: Removing unreachable block (ram,0x005f702c) */
/* Verified PC 1.67 registration table at 0x011567a0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_ExtractEnabledLayerIndices [assembly=ScriptCore token=0x0600039B;
   pPreset: System.String; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 * ScriptCore_CASUtils__CASUtils_ExtractEnabledLayerIndices(undefined4 param_1)

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

