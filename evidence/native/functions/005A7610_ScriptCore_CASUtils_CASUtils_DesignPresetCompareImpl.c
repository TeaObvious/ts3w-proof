/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01156730 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_DesignPresetCompareImpl [assembly=ScriptCore token=0x06000394;
   designPreset1: System.String, designPreset2: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_CASUtils__CASUtils_DesignPresetCompareImpl(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  LPCWSTR pWVar3;
  uint uVar4;
  undefined4 uVar5;
  undefined1 auStack_be [2];
  undefined4 auStack_bc [21];
  undefined4 auStack_68 [26];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  pWVar3 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if (pWVar2 == (LPCWSTR)0x0) {
    if (pWVar3 == (LPCWSTR)0x0) {
      return 1;
    }
  }
  else if (pWVar3 != (LPCWSTR)0x0) {
    DesignPreset_InitializeEmpty(auStack_68);
    DesignPreset_InitializeEmpty(auStack_be + -10);
    FUN_005c0060(auStack_68,pWVar2);
    FUN_005c0060(auStack_be + -10,pWVar3);
    uVar4 = FUN_005befd0(auStack_68,(int)(auStack_be + -10));
    FUN_005bfce0((undefined4 *)(auStack_be + -10));
    uVar5 = FUN_005bfce0(auStack_68);
    return CONCAT31((int3)((uint)uVar5 >> 8),(char)uVar4);
  }
  return (uint)pWVar3 & 0xffffff00;
}

