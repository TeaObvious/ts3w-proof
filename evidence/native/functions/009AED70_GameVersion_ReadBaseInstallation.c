/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Resolve product/SKU1 install directory,
   append Game/Bin/Default.ini, read Version.GameVersion, convert wide text via9AEB50 then
   parse9AE9A0. Base installation selection is independent of metadata EP1-content selection. */

undefined4 * __cdecl GameVersion_ReadBaseInstallation(undefined4 *param_1)

{
  char cVar1;
  short *psVar2;
  short *psVar3;
  byte bVar4;
  int iVar5;
  short *local_8bc;
  undefined1 *local_8b8;
  undefined2 *local_8b4;
  char *local_8b0;
  LPCWSTR local_8ac;
  undefined1 *local_8a8;
  undefined2 *local_8a4;
  char *local_8a0;
  undefined2 local_89c [520];
  undefined4 local_48c [291];
  
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  local_8b0 = "Services/installDir";
  local_8bc = (short *)&DAT_011c8e54;
  local_8b8 = &DAT_011c8e54;
  local_8b4 = &DAT_011c8e56;
  cVar1 = DirectTargetOf_DownloadContent_DownloadContent_IsDevBuild();
  if (cVar1 == '\0') {
    cVar1 = FUN_007d0fe0(1,(int *)&local_8bc);
    if (cVar1 != '\0') {
      psVar3 = &DAT_01018c20;
      do {
        psVar2 = psVar3;
        psVar3 = psVar2 + 1;
      } while (*psVar3 != 0);
      FUN_00408b90(&local_8bc,&DAT_01018c20,&DAT_01018c20 + ((int)(psVar2 + -0x80c60f) >> 1));
      FUN_004ec7e0(local_89c);
      FUN_004ee400(local_89c,L"Default.ini",0);
      FUN_004ee3e0(local_89c,local_8bc,0);
      iVar5 = 0;
      bVar4 = 1;
      psVar3 = (short *)FUN_007e51a0(local_89c);
      FUN_004f1dd0(local_48c,psVar3,bVar4,iVar5);
      local_8a0 = "Services/VersionString";
      local_8ac = (LPCWSTR)&DAT_011c8e54;
      local_8a8 = &DAT_011c8e54;
      local_8a4 = &DAT_011c8e56;
      iVar5 = FUN_004f0560(local_48c,(char *)L"Version",L"GameVersion",&local_8ac);
      if (iVar5 != 0) {
        FUN_009aeb50(param_1,local_8ac);
      }
      if ((2 < (int)((int)local_8a4 - (int)local_8ac & 0xfffffffeU)) && (local_8ac != (LPCWSTR)0x0))
      {
        Memory_FreeIfNonNull(local_8ac);
      }
      FUN_004f0d20(local_48c);
    }
  }
  if ((2 < (int)((int)local_8b4 - (int)local_8bc & 0xfffffffeU)) && (local_8bc != (short *)0x0)) {
    Memory_FreeIfNonNull(local_8bc);
  }
  return param_1;
}

