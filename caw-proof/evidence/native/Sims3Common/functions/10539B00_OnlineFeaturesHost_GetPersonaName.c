/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_GetPersonaName. Export
   ordinal(s): 501. Entry VA: 0x10539b00. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600058F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 OnlineFeaturesHost_GetPersonaName(void)

{
  int *piVar1;
  undefined **ppuVar2;
  undefined4 *puVar3;
  void *pvVar4;
  undefined4 uVar5;
  undefined *puVar6;
  undefined *puVar7;
  undefined *puVar8;
  undefined4 uStack_44;
  undefined *puStack_40;
  undefined *puStack_3c;
  undefined *puStack_38;
  char *pcStack_34;
  int aiStack_30 [2];
  int iStack_28;
  undefined **appuStack_20 [2];
  byte bStack_18;
  
  piVar1 = (int *)FUN_1055b120();
  if (DAT_10c788dc == 0) {
    pvVar4 = (void *)0x0;
  }
  else {
    pvVar4 = (void *)(DAT_10c788dc + -8);
  }
  uStack_44 = 0;
  uVar5 = 0;
  if ((piVar1 != (int *)0x0) && (pvVar4 != (void *)0x0)) {
    pcStack_34 = "SIGS/UploadThread/exchangeAuthToken";
    puStack_40 = &_Dst_10ca8244;
    puStack_3c = &_Dst_10ca8244;
    puStack_38 = &DAT_10ca8245;
    ppuVar2 = FUN_10537c30(pvVar4,aiStack_30);
    puVar6 = &DAT_10ca8245;
    puVar7 = &_Dst_10ca8244;
    puVar8 = &_Dst_10ca8244;
    if (ppuVar2 != &puStack_40) {
      FUN_1000e8a0(&puStack_40,*ppuVar2,ppuVar2[1]);
      puVar6 = puStack_38;
      puVar7 = puStack_3c;
      puVar8 = puStack_40;
    }
    if ((1 < iStack_28 - aiStack_30[0]) && (aiStack_30[0] != 0)) {
      FUN_10918e90(aiStack_30[0]);
    }
    if ((puVar8 != puVar7) && (puVar7 != puVar8)) {
      if (DAT_10c788dc == 0) {
        pvVar4 = (void *)0x0;
      }
      else {
        pvVar4 = (void *)(DAT_10c788dc + -8);
      }
      puVar3 = FUN_10537c30(pvVar4,&puStack_40);
      pvVar4 = FUN_10926ef0(aiStack_30,puVar3);
      FUN_102c0de0(appuStack_20,pvVar4);
      if ((2 < (int)(iStack_28 - aiStack_30[0] & 0xfffffffeU)) && (aiStack_30[0] != 0)) {
        FUN_10918e90(aiStack_30[0]);
      }
      if ((1 < (int)puStack_38 - (int)puStack_40) && (puStack_40 != (undefined *)0x0)) {
        FUN_10918e90((int)puStack_40);
      }
      (**(code **)(*piVar1 + 0x50))(appuStack_20,&uStack_44);
      appuStack_20[0] = &PTR_FUN_10aca5b4;
      if ((bStack_18 & 4) != 0) {
        FUN_10928a90(appuStack_20,'\0');
      }
    }
    uVar5 = uStack_44;
    if ((1 < (int)puVar6 - (int)puVar8) && (puVar8 != (undefined *)0x0)) {
      FUN_10918e90((int)puVar8);
      uVar5 = uStack_44;
    }
  }
  return uVar5;
}

