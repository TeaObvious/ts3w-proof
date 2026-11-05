/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX manager, hold critical section+98, clear size
   table at+38, open group0ThumbnailSizes.ini, enumerate00D53D90 sections, release lock and INI
   object. Size table and camera table have separate lifetimes/data. */

void __fastcall ThumbnailSizes_LoadSource(int param_1)

{
  undefined4 uVar1;
  undefined4 *local_49c;
  int local_498;
  undefined4 local_494 [293];
  
  FUN_007d0120(local_494);
  local_498 = param_1 + 0x38;
  local_49c = local_494;
  FUN_004e1c00((LPCRITICAL_SECTION)(param_1 + 0x98),(uint *)&DAT_01089370);
  FUN_00d4c000(*(int *)(param_1 + 0x3c),*(uint *)(param_1 + 0x40));
  *(undefined4 *)(param_1 + 0x44) = 0;
  uVar1 = FUN_007d0370(local_494,L"ThumbnailSizes.ini",0);
  if ((char)uVar1 != '\0') {
    FUN_004f16c0(local_494,ThumbnailSizes_ReadIniSection,&local_49c);
  }
  FUN_004e1cc0((LPCRITICAL_SECTION)(param_1 + 0x98));
  FUN_007d0250(local_494);
  return;
}

