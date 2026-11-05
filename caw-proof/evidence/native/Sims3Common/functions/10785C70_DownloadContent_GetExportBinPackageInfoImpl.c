/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_GetExportBinPackageInfoImpl.
   Export ordinal(s): 373. Entry VA: 0x10785c70. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060011E8. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl DownloadContent_GetExportBinPackageInfoImpl(int param_1)

{
  int *piVar1;
  short *psVar2;
  undefined4 unaff_EDI;
  undefined *puStack_44;
  undefined *puStack_40;
  undefined2 *puStack_3c;
  char *pcStack_38;
  int aiStack_34 [2];
  undefined **ppuStack_2c;
  char *pcStack_28;
  undefined **appuStack_24 [2];
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  
                    /* 0x785c70  373  DownloadContent_GetExportBinPackageInfoImpl */
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 != (int *)0x0) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))();
    aiStack_34[0] = 0;
    aiStack_34[1] = 0;
    ppuStack_2c = (undefined **)0x0;
    pcStack_28 = "Scratch/DownloadContentHost/EBPackageFile";
    FUN_1006a620(aiStack_34,psVar2);
    puStack_44 = &_Dst_10ca8244;
    puStack_40 = &_Dst_10ca8244;
    pcStack_38 = "Scratch/DownloadContent/ExportBin/packageInfo";
    puStack_3c = &DAT_10ca8246;
    FUN_10793010(DAT_10c8de94,aiStack_34,&puStack_44);
    if (puStack_44 != puStack_40) {
      appuStack_24[0] = &PTR_FUN_10aca5b4;
      uStack_1a = 0x13;
      uStack_1c = 0xb;
      FUN_10928b90(appuStack_24,0x13,9,&puStack_44,0x10,1);
      piVar1 = (int *)FUN_1055b120();
      (**(code **)(*piVar1 + 0x50))(appuStack_24,&stack0xffffffb8);
      ppuStack_2c = &PTR_FUN_10aca5b4;
      if (((uint)appuStack_24[0] & 4) != 0) {
        FUN_10928a90(&ppuStack_2c,'\0');
      }
      if ((2 < (int)((int)puStack_44 - param_1 & 0xfffffffeU)) && (param_1 != 0)) {
        FUN_10918e90(param_1);
      }
      if ((2 < (int)(aiStack_34[0] - (int)puStack_3c & 0xfffffffeU)) &&
         (puStack_3c != (undefined2 *)0x0)) {
        FUN_10918e90((int)puStack_3c);
      }
      return unaff_EDI;
    }
    if ((2 < (int)((int)puStack_3c - (int)puStack_44 & 0xfffffffeU)) &&
       (puStack_44 != (undefined *)0x0)) {
      FUN_10918e90((int)puStack_44);
    }
    if ((2 < (int)((int)ppuStack_2c - aiStack_34[0] & 0xfffffffeU)) && (aiStack_34[0] != 0)) {
      FUN_10918e90(aiStack_34[0]);
    }
  }
  return 0;
}

