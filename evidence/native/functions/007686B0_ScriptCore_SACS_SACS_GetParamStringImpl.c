/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161e40 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SACS::SACS_GetParamStringImpl [assembly=ScriptCore token=0x06000D67; driverHandle:
   System.UInt32, paramHash: System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 * __cdecl ScriptCore.SACS::SACS_GetParamStringImpl(int param_1)

{
  wchar_t wVar1;
  int *piVar2;
  void *this;
  wchar_t *pwVar3;
  wchar_t *pwVar4;
  undefined1 *puVar5;
  undefined1 auStack_3c [4];
  undefined1 *puStack_34;
  undefined1 *puStack_30;
  undefined **ppuStack_2c;
  char *pcStack_28;
  undefined **appuStack_24 [2];
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)(**(code **)(*piVar2 + 0xcc))();
  pcStack_28 = "Scripting/SacsHost";
  puStack_34 = &DAT_011c8e54;
  puStack_30 = &DAT_011c8e54;
  ppuStack_2c = (undefined **)&DAT_011c8e56;
  if (this == (void *)0x0) {
    pwVar4 = L"<State Machine Driver Not Found>";
    do {
      pwVar3 = pwVar4;
      pwVar4 = pwVar3 + 1;
    } while (*pwVar4 != L'\0');
    pwVar4 = L"<State Machine Driver Not Found>" + ((int)(pwVar3 + -0x803fbf) >> 1);
    pwVar3 = L"<State Machine Driver Not Found>";
  }
  else {
    pwVar3 = (wchar_t *)FUN_00800040(this,param_1,'\0');
    if (pwVar3 == (wchar_t *)0x0) {
      if ((2 < (int)((int)ppuStack_2c - (int)puStack_34 & 0xfffffffeU)) &&
         (puStack_34 != (undefined1 *)0x0)) {
        Memory_FreeIfNonNull(puStack_34);
      }
      return (undefined1 *)0x0;
    }
    wVar1 = *pwVar3;
    pwVar4 = pwVar3;
    while (wVar1 != L'\0') {
      pwVar4 = pwVar4 + 1;
      wVar1 = *pwVar4;
    }
    pwVar4 = pwVar3 + ((int)pwVar4 - (int)pwVar3 >> 1);
  }
  FUN_00408d60(&puStack_34,pwVar3,pwVar4);
  appuStack_24[0] = &PTR_FUN_0100886c;
  uStack_1a = 0x13;
  uStack_1c = 0xb;
  FUN_004f59c0(appuStack_24,0x13,9,&puStack_34,0x10,1);
  puVar5 = auStack_3c + 4;
  (**(code **)(*piVar2 + 0x50))(appuStack_24);
  ppuStack_2c = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_24[0] & 4) != 0) {
    FUN_004f5760(&ppuStack_2c,'\0');
  }
  if ((2 < (int)((int)puStack_34 - param_1 & 0xfffffffeU)) && (param_1 != 0)) {
    Memory_FreeIfNonNull((void *)param_1);
  }
  return puVar5;
}

