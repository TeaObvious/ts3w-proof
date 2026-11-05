/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011615d8 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetSims3ServiceUnreachableMsg [assembly=ScriptCore
   token=0x0600063A; ; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_OnlineFeatures__OnlineFeaturesHost_GetSims3ServiceUnreachableMsg(void)

{
  undefined **ppuVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uStack_34;
  undefined1 *puStack_30;
  undefined1 *puStack_2c;
  undefined2 *puStack_28;
  char *pcStack_24;
  undefined **ppuStack_20;
  undefined2 *puStack_1c;
  uint uStack_18;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (DAT_011d5068 == 0) {
    iVar4 = 0;
  }
  else {
    iVar4 = DAT_011d5068 + -8;
  }
  uStack_34 = 0;
  uVar3 = 0;
  if ((piVar2 != (int *)0x0) && (iVar4 != 0)) {
    pcStack_24 = "SIGS/sGetSims3ServicesUnreachableMsg";
    puStack_30 = &DAT_011c8e54;
    puStack_2c = &DAT_011c8e54;
    puStack_28 = &DAT_011c8e56;
    FUN_00408df0(&ppuStack_20,(undefined4 *)(iVar4 + 0x28));
    ppuVar1 = ppuStack_20;
    FUN_00408d60(&puStack_30,ppuStack_20,puStack_1c);
    if ((2 < (int)(uStack_18 - (int)ppuVar1 & 0xfffffffe)) && (ppuVar1 != (undefined **)0x0)) {
      FUN_004e44e0((int)ppuVar1);
    }
    if ((puStack_30 != puStack_2c) && (((int)puStack_2c - (int)puStack_30 & 0xfffffffeU) != 0)) {
      ppuStack_20 = &PTR_FUN_00fba6f4;
      uStack_18 = 0;
      FUN_004f59c0(&ppuStack_20,0x13,9,&puStack_30,0x10,1);
      (**(code **)(*piVar2 + 0x50))(&ppuStack_20,&uStack_34);
      ppuStack_20 = &PTR_FUN_00fba6f4;
      if ((uStack_18 & 4) != 0) {
        FUN_004f5760(&ppuStack_20,'\0');
      }
    }
    uVar3 = uStack_34;
    if ((2 < (int)((int)puStack_28 - (int)puStack_30 & 0xfffffffeU)) &&
       (puStack_30 != (undefined1 *)0x0)) {
      FUN_004e44e0((int)puStack_30);
      uVar3 = uStack_34;
    }
  }
  return uVar3;
}

