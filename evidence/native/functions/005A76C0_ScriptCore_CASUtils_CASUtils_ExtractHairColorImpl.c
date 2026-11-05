/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01156758 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_ExtractHairColorImpl [assembly=ScriptCore token=0x060003A4;
   designPreset: System.String; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.CASUtils::CASUtils_ExtractHairColorImpl(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uStack_84;
  uint uStack_78;
  uint auStack_74 [4];
  undefined1 auStack_64 [100];
  
  uStack_84 = 0x5a76ca;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uStack_84 = param_1;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 == (LPCWSTR)0x0) {
    return 0;
  }
  DesignPreset_InitializeEmpty(auStack_64);
  FUN_005c0060(auStack_64,pWVar2);
  iVar3 = 0;
  do {
    PresetProperty_ReadWordByName
              (auStack_64,*(char **)((int)&PTR_s_Diffuse_Color_011561d4 + iVar3),&uStack_78,
               (uint *)((int)auStack_74 + iVar3));
    iVar3 = iVar3 + 4;
  } while (iVar3 < 0x10);
  (**(code **)(*piVar1 + 0x84))(auStack_74 + -2,4);
  uVar4 = 0;
  (**(code **)(*piVar1 + 0x9c))(&uStack_84,auStack_74 + -2,0,4);
  FUN_005bfce0(auStack_74 + -2);
  return uVar4;
}

