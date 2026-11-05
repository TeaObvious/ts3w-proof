/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01156760 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_ExtractEyebrowColorImpl [assembly=ScriptCore token=0x060003A5;
   designPreset: System.String; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.CASUtils::CASUtils_ExtractEyebrowColorImpl(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined4 uVar3;
  undefined4 uStack_78;
  undefined4 uStack_6c;
  uint uStack_68;
  undefined1 auStack_64 [100];
  
  uStack_78 = 0x5a777a;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uStack_78 = param_1;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 == (LPCWSTR)0x0) {
    return 0;
  }
  DesignPreset_InitializeEmpty(auStack_64);
  FUN_005c0060(auStack_64,pWVar2);
  PresetProperty_ReadWordByName(auStack_64,"Tint Color",&uStack_68,&uStack_6c);
  (**(code **)(*piVar1 + 0x84))(auStack_64 + -0xc);
  uVar3 = 0;
  (**(code **)(*piVar1 + 0x9c))(&uStack_78,auStack_64 + -0x10,0,1);
  FUN_005bfce0((undefined4 *)(auStack_64 + -0x18));
  return uVar3;
}

