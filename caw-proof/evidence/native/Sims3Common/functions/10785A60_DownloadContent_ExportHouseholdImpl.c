/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_ExportHouseholdImpl. Export
   ordinal(s): 364. Entry VA: 0x10785a60. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600118F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

char __cdecl DownloadContent_ExportHouseholdImpl(int param_1)

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
  
                    /* 0x785a60  364  DownloadContent_ExportHouseholdImpl */
  if (param_1 == 0) {
    return '\0';
  }
  piVar3 = (int *)FUN_1055b120();
  if (piVar3 != (int *)0x0) {
    local_48[0] = "Scratch/DownloadContent/DownloadContent_ExportHouseholdImpl/pkgName";
    psVar4 = (short *)(**(code **)(*piVar3 + 0x58))(param_1);
    sVar1 = *psVar4;
    psVar5 = psVar4;
    while (sVar1 != 0) {
      psVar5 = psVar5 + 1;
      sVar1 = *psVar5;
    }
    FUN_1001f8c0(&stack0xffffffa8,psVar4,(int *)(psVar4 + ((int)psVar5 - (int)psVar4 >> 1)));
    FUN_10914090(&ppuStack_30,0,0,"ResourceSystem/DownloadContent/MetaDataStream");
    iStack_24 = iStack_24 + 1;
    FUN_10913a70(&ppuStack_30,1,1.0);
    if ((param_1 == 0) || (cVar2 = FUN_10784080(piVar3,param_1), cVar2 != '\0')) {
      FUN_10913ee0(&ppuStack_30,0,0);
      FUN_105cc2a0(local_48,(int *)&ppuStack_30,1);
      cVar2 = FUN_10796aa0((undefined4 *)&stack0xffffffa8,(int)local_48);
      FUN_105ca900((int)local_48);
      ppuStack_30 = &PTR_FUN_10b8ad10;
      if (puStack_2c != (undefined4 *)0x0) {
        FUN_10913a30(puStack_2c);
      }
      ppuStack_30 = &PTR_LAB_10aafee4;
      if ((2 < (int)((int)&_Dst_10ca8244 - unaff_EDI & 0xfffffffeU)) && (unaff_EDI != 0)) {
        FUN_10918e90(unaff_EDI);
      }
      return cVar2;
    }
    ppuStack_30 = &PTR_FUN_10b8ad10;
    if (puStack_2c != (undefined4 *)0x0) {
      FUN_10913a30(puStack_2c);
    }
    ppuStack_30 = &PTR_LAB_10aafee4;
    if ((2 < (int)((int)&_Dst_10ca8244 - unaff_EDI & 0xfffffffeU)) && (unaff_EDI != 0)) {
      FUN_10918e90(unaff_EDI);
    }
  }
  return '\0';
}

