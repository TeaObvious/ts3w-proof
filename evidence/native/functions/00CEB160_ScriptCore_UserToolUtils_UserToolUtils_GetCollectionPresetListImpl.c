/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01189f00 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_GetCollectionPresetListImpl [assembly=ScriptCore
   token=0x06000BF7; collectionId: System.UInt64; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.UserToolUtils::UserToolUtils_GetCollectionPresetListImpl(uint param_1,uint param_2)

{
  void *this;
  uint uVar1;
  void *local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  this = DAT_011d9ac8;
  if (DAT_011d9ac8 == (void *)0x0) {
    return 0;
  }
  GetGlobalInterfacePointer_11D5BBC();
  local_10 = (void *)0x0;
  local_c = 0;
  local_8 = 0;
  local_4 = "World/UserToolHost/ProductPresetReferenceVector";
  FUN_007df600(this,param_1,param_2,&local_10);
  uVar1 = PatternPresetPairs_SortAndExportHandles(&local_10,0);
  if (local_10 != (void *)0x0) {
    Memory_FreeIfNonNull(local_10);
  }
  return uVar1;
}

