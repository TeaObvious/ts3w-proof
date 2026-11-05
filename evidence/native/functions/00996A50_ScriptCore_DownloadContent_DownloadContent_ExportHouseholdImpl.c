/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Verified PC 1.67 registration table at 0x01181760 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_ExportHouseholdImpl [assembly=ScriptCore
   token=0x060000AE; packageFile: System.String, xmlTags: System.Byte[]; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */


/* Verified PC 1.67 registration table at 0x01181760 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  void *unaff_EDI;
  undefined1 auStack_52 [2];
  undefined4 local_50 [2];
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
    FUN_00408d60(auStack_52 + -6,psVar4,psVar4 + ((int)psVar5 - (int)psVar4 >> 1));
    FUN_004df460(&ppuStack_30,0,0,"ResourceSystem/DownloadContent/MetaDataStream");
    iStack_24 = iStack_24 + 1;
    FUN_004dee40(&ppuStack_30,1,1.0);
    if ((param_1 == 0) || (cVar2 = FUN_00994fb0(piVar3,param_1), cVar2 != '\0')) {
      FUN_004df2b0(&ppuStack_30,0,0);
      StreamReader_Construct(local_48,&ppuStack_30,1);
      cVar2 = FUN_009a76d0((undefined4 *)(auStack_52 + -6),(int)local_48);
      StreamReader_ReleaseAuxiliary(local_48);
      ppuStack_30 = &PTR_FUN_00fb6c00;
      if (puStack_2c != (undefined4 *)0x0) {
        MemoryBacking_ReleaseReference(puStack_2c);
      }
      ppuStack_30 = &PTR_LAB_00faaa04;
      if ((2 < (int)((int)&DAT_011c8e54 - (int)unaff_EDI & 0xfffffffeU)) &&
         (unaff_EDI != (void *)0x0)) {
        Memory_FreeIfNonNull(unaff_EDI);
      }
      return cVar2;
    }
    ppuStack_30 = &PTR_FUN_00fb6c00;
    if (puStack_2c != (undefined4 *)0x0) {
      MemoryBacking_ReleaseReference(puStack_2c);
    }
    ppuStack_30 = &PTR_LAB_00faaa04;
    if ((2 < (int)((int)&DAT_011c8e54 - (int)unaff_EDI & 0xfffffffeU)) && (unaff_EDI != (void *)0x0)
       ) {
      Memory_FreeIfNonNull(unaff_EDI);
    }
  }
  return '\0';
}

