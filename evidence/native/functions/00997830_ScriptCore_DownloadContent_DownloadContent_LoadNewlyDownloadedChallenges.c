/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011817e8 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_LoadNewlyDownloadedChallenges [assembly=ScriptCore
   token=0x060000EF; ; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.DownloadContent::DownloadContent_LoadNewlyDownloadedChallenges(void)

{
  bool bVar1;
  short *psVar2;
  ushort *puVar3;
  bool bVar4;
  int iVar5;
  void *this;
  _GUID *p_Var6;
  int *piVar7;
  int ***pppiVar8;
  LPCWSTR pWVar9;
  LPCWSTR local_54;
  undefined1 *local_50;
  undefined2 *local_4c;
  char *local_48;
  short *local_44;
  undefined4 local_40;
  int local_3c;
  char *local_38;
  ushort *local_34;
  undefined4 local_30;
  int local_2c;
  char *local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  int **local_14;
  int **local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  local_24 = 0;
  local_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_c = FUN_004d9c90();
  local_14 = (int **)&local_14;
  local_8 = 0;
  local_4 = "GameHost/DebugChallengeDownload/dirEntryList";
  local_34 = (ushort *)0x0;
  local_30 = 0;
  local_2c = 0;
  local_28 = "GameHost/DebugChallengeDownload/fileSpec";
  local_10 = local_14;
  FUN_0040b590(&local_34,L"dynamicchallenge_*.Sims3Pack");
  iVar5 = FUN_00982e60();
  local_44 = (short *)0x0;
  local_40 = 0;
  local_3c = 0;
  local_38 = "GameHost/DebugChallengeDownload/folderPath";
  FUN_0040b590(&local_44,*(short **)(iVar5 + 0x100));
  puVar3 = local_34;
  psVar2 = local_44;
  bVar1 = false;
  FUN_004da580(local_44,(int *)&local_14,local_34,2,0x100000);
  if ((int ***)local_14 != &local_14) {
    local_48 = "GameHost/DownloadChallengePack/fullPath";
    local_54 = (LPCWSTR)&DAT_011c8e54;
    local_50 = &DAT_011c8e54;
    local_4c = &DAT_011c8e56;
    pppiVar8 = (int ***)local_14;
    do {
      FUN_00898870(psVar2,(short *)pppiVar8[3],&local_54);
      pWVar9 = local_54;
      this = (void *)FUN_00982e60();
      p_Var6 = FUN_00990350(this,pWVar9);
      if ((p_Var6 == (_GUID *)0x1000) || (bVar4 = false, bVar1)) {
        bVar4 = true;
      }
      bVar1 = bVar4;
      pppiVar8 = (int ***)*pppiVar8;
    } while (pppiVar8 != &local_14);
    if ((2 < (int)((int)local_4c - (int)local_54 & 0xfffffffeU)) && (local_54 != (LPCWSTR)0x0)) {
      FUN_004e44e0((int)local_54);
    }
    if (bVar1) {
      piVar7 = (int *)FUN_00982e60();
      FUN_00982b10(piVar7);
    }
  }
  if ((2 < (int)(local_3c - (int)psVar2 & 0xfffffffeU)) && (psVar2 != (short *)0x0)) {
    FUN_004e44e0((int)psVar2);
  }
  if ((2 < (int)(local_2c - (int)puVar3 & 0xfffffffeU)) && (puVar3 != (ushort *)0x0)) {
    FUN_004e44e0((int)puVar3);
  }
  FUN_00456ec0(&local_14);
  return;
}

