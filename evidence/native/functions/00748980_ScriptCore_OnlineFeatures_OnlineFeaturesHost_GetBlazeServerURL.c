/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011615b8 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetBlazeServerURL [assembly=ScriptCore
   token=0x06000636; ; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetBlazeServerURL(void)

{
  int *piVar1;
  void *pvVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 local_44;
  int local_40;
  int local_3c;
  int local_38;
  char *local_34;
  int local_30 [2];
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
    local_40 = 0;
    local_3c = 0;
    local_38 = 0;
    local_34 = "Services/OnlineFeaturesHost/blazeURL";
    FUN_00405ad0(&local_40,*(char **)(iVar4 + 0xb8));
    if ((local_40 != local_3c) && (local_3c != local_40)) {
      pvVar2 = FUN_004f3c90(local_30,&local_40);
      FUN_005ab2a0(local_20,pvVar2);
      if ((2 < (int)(local_28 - local_30[0] & 0xfffffffeU)) && (local_30[0] != 0)) {
        FUN_004e44e0(local_30[0]);
      }
      (**(code **)(*piVar1 + 0x50))(local_20,&local_44);
      local_20[0] = &PTR_FUN_00fba6f4;
      if ((bStack_18 & 4) != 0) {
        FUN_004f5760(local_20,'\0');
      }
    }
    uVar3 = local_44;
    if ((1 < local_38 - local_40) && (local_40 != 0)) {
      FUN_004e44e0(local_40);
      uVar3 = local_44;
    }
  }
  return uVar3;
}

