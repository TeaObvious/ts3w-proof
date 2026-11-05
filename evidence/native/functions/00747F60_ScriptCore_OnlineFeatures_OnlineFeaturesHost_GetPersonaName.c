/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161590 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetPersonaName [assembly=ScriptCore
   token=0x06000631; ; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetPersonaName(void)

{
  int *piVar1;
  undefined1 **ppuVar2;
  undefined4 *puVar3;
  void *pvVar4;
  undefined4 uVar5;
  undefined *puVar6;
  undefined1 *puVar7;
  undefined1 *puVar8;
  undefined4 local_44;
  undefined1 *local_40;
  undefined1 *local_3c;
  undefined *local_38;
  char *local_34;
  int local_30 [2];
  int local_28;
  undefined **local_20 [2];
  byte bStack_18;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (DAT_011d5068 == 0) {
    pvVar4 = (void *)0x0;
  }
  else {
    pvVar4 = (void *)(DAT_011d5068 + -8);
  }
  local_44 = 0;
  uVar5 = 0;
  if ((piVar1 != (int *)0x0) && (pvVar4 != (void *)0x0)) {
    local_34 = "SIGS/UploadThread/exchangeAuthToken";
    local_40 = &DAT_011c8e54;
    local_3c = &DAT_011c8e54;
    local_38 = &DAT_011c8e55;
    ppuVar2 = FUN_00746970(pvVar4,local_30);
    puVar6 = &DAT_011c8e55;
    puVar7 = &DAT_011c8e54;
    puVar8 = &DAT_011c8e54;
    if (ppuVar2 != &local_40) {
      FUN_00405910(&local_40,*ppuVar2,ppuVar2[1]);
      puVar6 = local_38;
      puVar7 = local_3c;
      puVar8 = local_40;
    }
    if ((1 < local_28 - local_30[0]) && (local_30[0] != 0)) {
      FUN_004e44e0(local_30[0]);
    }
    if ((puVar8 != puVar7) && (puVar7 != puVar8)) {
      if (DAT_011d5068 == 0) {
        pvVar4 = (void *)0x0;
      }
      else {
        pvVar4 = (void *)(DAT_011d5068 + -8);
      }
      puVar3 = FUN_00746970(pvVar4,&local_40);
      pvVar4 = FUN_004f3c90(local_30,puVar3);
      FUN_005ab2a0(local_20,pvVar4);
      if ((2 < (int)(local_28 - local_30[0] & 0xfffffffeU)) && (local_30[0] != 0)) {
        FUN_004e44e0(local_30[0]);
      }
      if ((1 < (int)local_38 - (int)local_40) && (local_40 != (undefined1 *)0x0)) {
        FUN_004e44e0((int)local_40);
      }
      (**(code **)(*piVar1 + 0x50))(local_20,&local_44);
      local_20[0] = &PTR_FUN_00fba6f4;
      if ((bStack_18 & 4) != 0) {
        FUN_004f5760(local_20,'\0');
      }
    }
    uVar5 = local_44;
    if ((1 < (int)puVar6 - (int)puVar8) && (puVar8 != (undefined1 *)0x0)) {
      FUN_004e44e0((int)puVar8);
      uVar5 = local_44;
    }
  }
  return uVar5;
}

