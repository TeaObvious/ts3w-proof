/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011615b0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetCrossroadsServerURL [assembly=ScriptCore
   token=0x06000635; ; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetCrossroadsServerURL(void)

{
  int *piVar1;
  void *pvVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 local_44;
  undefined1 *local_40;
  undefined1 *local_3c;
  undefined *local_38;
  char *local_34;
  void *local_30 [2];
  int local_28;
  undefined **local_20 [2];
  byte bStack_18;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (DAT_011d5068 == 0) {
    iVar4 = 0;
  }
  else {
    iVar4 = DAT_011d5068 + -8;
  }
  local_44 = 0;
  uVar3 = 0;
  if ((piVar1 != (int *)0x0) && (iVar4 != 0)) {
    local_34 = "cripting/ScriptFunctions/SocialFeaturesHost";
    local_40 = &DAT_011c8e54;
    local_3c = &DAT_011c8e54;
    local_38 = &DAT_011c8e55;
    if (((undefined1 **)(iVar4 + 0x98) != &local_40) &&
       ((FUN_00405910(&local_40,*(undefined1 **)(iVar4 + 0x98),*(undefined1 **)(iVar4 + 0x9c)),
        local_40 != local_3c && (local_3c != local_40)))) {
      pvVar2 = FUN_004f3c90(local_30,&local_40);
      FUN_005ab2a0(local_20,pvVar2);
      if ((2 < (int)(local_28 - (int)local_30[0] & 0xfffffffeU)) && (local_30[0] != (void *)0x0)) {
        Memory_FreeIfNonNull(local_30[0]);
      }
      (**(code **)(*piVar1 + 0x50))(local_20,&local_44);
      local_20[0] = &PTR_FUN_00fba6f4;
      if ((bStack_18 & 4) != 0) {
        FUN_004f5760(local_20,'\0');
      }
    }
    uVar3 = local_44;
    if ((1 < (int)local_38 - (int)local_40) && (local_40 != (undefined1 *)0x0)) {
      Memory_FreeIfNonNull(local_40);
      uVar3 = local_44;
    }
  }
  return uVar3;
}

