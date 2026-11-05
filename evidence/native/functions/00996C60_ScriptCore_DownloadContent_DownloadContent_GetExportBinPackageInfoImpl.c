/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011817c0 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_GetExportBinPackageInfoImpl [assembly=ScriptCore
   token=0x06000107; package: System.String; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_DownloadContent__DownloadContent_GetExportBinPackageInfoImpl(int param_1)

{
  int *piVar1;
  short *psVar2;
  undefined4 unaff_EDI;
  undefined1 *puStack_44;
  undefined1 *puStack_40;
  undefined2 *puStack_3c;
  char *pcStack_38;
  int aiStack_34 [2];
  undefined **ppuStack_2c;
  char *pcStack_28;
  undefined **appuStack_24 [2];
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))();
    aiStack_34[0] = 0;
    aiStack_34[1] = 0;
    ppuStack_2c = (undefined **)0x0;
    pcStack_28 = "Scratch/DownloadContentHost/EBPackageFile";
    FUN_0040b590(aiStack_34,psVar2);
    puStack_44 = &DAT_011c8e54;
    puStack_40 = &DAT_011c8e54;
    pcStack_38 = "Scratch/DownloadContent/ExportBin/packageInfo";
    puStack_3c = &DAT_011c8e56;
    FUN_009a3e10(DAT_011ea6a4,aiStack_34,&puStack_44);
    if (puStack_44 != puStack_40) {
      appuStack_24[0] = &PTR_FUN_0100886c;
      uStack_1a = 0x13;
      uStack_1c = 0xb;
      FUN_004f59c0(appuStack_24,0x13,9,&puStack_44,0x10,1);
      piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
      (**(code **)(*piVar1 + 0x50))(appuStack_24,&stack0xffffffb8);
      ppuStack_2c = &PTR_FUN_00fba6f4;
      if (((uint)appuStack_24[0] & 4) != 0) {
        FUN_004f5760(&ppuStack_2c,'\0');
      }
      if ((2 < (int)((int)puStack_44 - param_1 & 0xfffffffeU)) && (param_1 != 0)) {
        FUN_004e44e0(param_1);
      }
      if ((2 < (int)(aiStack_34[0] - (int)puStack_3c & 0xfffffffeU)) &&
         (puStack_3c != (undefined2 *)0x0)) {
        FUN_004e44e0((int)puStack_3c);
      }
      return unaff_EDI;
    }
    if ((2 < (int)((int)puStack_3c - (int)puStack_44 & 0xfffffffeU)) &&
       (puStack_44 != (undefined1 *)0x0)) {
      FUN_004e44e0((int)puStack_44);
    }
    if ((2 < (int)((int)ppuStack_2c - aiStack_34[0] & 0xfffffffeU)) && (aiStack_34[0] != 0)) {
      FUN_004e44e0(aiStack_34[0]);
    }
  }
  return 0;
}

