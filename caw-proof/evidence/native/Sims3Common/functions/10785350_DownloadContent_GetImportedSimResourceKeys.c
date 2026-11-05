/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_GetImportedSimResourceKeys.
   Export ordinal(s): 378. Entry VA: 0x10785350. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600118C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl DownloadContent_GetImportedSimResourceKeys(undefined4 param_1,char param_2)

{
  char cVar1;
  int *piVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  size_t sVar6;
  undefined ***pppuVar7;
  undefined **local_60;
  undefined **local_5c;
  char *local_58;
  undefined1 local_54 [4];
  undefined1 auStack_50 [20];
  int iStack_3c;
  undefined **ppuStack_38;
  undefined4 *puStack_34;
  undefined4 uStack_8;
  
                    /* 0x785350  378  DownloadContent_GetImportedSimResourceKeys */
  iVar5 = 0;
  piVar2 = (int *)FUN_108e50d0();
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  local_60 = &PTR_LAB_10b58c10;
  local_5c = &PTR_LAB_10b58c18;
  pppuVar7 = &local_60;
  if (param_2 != '\0') {
    pppuVar7 = &local_5c;
  }
  local_58 = "Scratch/DownloadContent/keyList";
  FUN_10727810(local_54,&local_58);
  iVar3 = (**(code **)(*piVar2 + 0x20))(local_54,pppuVar7,0);
  if (iVar3 != 0) {
    iVar5 = (int)local_5c - (int)local_60 >> 4;
    sVar6 = iVar5 * 0x10 + 4;
    FUN_109140f0(&ppuStack_38,(void *)0x0,sVar6,'\0',1,(int *)0x0,"Scratch/DownloadContent/KeyTable"
                );
    FUN_105cc2a0(auStack_50,(int *)&ppuStack_38,1);
    cVar1 = FUN_105cb8c0(&local_60,(int)auStack_50);
    if (cVar1 == '\0') {
      FUN_105ca900((int)auStack_50);
      ppuStack_38 = &PTR_FUN_10b8ad10;
      if (puStack_34 != (undefined4 *)0x0) {
        FUN_10913a30(puStack_34);
      }
      ppuStack_38 = &PTR_LAB_10aafee4;
      if (local_60 != (undefined **)0x0) {
        FUN_10918e90((int)local_60);
      }
      return 0;
    }
    piVar2 = (int *)FUN_1055b120();
    (**(code **)(*piVar2 + 0x80))(uStack_8,sVar6);
    if (iStack_3c == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = *(undefined4 *)(iStack_3c + 8);
    }
    (**(code **)(*piVar2 + 0x98))(uStack_8,uVar4,0,sVar6);
    FUN_105ca900((int)auStack_50);
    ppuStack_38 = &PTR_FUN_10b8ad10;
    if (puStack_34 != (undefined4 *)0x0) {
      FUN_10913a30(puStack_34);
    }
  }
  if (local_60 != (undefined **)0x0) {
    FUN_10918e90((int)local_60);
  }
  return iVar5;
}

