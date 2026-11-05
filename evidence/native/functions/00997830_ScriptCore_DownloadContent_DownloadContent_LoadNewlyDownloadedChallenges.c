/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011817e8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_LoadNewlyDownloadedChallenges [assembly=ScriptCore
   token=0x060000EF; ; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.DownloadContent::DownloadContent_LoadNewlyDownloadedChallenges(void)

{
  bool bVar1;
  short *allocation;
  ushort *allocation_00;
  bool bVar2;
  void *pvVar3;
  _GUID *p_Var4;
  int *piVar5;
  int ***pppiVar6;
  LPCWSTR pWVar7;
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
  int ***local_14;
  int ***local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  local_24 = 0;
  local_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_c = FUN_004d9c90();
  local_14 = (int ***)&local_14;
  local_8 = 0;
  local_4 = "GameHost/DebugChallengeDownload/dirEntryList";
  local_34 = (ushort *)0x0;
  local_30 = 0;
  local_2c = 0;
  local_28 = "GameHost/DebugChallengeDownload/fileSpec";
  local_10 = local_14;
  FUN_0040b590(&local_34,L"dynamicchallenge_*.Sims3Pack");
  pvVar3 = DownloadContent_GetOwnerFromGlobalLink();
  local_44 = (short *)0x0;
  local_40 = 0;
  local_3c = 0;
  local_38 = "GameHost/DebugChallengeDownload/folderPath";
  FUN_0040b590(&local_44,*(short **)((int)pvVar3 + 0x100));
  allocation_00 = local_34;
  allocation = local_44;
  bVar1 = false;
  FUN_004da580(local_44,(int *)&local_14,local_34,2,0x100000);
  if ((int ****)local_14 != &local_14) {
    local_48 = "GameHost/DownloadChallengePack/fullPath";
    local_54 = (LPCWSTR)&DAT_011c8e54;
    local_50 = &DAT_011c8e54;
    local_4c = &DAT_011c8e56;
    pppiVar6 = local_14;
    do {
      FUN_00898870(allocation,(short *)pppiVar6[3],&local_54);
      pWVar7 = local_54;
      pvVar3 = DownloadContent_GetOwnerFromGlobalLink();
      p_Var4 = FUN_00990350(pvVar3,pWVar7);
      if ((p_Var4 == (_GUID *)0x1000) || (bVar2 = false, bVar1)) {
        bVar2 = true;
      }
      bVar1 = bVar2;
      pppiVar6 = (int ***)*pppiVar6;
    } while ((int ****)pppiVar6 != &local_14);
    if ((2 < (int)((int)local_4c - (int)local_54 & 0xfffffffeU)) && (local_54 != (LPCWSTR)0x0)) {
      Memory_FreeIfNonNull(local_54);
    }
    if (bVar1) {
      piVar5 = DownloadContent_GetOwnerFromGlobalLink();
      FUN_00982b10(piVar5);
    }
  }
  if ((2 < (int)(local_3c - (int)allocation & 0xfffffffeU)) && (allocation != (short *)0x0)) {
    Memory_FreeIfNonNull(allocation);
  }
  if ((2 < (int)(local_2c - (int)allocation_00 & 0xfffffffeU)) && (allocation_00 != (ushort *)0x0))
  {
    Memory_FreeIfNonNull(allocation_00);
  }
  FUN_00456ec0(&local_14);
  return;
}

