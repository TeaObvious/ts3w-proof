/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_LoadNewlyDownloadedChallenges.
   Export ordinal(s): 400. Entry VA: 0x10786840. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060011D0. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void DownloadContent_LoadNewlyDownloadedChallenges(void)

{
  bool bVar1;
  int *piVar2;
  ushort *puVar3;
  bool bVar4;
  int iVar5;
  void *this;
  _GUID *p_Var6;
  int *piVar7;
  int ***pppiVar8;
  LPCWSTR pWVar9;
  LPCWSTR local_54;
  undefined *local_50;
  undefined2 *local_4c;
  char *local_48;
  int *local_44;
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
  
                    /* 0x786840  400  DownloadContent_LoadNewlyDownloadedChallenges */
  local_24 = 0;
  local_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_c = FUN_1090eca0();
  local_14 = (int **)&local_14;
  local_8 = 0;
  local_4 = "GameHost/DebugChallengeDownload/dirEntryList";
  local_34 = (ushort *)0x0;
  local_30 = 0;
  local_2c = 0;
  local_28 = "GameHost/DebugChallengeDownload/fileSpec";
  local_10 = local_14;
  FUN_1006a620(&local_34,L"dynamicchallenge_*.Sims3Pack");
  iVar5 = FUN_107744c0();
  local_44 = (int *)0x0;
  local_40 = 0;
  local_3c = 0;
  local_38 = "GameHost/DebugChallengeDownload/folderPath";
  FUN_1006a620(&local_44,*(short **)(iVar5 + 0x100));
  puVar3 = local_34;
  piVar2 = local_44;
  bVar1 = false;
  FUN_1090f280(local_44,(int *)&local_14,local_34,2,0x100000);
  if ((int ***)local_14 != &local_14) {
    local_48 = "GameHost/DownloadChallengePack/fullPath";
    local_54 = (LPCWSTR)&_Dst_10ca8244;
    local_50 = &_Dst_10ca8244;
    local_4c = &DAT_10ca8246;
    pppiVar8 = (int ***)local_14;
    do {
      FUN_1068c940((short *)piVar2,(short *)pppiVar8[3],&local_54);
      pWVar9 = local_54;
      this = (void *)FUN_107744c0();
      p_Var6 = FUN_10781a20(this,pWVar9);
      if ((p_Var6 == (_GUID *)0x1000) || (bVar4 = false, bVar1)) {
        bVar4 = true;
      }
      bVar1 = bVar4;
      pppiVar8 = (int ***)*pppiVar8;
    } while (pppiVar8 != &local_14);
    if ((2 < (int)((int)local_4c - (int)local_54 & 0xfffffffeU)) && (local_54 != (LPCWSTR)0x0)) {
      FUN_10918e90((int)local_54);
    }
    if (bVar1) {
      piVar7 = (int *)FUN_107744c0();
      FUN_10774190(piVar7);
    }
  }
  if ((2 < (int)(local_3c - (int)piVar2 & 0xfffffffeU)) && (piVar2 != (int *)0x0)) {
    FUN_10918e90((int)piVar2);
  }
  if ((2 < (int)(local_2c - (int)puVar3 & 0xfffffffeU)) && (puVar3 != (ushort *)0x0)) {
    FUN_10918e90((int)puVar3);
  }
  FUN_10072310(&local_14);
  return;
}

