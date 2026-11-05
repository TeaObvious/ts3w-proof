/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_GetSims3ServiceUnreachableMsg.
   Export ordinal(s): 504. Entry VA: 0x10539b30. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000598. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 OnlineFeaturesHost_GetSims3ServiceUnreachableMsg(void)

{
  undefined **ppuVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uStack_34;
  undefined *puStack_30;
  undefined *puStack_2c;
  undefined2 *puStack_28;
  char *pcStack_24;
  undefined **ppuStack_20;
  int *piStack_1c;
  uint uStack_18;
  
  piVar2 = (int *)FUN_1055b120();
  if (DAT_10c788dc == 0) {
    iVar4 = 0;
  }
  else {
    iVar4 = DAT_10c788dc + -8;
  }
  uStack_34 = 0;
  uVar3 = 0;
  if ((piVar2 != (int *)0x0) && (iVar4 != 0)) {
    pcStack_24 = "SIGS/sGetSims3ServicesUnreachableMsg";
    puStack_30 = &_Dst_10ca8244;
    puStack_2c = &_Dst_10ca8244;
    puStack_28 = &DAT_10ca8246;
    FUN_1006a320(&ppuStack_20,(undefined4 *)(iVar4 + 0x28));
    ppuVar1 = ppuStack_20;
    FUN_1001f8c0(&puStack_30,ppuStack_20,piStack_1c);
    if ((2 < (int)(uStack_18 - (int)ppuVar1 & 0xfffffffe)) && (ppuVar1 != (undefined **)0x0)) {
      FUN_10918e90((int)ppuVar1);
    }
    if ((puStack_30 != puStack_2c) && (((int)puStack_2c - (int)puStack_30 & 0xfffffffeU) != 0)) {
      ppuStack_20 = &PTR_FUN_10aca5b4;
      uStack_18 = 0;
      FUN_10928b90(&ppuStack_20,0x13,9,&puStack_30,0x10,1);
      (**(code **)(*piVar2 + 0x50))(&ppuStack_20,&uStack_34);
      ppuStack_20 = &PTR_FUN_10aca5b4;
      if ((uStack_18 & 4) != 0) {
        FUN_10928a90(&ppuStack_20,'\0');
      }
    }
    uVar3 = uStack_34;
    if ((2 < (int)((int)puStack_28 - (int)puStack_30 & 0xfffffffeU)) &&
       (puStack_30 != (undefined *)0x0)) {
      FUN_10918e90((int)puStack_30);
      uVar3 = uStack_34;
    }
  }
  return uVar3;
}

