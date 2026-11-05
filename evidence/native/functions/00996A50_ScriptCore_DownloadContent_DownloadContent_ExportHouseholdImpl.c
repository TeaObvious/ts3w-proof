/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01181760 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_ExportHouseholdImpl [assembly=ScriptCore
   token=0x060000AE; packageFile: System.String, xmlTags: System.Byte[]; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

char __cdecl ScriptCore.DownloadContent::DownloadContent_ExportHouseholdImpl(int param_1)

{
  short sVar1;
  char cVar2;
  int *piVar3;
  short *psVar4;
  short *psVar5;
  int unaff_EDI;
  char *local_48 [6];
  undefined **ppuStack_30;
  undefined4 *puStack_2c;
  int iStack_24;
  
  if (param_1 == 0) {
    return '\0';
  }
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar3 != (int *)0x0) {
    local_48[0] = "Scratch/DownloadContent/DownloadContent_ExportHouseholdImpl/pkgName";
    psVar4 = (short *)(**(code **)(*piVar3 + 0x58))(param_1);
    sVar1 = *psVar4;
    psVar5 = psVar4;
    while (sVar1 != 0) {
      psVar5 = psVar5 + 1;
      sVar1 = *psVar5;
    }
    FUN_00408d60(&stack0xffffffa8,psVar4,psVar4 + ((int)psVar5 - (int)psVar4 >> 1));
    FUN_004df460(&ppuStack_30,0,0,"ResourceSystem/DownloadContent/MetaDataStream");
    iStack_24 = iStack_24 + 1;
    FUN_004dee40(&ppuStack_30,1,1.0);
    if ((param_1 == 0) || (cVar2 = FUN_00994fb0(piVar3,param_1), cVar2 != '\0')) {
      FUN_004df2b0(&ppuStack_30,0,0);
      FUN_007d93e0(local_48,(int *)&ppuStack_30,1);
      cVar2 = FUN_009a76d0((undefined4 *)&stack0xffffffa8,(int)local_48);
      FUN_007d7990((int)local_48);
      ppuStack_30 = &PTR_FUN_00fb6c00;
      if (puStack_2c != (undefined4 *)0x0) {
        FUN_004dee00(puStack_2c);
      }
      ppuStack_30 = &PTR_LAB_00faaa04;
      if ((2 < (int)((int)&DAT_011c8e54 - unaff_EDI & 0xfffffffeU)) && (unaff_EDI != 0)) {
        FUN_004e44e0(unaff_EDI);
      }
      return cVar2;
    }
    ppuStack_30 = &PTR_FUN_00fb6c00;
    if (puStack_2c != (undefined4 *)0x0) {
      FUN_004dee00(puStack_2c);
    }
    ppuStack_30 = &PTR_LAB_00faaa04;
    if ((2 < (int)((int)&DAT_011c8e54 - unaff_EDI & 0xfffffffeU)) && (unaff_EDI != 0)) {
      FUN_004e44e0(unaff_EDI);
    }
  }
  return '\0';
}

