/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01156588 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_CompoundBlendGetNameImpl [assembly=ScriptCore token=0x0600035A;
   handle: System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.CASUtils::CASUtils_CompoundBlendGetNameImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  void *unaff_EDI;
  undefined1 uStack00000000;
  int iStack_30;
  undefined **appuStack_2c [2];
  byte abStack_24 [28];
  undefined4 uStack_8;
  
  if ((param_1 & 0xff000000) != 0x35000000) {
    return 0;
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar2 = (**(code **)(*piVar1 + 0xcc))();
  if (iVar2 != 0) {
    FUN_00408df0(appuStack_2c + -2,(undefined4 *)(iVar2 + 0x28));
    if ((iStack_30 - (int)unaff_EDI & 0xfffffffeU) != 0) {
      FUN_005ab2a0(abStack_24,appuStack_2c + -2);
      (**(code **)(*piVar1 + 0x50))(abStack_24,&uStack00000000);
      appuStack_2c[0] = &PTR_FUN_00fba6f4;
      if ((abStack_24[0] & 4) != 0) {
        FUN_004f5760(appuStack_2c,'\0');
      }
      if ((2 < (int)((int)unaff_EDI - param_1 & 0xfffffffe)) && (param_1 != 0)) {
        Memory_FreeIfNonNull((void *)param_1);
      }
      return uStack_8;
    }
    if ((2 < (int)((int)appuStack_2c[0] - (int)unaff_EDI & 0xfffffffeU)) &&
       (unaff_EDI != (void *)0x0)) {
      Memory_FreeIfNonNull(unaff_EDI);
    }
  }
  return 0;
}

