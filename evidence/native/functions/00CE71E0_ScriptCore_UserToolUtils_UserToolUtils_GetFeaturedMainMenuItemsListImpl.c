/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189e70 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_GetFeaturedMainMenuItemsListImpl [assembly=ScriptCore
   token=0x06000C02; ; return=System.UInt64[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.UserToolUtils::UserToolUtils_GetFeaturedMainMenuItemsListImpl(void)

{
  void *this;
  int *piVar1;
  uint uVar2;
  uint uVar3;
  undefined4 local_38;
  int *local_34;
  int local_30;
  int local_2c;
  undefined4 local_28;
  char *local_24;
  undefined **local_20 [2];
  ushort local_18;
  undefined2 local_16;
  
  this = DAT_011ee034;
  if (DAT_011ee034 == (void *)0x0) {
    return 0;
  }
  local_38 = 0;
  local_34 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (local_34 != (int *)0x0) {
    local_30 = 0;
    local_2c = 0;
    local_28 = 0;
    local_24 = "Scratch/UserToolHost/FeaturedItems";
    FUN_00c911e0(this,&local_30);
    uVar3 = local_2c - local_30 >> 3;
    piVar1 = FUN_004e6f20(DAT_011cc864,uVar3 * 8,0);
    if (piVar1 != (int *)0x0) {
      uVar2 = 0;
      if (uVar3 != 0) {
        do {
          piVar1[uVar2 * 2] = *(int *)(local_30 + uVar2 * 8);
          piVar1[uVar2 * 2 + 1] = *(int *)(local_30 + 4 + uVar2 * 8);
          uVar2 = uVar2 + 1;
        } while (uVar2 < uVar3);
      }
      local_20[0] = &PTR_FUN_00fba6f4;
      local_18 = 0;
      local_16 = 0;
      if (uVar3 == 0) {
        uVar3 = 0;
        uVar2 = 0x20;
      }
      else {
        uVar2 = 0x18;
      }
      FUN_004f59c0(local_20,0xc,uVar2,piVar1,8,uVar3);
      (**(code **)(*local_34 + 0x50))(local_20,&local_38);
      FUN_004e5e70(DAT_011cc864,(int)piVar1);
      local_20[0] = &PTR_FUN_00fba6f4;
      if ((local_18 & 4) != 0) {
        FUN_004f5760(local_20,'\0');
      }
    }
    if (local_30 != 0) {
      FUN_004e44e0(local_30);
    }
  }
  return local_38;
}

