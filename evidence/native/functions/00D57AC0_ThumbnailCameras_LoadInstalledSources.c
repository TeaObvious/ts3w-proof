/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX manager. Critical-section protected table
   replacement: base ThumbnailCameras.ini, EP1 product2, EP2 product4, installed products5..21 own
   ThumbnailCameras.ini. Callback00D53830 builds sections. Missing resources skipped. Product
   grouping007D7840 is distinct from section hashing; current dictionary cache is a project lifetime
   choice. */

void __fastcall ThumbnailCameras_LoadInstalledSources(int param_1)

{
  bool bVar1;
  undefined4 uVar2;
  int iVar3;
  uint local_4a4;
  uint local_4a0;
  undefined4 *local_49c;
  int local_498;
  undefined4 local_494 [293];
  
  FUN_007d0120(local_494);
  local_498 = param_1 + 0x18;
  local_49c = local_494;
  FUN_004e1c00((LPCRITICAL_SECTION)(param_1 + 0x98),(uint *)&DAT_01089370);
  FUN_00b22e80(*(int *)(param_1 + 0x1c),*(uint *)(param_1 + 0x20));
  *(undefined4 *)(param_1 + 0x24) = 0;
  local_4a4 = 0;
  uVar2 = FUN_007d0370(local_494,L"ThumbnailCameras.ini",0);
  if ((char)uVar2 != '\0') {
    FUN_004f16c0(local_494,ThumbnailCameras_ReadIniSection,&local_49c);
    FUN_007d0150((int)local_494);
  }
  FUN_007d7840(2,&local_4a4);
  uVar2 = FUN_007d0370(local_494,L"ThumbnailCameras_EP1.ini",local_4a4);
  if ((char)uVar2 != '\0') {
    FUN_004f16c0(local_494,ThumbnailCameras_ReadIniSection,&local_49c);
    FUN_007d0150((int)local_494);
  }
  FUN_007d7840(4,&local_4a4);
  uVar2 = FUN_007d0370(local_494,L"ThumbnailCameras_EP2.ini",local_4a4);
  if ((char)uVar2 != '\0') {
    FUN_004f16c0(local_494,ThumbnailCameras_ReadIniSection,&local_49c);
    FUN_007d0150((int)local_494);
  }
  iVar3 = 5;
  do {
    bVar1 = FUN_00595210(&DAT_011cede0,iVar3);
    if (bVar1) {
      local_4a0 = 0;
      FUN_007d7840(iVar3,&local_4a0);
      uVar2 = FUN_007d0370(local_494,L"ThumbnailCameras.ini",local_4a0);
      if ((char)uVar2 != '\0') {
        FUN_004f16c0(local_494,ThumbnailCameras_ReadIniSection,&local_49c);
        FUN_007d0150((int)local_494);
      }
    }
    iVar3 = iVar3 + 1;
  } while (iVar3 < 0x16);
  FUN_004e1cc0((LPCRITICAL_SECTION)(param_1 + 0x98));
  FUN_007d0250(local_494);
  return;
}

