/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01189f30 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_SetItemOrderInCollectionImpl [assembly=ScriptCore
   token=0x06000BFD; collectionId: System.UInt64, itemKeys: System.Byte[], itemPresetIds:
   System.UInt32[]; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.UserToolUtils::UserToolUtils_SetItemOrderInCollectionImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  void *this;
  char cVar1;
  int *piVar2;
  undefined4 unaff_ESI;
  int local_54;
  int local_50;
  void *pvStack_4c;
  int iStack_48;
  undefined1 auStack_3c [24];
  undefined1 auStack_24 [28];
  uint uStack_8;
  uint uStack_4;
  
  this = DAT_011d9ac8;
  if (DAT_011d9ac8 == (void *)0x0) {
    return;
  }
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  (**(code **)(*piVar2 + 0x70))(param_3,&local_50);
  if (&local_54 == (int *)0x0) {
    return;
  }
  FUN_004ded90(auStack_24,unaff_ESI,&local_54);
  StreamReader_Construct(auStack_3c,auStack_24,1);
  FUN_007d9500(&pvStack_4c,(undefined4 *)(auStack_3c + -0x1c));
  cVar1 = StreamContext_ReadResourceKeyVector(&pvStack_4c,auStack_3c);
  if ((cVar1 != '\0') &&
     ((**(code **)(*piVar2 + 0x6c))(param_1,&local_50,&local_54),
     local_54 == iStack_48 - (int)pvStack_4c >> 4)) {
    FUN_007df7f0(this,uStack_8,uStack_4,(int *)&pvStack_4c,local_50);
  }
  if (pvStack_4c != (void *)0x0) {
    Memory_FreeIfNonNull(pvStack_4c);
  }
  StreamReader_ReleaseAuxiliary(auStack_3c);
  return;
}

