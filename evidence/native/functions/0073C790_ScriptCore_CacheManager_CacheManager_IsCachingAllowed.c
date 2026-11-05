/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115ec00 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CacheManager::CacheManager_IsCachingAllowed [assembly=ScriptCore token=0x06000D9C;
   databaseName: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.CacheManager::CacheManager_IsCachingAllowed(int param_1)

{
  uint in_EAX;
  int *piVar1;
  int *piVar2;
  ushort *wideName;
  int *piVar3;
  int extraout_EAX;
  uint extraout_EAX_00;
  uint uVar4;
  int unaff_EDI;
  undefined1 auStack_30 [4];
  ulonglong uStack_14;
  undefined4 uStack_c;
  undefined4 uStack_8;
  
  if (DAT_0115ebf0 == '\0') {
    return in_EAX & 0xffffff00;
  }
  piVar1 = (int *)FUN_004afe80();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  wideName = (ushort *)(**(code **)(*piVar2 + 0x58))();
  uStack_14 = NameHash64_Utf16Z(wideName);
  uStack_c = 0x82b43584;
  uStack_8 = 0;
  piVar2 = (int *)(**(code **)(*piVar1 + 0x44))(&uStack_14);
  uVar4 = 0;
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x30))(auStack_30 + 8,0);
    while( true ) {
      if (param_1 == unaff_EDI) {
        if (param_1 != 0) {
          Memory_FreeIfNonNull((void *)param_1);
          unaff_EDI = extraout_EAX;
        }
        return CONCAT31((int3)((uint)unaff_EDI >> 8),1);
      }
      piVar3 = (int *)(**(code **)(*piVar1 + 0x44))(unaff_EDI + -0x10);
      if (piVar3 != piVar2) break;
      unaff_EDI = unaff_EDI + -0x10;
    }
    uVar4 = 0;
    if (param_1 != 0) {
      Memory_FreeIfNonNull((void *)param_1);
      uVar4 = extraout_EAX_00;
    }
  }
  return uVar4 & 0xffffff00;
}

