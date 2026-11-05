/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01189fa8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UserToolUtils::UserToolUtils_GetMoodletIconInfoImpl [assembly=ScriptCore
   token=0x06000C1B; typeID: System.UInt32, instanceID: System.UInt64, groupID: System.UInt32,
   iconId: System.UInt32&, iconDegree: System.UInt32&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_UserToolUtils__UserToolUtils_GetMoodletIconInfoImpl
               (undefined4 param_1,uint param_2,undefined4 param_3,undefined4 param_4,
               undefined4 *param_5,undefined4 *param_6)

{
  undefined4 uVar1;
  uint in_EAX;
  int iVar2;
  uint uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  if (DAT_011ee034 != (void *)0x0) {
    uStack_10 = param_2;
    uStack_8 = param_1;
    uStack_c = param_3;
    uStack_4 = param_4;
    iVar2 = ObjectCatalog_FindByTypedKey(DAT_011ee034,&uStack_10);
    in_EAX = 0;
    if (iVar2 != 0) {
      *param_5 = *(undefined4 *)(iVar2 + 0x228);
      uVar1 = *(undefined4 *)(iVar2 + 0x22c);
      *param_6 = uVar1;
      return CONCAT31((int3)((uint)uVar1 >> 8),1);
    }
  }
  return in_EAX & 0xffffff00;
}

