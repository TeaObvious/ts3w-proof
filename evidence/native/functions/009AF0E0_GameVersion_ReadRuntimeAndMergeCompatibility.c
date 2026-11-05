/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Read runtime Version.GameVersion
   default0.0.0.0, parse four words. Release path replaces revision thousands with base installation
   revision/1000*1000 and retains runtime revision%1000; both operations are UInt32. Development
   path uses CompatVersion*1000 plus runtime remainder instead. Returning base text alone is not the
   general runtime contract. */

void * __cdecl GameVersion_ReadRuntimeAndMergeCompatibility(void *param_1)

{
  char cVar1;
  LPCWSTR pWVar2;
  undefined4 *puVar3;
  int iVar4;
  void *local_10 [2];
  int local_8;
  uint local_4;
  
  pWVar2 = (LPCWSTR)FUN_0058ac60(L"Version",L"GameVersion",L"0.0.0.0");
  puVar3 = Utf_ConvertWideSpanToByteStorage(local_10,pWVar2,0xffffffff,(char *)0x0);
  GameVersion_ParseFourComponents(param_1,(char *)*puVar3);
  if ((1 < local_8 - (int)local_10[0]) && (local_10[0] != (void *)0x0)) {
    Memory_FreeIfNonNull(local_10[0]);
  }
  cVar1 = DirectTargetOf_DownloadContent_DownloadContent_IsDevBuild();
  if (cVar1 != '\0') {
    iVar4 = FUN_0058af00(L"Version",L"CompatVersion",0);
    *(uint *)((int)param_1 + 0xc) = *(uint *)((int)param_1 + 0xc) % 1000 + iVar4 * 1000;
    return param_1;
  }
  GameVersion_ReadBaseInstallation(local_10);
  *(uint *)((int)param_1 + 0xc) = (local_4 / 1000) * 1000 + *(uint *)((int)param_1 + 0xc) % 1000;
  return param_1;
}

