/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161058 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DeviceConfig::DeviceConfig_GetOption [assembly=ScriptCore token=0x06001004; key:
   System.String, value: System.UInt32&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.DeviceConfig::DeviceConfig_GetOption(undefined4 *param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  int iVar3;
  undefined4 *puVar4;
  uint uVar5;
  void *extraout_EAX;
  void *unaff_EDI;
  undefined1 auStack_e [2];
  int iStack_c;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if (pWVar2 == (LPCWSTR)0x0) {
    return 0;
  }
  iVar3 = FUN_0058e800();
  puVar4 = Utf_ConvertWideSpanToByteStorage(auStack_e + -6,pWVar2,0xffffffff,(char *)0x0);
  uVar5 = FUN_0058f160((void *)(iVar3 + 4),(byte *)*puVar4,param_1);
  if ((1 < iStack_c - (int)unaff_EDI) && (unaff_EDI != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_EDI);
    unaff_EDI = extraout_EAX;
  }
  return CONCAT31((int3)((uint)unaff_EDI >> 8),(char)uVar5);
}

