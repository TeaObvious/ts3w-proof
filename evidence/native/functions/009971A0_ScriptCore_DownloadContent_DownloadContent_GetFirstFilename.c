/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011816e0 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_GetFirstFilename [assembly=ScriptCore
   token=0x060000EC; ; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 * ScriptCore_DownloadContent__DownloadContent_GetFirstFilename(void)

{
  short sVar1;
  int iVar2;
  short *psVar3;
  int *piVar4;
  short *psVar5;
  int unaff_ESI;
  undefined1 *puVar6;
  undefined1 auStack_34 [4];
  undefined1 *puStack_30;
  undefined1 *puStack_2c;
  undefined **ppuStack_28;
  char *pcStack_24;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  
  puVar6 = auStack_34;
  iVar2 = FUN_009b0c60();
  if ((iVar2 != 0) && (psVar3 = (short *)FUN_009b06b0(iVar2), psVar3 != (short *)0x0)) {
    sVar1 = *psVar3;
    puStack_30 = &DAT_011c8e54;
    puStack_2c = &DAT_011c8e54;
    pcStack_24 = "Scratch/DownloadContent/DownloadContentHost/str";
    ppuStack_28 = (undefined **)&DAT_011c8e56;
    psVar5 = psVar3;
    while (sVar1 != 0) {
      psVar5 = psVar5 + 1;
      sVar1 = *psVar5;
    }
    FUN_00408d60(&puStack_30,psVar3,psVar3 + ((int)psVar5 - (int)psVar3 >> 1));
    if (puStack_30 != puStack_2c) {
      appuStack_20[0] = &PTR_FUN_0100886c;
      uStack_16 = 0x13;
      uStack_18 = 0xb;
      FUN_004f59c0(appuStack_20,0x13,9,&puStack_30,0x10,1);
      piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
      (**(code **)(*piVar4 + 0x50))(appuStack_20);
      ppuStack_28 = &PTR_FUN_00fba6f4;
      if (((uint)appuStack_20[0] & 4) != 0) {
        FUN_004f5760(&ppuStack_28,'\0');
      }
      if ((2 < (int)((int)puStack_30 - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
        FUN_004e44e0(unaff_ESI);
      }
      return puVar6;
    }
    if ((2 < (int)((int)ppuStack_28 - (int)puStack_30 & 0xfffffffeU)) &&
       (puStack_30 != (undefined1 *)0x0)) {
      FUN_004e44e0((int)puStack_30);
    }
  }
  return (undefined1 *)0x0;
}

