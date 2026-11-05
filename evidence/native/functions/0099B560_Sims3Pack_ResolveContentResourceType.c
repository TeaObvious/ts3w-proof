/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack instruction review. Maps recognized wide content-type strings to
   original resource IDs; unknown returns0. Original constant/table strings are authoritative; do
   not substitute the launcher's import whitelist for complete native type recognition. Wide
   comparison semantics require its helper review.
   
   Analyst PC 1.67 Sims3Pack string review. Input is byte string, NOT LPCWSTR: conversion helper
   measures byte strlen then converts source encoding8 to16-bit text. Compared to wide original
   literals using exact case-sensitive equality004EDC40. Returns matching resource ID or0; no
   substring/case-insensitive acceptance. Existing earlier wide-input inference corrected. */

uint __cdecl Sims3Pack_ResolveContentResourceType(byte *contentTypeBytes)

{
  bool bVar1;
  undefined1 **ppuVar2;
  undefined2 *puVar3;
  undefined1 *allocation;
  undefined1 *local_20;
  undefined1 *local_1c;
  undefined2 *local_18;
  char *local_14;
  void *local_10 [2];
  int local_8;
  
  if (contentTypeBytes == (byte *)0x0) {
    return 0;
  }
  local_14 = "Scratch/DownloadContent/DownloadContentUtils/ParseExportTypeString";
  local_20 = &DAT_011c8e54;
  local_1c = &DAT_011c8e54;
  local_18 = &DAT_011c8e56;
  ppuVar2 = EaString_FromUtf8Bytes(local_10,contentTypeBytes,0xffffffff,(byte *)0x0);
  puVar3 = &DAT_011c8e56;
  allocation = &DAT_011c8e54;
  if (ppuVar2 != &local_20) {
    FUN_00408d60(&local_20,*ppuVar2,(undefined2 *)ppuVar2[1]);
    puVar3 = local_18;
    allocation = local_20;
  }
  if ((2 < (int)(local_8 - (int)local_10[0] & 0xfffffffeU)) && (local_10[0] != (void *)0x0)) {
    Memory_FreeIfNonNull(local_10[0]);
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_DAT_01181810);
  if (bVar1) {
    if ((2 < (int)((int)puVar3 - (int)allocation & 0xfffffffeU)) &&
       (allocation != (undefined1 *)0x0)) {
      Memory_FreeIfNonNull(allocation);
    }
    return 0x4f88964;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_household_01181818);
  if (bVar1) {
    if ((2 < (int)((int)puVar3 - (int)allocation & 0xfffffffeU)) &&
       (allocation != (undefined1 *)0x0)) {
      Memory_FreeIfNonNull(allocation);
    }
    return 0xb3a415e;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_DAT_01181814);
  if (bVar1) {
    if ((2 < (int)((int)puVar3 - (int)allocation & 0xfffffffeU)) &&
       (allocation != (undefined1 *)0x0)) {
      Memory_FreeIfNonNull(allocation);
    }
    return 0x436fee4c;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_CASpart_0118181c);
  if (bVar1) {
    FUN_004ef8f0((int *)&local_20);
    return 0x34aeecb;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_object_01181820);
  if (bVar1) {
    FUN_004ef8f0((int *)&local_20);
    return 0x5f8f5d9;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_pattern_01181824);
  if (bVar1) {
    FUN_004ef8f0((int *)&local_20);
    return 0x341acc9;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_haircolorinfo_01181828);
  if (bVar1) {
    FUN_004ef8f0((int *)&local_20);
    return 0x63261da;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_objectcolorinfo_0118182c);
  if (bVar1) {
    FUN_004ef8f0((int *)&local_20);
    return 0x6326213;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_cascolorinfo_01181830);
  if (bVar1) {
    FUN_004ef8f0((int *)&local_20);
    return 0x63261f0;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_pethaircolorinfo_01181834);
  if (bVar1) {
    FUN_004ef8f0((int *)&local_20);
    return 0x3a65af29;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_preset_01181838);
  if (bVar1) {
    FUN_004ef8f0((int *)&local_20);
    return 0x44ae110;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_video_0118183c);
  if (bVar1) {
    FUN_004ef8f0((int *)&local_20);
    return 0xb1cc1af6;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_screenshot_01181840);
  if (bVar1) {
    FUN_004ef8f0((int *)&local_20);
    return 0x2f7d0004;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_world_01181844);
  if (bVar1) {
    FUN_004ef8f0((int *)&local_20);
    return 0x6bc1f92;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_skin_01181848);
  if (bVar1) {
    FUN_004ef8f0((int *)&local_20);
    return 0x354796a;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_dynamicchallenge_01181850);
  if (bVar1) {
    FUN_004ef8f0((int *)&local_20);
    return 0xc4fb4f1;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_passportchallenge_01181854);
  if (bVar1) {
    FUN_004ef8f0((int *)&local_20);
    return 0xc4fb4f9;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_outfit_0118184c);
  if (bVar1) {
    FUN_004ef8f0((int *)&local_20);
    return 0x25ed6f4;
  }
  bVar1 = WideString_EqualsLiteral(&local_20,(ushort *)PTR_u_coatset_01181858);
  if (bVar1) {
    FUN_004ef8f0((int *)&local_20);
    return 0xdea2951c;
  }
  FUN_004ef8f0((int *)&local_20);
  return 0;
}

