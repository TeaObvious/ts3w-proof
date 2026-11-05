/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011567a8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_InjectTattooOpacity [assembly=ScriptCore token=0x0600039C; pPreset:
   System.String, color: System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined2 * ScriptCore_CASUtils__CASUtils_InjectTattooOpacity(int param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined1 auStack_92 [2];
  undefined4 uStack_90;
  undefined **ppuStack_8c;
  undefined1 auStack_88 [4];
  undefined **appuStack_84 [2];
  undefined2 uStack_7c;
  undefined2 uStack_7a;
  undefined4 auStack_6c [2];
  undefined1 auStack_64 [100];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 == (LPCWSTR)0x0) {
    return (undefined2 *)0x0;
  }
  DesignPreset_InitializeEmpty(auStack_64);
  FUN_005c0060(auStack_64,pWVar2);
  FUN_005bf290(auStack_64,(byte *)"ColorAlphaMultiply",2,param_1,0);
  ppuStack_8c = (undefined **)0xfdf90c;
  FUN_005bfd20(auStack_64,(undefined4 *)(auStack_92 + -6));
  appuStack_84[0] = &PTR_FUN_0100886c;
  uStack_7a = 0x13;
  uStack_7c = 0xb;
  FUN_004f59c0(appuStack_84,0x13,9,auStack_92 + -6,0x10,1);
  (**(code **)(*piVar1 + 0x50))(appuStack_84,auStack_88);
  ppuStack_8c = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_84[0] & 4) != 0) {
    FUN_004f5760(&ppuStack_8c,'\0');
  }
  if ((2 < (int)((int)&DAT_011c8e54 - param_1 & 0xfffffffeU)) && (param_1 != 0)) {
    Memory_FreeIfNonNull((void *)param_1);
  }
  FUN_005bfce0(auStack_6c);
  return &DAT_011c8e56;
}

