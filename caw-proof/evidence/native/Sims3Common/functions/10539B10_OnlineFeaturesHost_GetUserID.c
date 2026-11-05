/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_GetUserID. Export ordinal(s):
   507. Entry VA: 0x10539b10. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000590. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 OnlineFeaturesHost_GetUserID(void)

{
  int *piVar1;
  void *pvVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uStack_44;
  undefined2 *puStack_40;
  undefined2 *puStack_3c;
  undefined *puStack_38;
  char *pcStack_34;
  int aiStack_30 [2];
  int iStack_28;
  undefined **appuStack_20 [2];
  byte bStack_18;
  
  piVar1 = (int *)FUN_1055b120();
  if (DAT_10c788dc == 0) {
    iVar4 = 0;
  }
  else {
    iVar4 = DAT_10c788dc + -8;
  }
  uStack_44 = 0;
  uVar3 = 0;
  if ((piVar1 != (int *)0x0) && (iVar4 != 0)) {
    puStack_40 = (undefined2 *)&_Dst_10ca8244;
    puStack_3c = (undefined2 *)&_Dst_10ca8244;
    pcStack_34 = "SIGS/UploadThread/exchangeAuthToken";
    puStack_38 = &DAT_10ca8245;
    FUN_1067f3f0(&puStack_40);
    if ((puStack_40 != puStack_3c) && (puStack_3c != puStack_40)) {
      pvVar2 = FUN_10926ef0(aiStack_30,&puStack_40);
      FUN_102c0de0(appuStack_20,pvVar2);
      if ((2 < (int)(iStack_28 - aiStack_30[0] & 0xfffffffeU)) && (aiStack_30[0] != 0)) {
        FUN_10918e90(aiStack_30[0]);
      }
      (**(code **)(*piVar1 + 0x50))(appuStack_20,&uStack_44);
      appuStack_20[0] = &PTR_FUN_10aca5b4;
      if ((bStack_18 & 4) != 0) {
        FUN_10928a90(appuStack_20,'\0');
      }
    }
    uVar3 = uStack_44;
    if ((1 < (int)puStack_38 - (int)puStack_40) && (puStack_40 != (undefined2 *)0x0)) {
      FUN_10918e90((int)puStack_40);
      uVar3 = uStack_44;
    }
  }
  return uVar3;
}

