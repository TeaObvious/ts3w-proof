/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Selected PC1.67 finish storage role: thiscall partition manager plus
   product/side-resource/other-lane/WallLocator pointers, RET10hex, AL success. Validates at least
   one adjacent tile against signed lot bounds. Side resource block carries four16byte keys per
   side; pattern,diffuse,specular,COMP are not one shared ordinal. Registers and writes
   category-specific maps/handles; the pure-fence gate suppresses the second-side lanes while
   combined wall/fence has separate handling. Actual mixed locator layout and repeated decompiler
   flag aliases must be verified against Listing before porting broader gates. This annotation
   establishes selected ownership/independent-key context, not complete post-height/placement
   parity. */

uint __thiscall
PartitionManager_InstallWallFinish
          (void *this,uint *param_1,uint *param_2,byte *param_3,float *param_4)

{
  uint *puVar1;
  void *this_00;
  bool bVar2;
  bool bVar3;
  bool bVar4;
  bool bVar5;
  bool bVar6;
  uint *puVar7;
  float *pfVar8;
  undefined2 uVar9;
  char cVar10;
  uint *puVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  uint *puVar14;
  uint uVar15;
  uint *puVar16;
  char local_24;
  char cStack_23;
  undefined2 local_20;
  char local_1e;
  undefined1 local_1d;
  uint *local_1c;
  uint *local_18;
  uint *local_14;
  uint *local_10;
  uint local_c;
  uint local_8;
  uint local_4;
  
  pfVar8 = param_4;
  local_20 = 0xffff;
  local_1d = 0xff;
  local_1e = '\0';
  WallLocator_QueryFirstAdjacentTile((char *)param_4,&local_20);
  cVar10 = local_1e;
  uVar9 = local_20;
  WallLocator_QueryOtherAdjacentTile((undefined2 *)pfVar8,&local_20);
  puVar14 = param_1;
  local_24 = (char)uVar9;
  uVar15 = *(uint *)((int)this + 0xc);
  cStack_23 = (char)((ushort)uVar9 >> 8);
  if (((((local_24 < 0) || (*(int *)(uVar15 + 0x174) <= (int)local_24)) || (cStack_23 < 0)) ||
      ((*(int *)(uVar15 + 0x178) <= (int)cStack_23 || ((int)cVar10 < *(int *)(uVar15 + 0x17c))))) ||
     (*(int *)(uVar15 + 0x180) < (int)cVar10)) {
    if ((((char)local_20 < 0) || (*(int *)(uVar15 + 0x174) <= (int)(char)local_20)) ||
       ((local_20._1_1_ < 0 ||
        (((*(int *)(uVar15 + 0x178) <= (int)local_20._1_1_ ||
          ((int)local_1e < *(int *)(uVar15 + 0x17c))) || (*(int *)(uVar15 + 0x180) < (int)local_1e))
        )))) {
      return uVar15 & 0xffffff00;
    }
  }
  uVar12 = WallProduct_HasNonzeroFieldE0(param_1);
  uVar13 = FUN_00c5b860(puVar14);
  if (((char)uVar13 == '\0') || (bVar4 = true, (char)uVar12 != '\0')) {
    bVar4 = false;
  }
  FUN_00b50590(this,(char *)pfVar8,1);
  FUN_00b47150(this,(int *)pfVar8,puVar14);
  puVar14 = (uint *)WallGraph_FindWallForPackedLocator(*(void **)((int)this + 100),(char *)pfVar8);
  uVar15 = *puVar14;
  local_10 = (uint *)uVar15;
  if (((*(int *)(param_3 + 0x18) != 0) || (*(int *)(param_3 + 0x28) != 0)) ||
     (*(int *)(param_3 + 0x38) != 0)) {
    param_3 = (byte *)FloorKeyMap_AddReference(*(void **)((int)this + 0x9c),param_3);
    FUN_00c5b2f0(*(void **)((int)this + 0xa0),uVar15,&param_3);
  }
  puVar7 = param_2;
  WallPatternMap_AddReference(*(void **)((int)this + 0x70),param_2);
  WallPatternMap_AddReference(*(void **)((int)this + 0x70),puVar7 + 0x10);
  this_00 = *(void **)((int)this + 0x70);
  local_c = WallPatternMap_OrdinalForKey(this_00,puVar7);
  local_c = local_c & 0xffff;
  local_8 = WallPatternMap_OrdinalForKey(this_00,puVar7 + 0x10);
  puVar11 = local_10;
  local_8 = local_8 & 0xffff;
  FUN_00c452d0(*(void **)((int)this + 0x6c),(uint)local_10,param_1);
  FUN_00c44f60(*(void **)((int)this + 0x6c),puVar11,0,(undefined2 *)&local_c);
  FUN_00c44f60(*(void **)((int)this + 0x6c),puVar11,1,(undefined2 *)&local_8);
  local_18 = puVar7 + 8;
  puVar14 = puVar7 + 4;
  puVar1 = puVar7 + 0x14;
  local_1c = puVar7 + 0xc;
  local_14 = puVar7 + 0x18;
  puVar16 = puVar7 + 0x1c;
  if ((((*puVar14 != DAT_011ec8d0) || (puVar7[6] != DAT_011ec8d8)) || (puVar7[7] != DAT_011ec8dc))
     || (param_3 = (byte *)((uint)param_3 & 0xffffff00), puVar7[5] != DAT_011ec8d4)) {
    param_3 = (byte *)CONCAT31(param_3._1_3_,1);
  }
  local_4 = *puVar1;
  if (((local_4 != DAT_011ec8d0) || (puVar7[0x16] != DAT_011ec8d8)) ||
     ((puVar7[0x17] != DAT_011ec8dc ||
      (param_2 = (uint *)((uint)param_2 & 0xffffff00), puVar7[0x15] != DAT_011ec8d4)))) {
    param_2 = (uint *)CONCAT31(param_2._1_3_,1);
  }
  if (((*puVar14 != DAT_011ec8d0) || (puVar7[6] != DAT_011ec8d8)) ||
     ((puVar7[7] != DAT_011ec8dc || (bVar2 = false, puVar7[5] != DAT_011ec8d4)))) {
    bVar2 = true;
  }
  if ((((local_4 != DAT_011ec8d0) || (puVar7[0x16] != DAT_011ec8d8)) ||
      (puVar7[0x17] != DAT_011ec8dc)) || (bVar5 = false, puVar7[0x15] != DAT_011ec8d4)) {
    bVar5 = true;
  }
  if (((*local_1c != DAT_011ec8d0) || (puVar7[0xe] != DAT_011ec8d8)) ||
     ((puVar7[0xf] != DAT_011ec8dc || (bVar3 = false, puVar7[0xd] != DAT_011ec8d4)))) {
    bVar3 = true;
  }
  if (((*puVar16 != DAT_011ec8d0) || (puVar7[0x1e] != DAT_011ec8d8)) ||
     ((puVar7[0x1f] != DAT_011ec8dc || (bVar6 = false, puVar7[0x1d] != DAT_011ec8d4)))) {
    bVar6 = true;
  }
  local_10 = puVar16;
  if ((char)param_3 != '\0') {
    WallPatternMap_AddReference(*(void **)((int)this + 0x78),puVar14);
    if (bVar2) {
      WallPatternMap_AddReference(*(void **)((int)this + 0x88),local_18);
    }
    if (bVar3) {
      WallPatternMap_AddReference(*(void **)((int)this + 0x80),local_1c);
    }
  }
  if (((char)param_2 != '\0') && (!bVar4)) {
    WallPatternMap_AddReference(*(void **)((int)this + 0x78),puVar1);
    if (bVar5) {
      WallPatternMap_AddReference(*(void **)((int)this + 0x88),local_14);
    }
    if (bVar6) {
      WallPatternMap_AddReference(*(void **)((int)this + 0x80),puVar16);
    }
  }
  puVar7 = param_1;
  if (((char)param_3 != '\0') || ((char)param_2 != '\0')) {
    FUN_00c452d0(*(void **)((int)this + 0x74),(uint)puVar11,param_1);
  }
  if ((bVar2) || (bVar5)) {
    FUN_00c452d0(*(void **)((int)this + 0x84),(uint)puVar11,puVar7);
  }
  if ((bVar3) || (bVar6)) {
    FUN_00c452d0(*(void **)((int)this + 0x7c),(uint)puVar11,puVar7);
  }
  if ((char)param_3 != '\0') {
    uVar15 = WallPatternMap_OrdinalForKey(*(void **)((int)this + 0x78),puVar14);
    param_1 = (uint *)(uVar15 & 0xffff);
    FUN_00c44f60(*(void **)((int)this + 0x74),puVar11,0,(undefined2 *)&param_1);
  }
  if (((char)param_2 != '\0') && (!bVar4)) {
    uVar15 = WallPatternMap_OrdinalForKey(*(void **)((int)this + 0x78),puVar1);
    param_1 = (uint *)(uVar15 & 0xffff);
    FUN_00c44f60(*(void **)((int)this + 0x74),puVar11,1,(undefined2 *)&param_1);
  }
  if (bVar2) {
    uVar15 = WallPatternMap_OrdinalForKey(*(void **)((int)this + 0x88),local_18);
    param_1 = (uint *)(uVar15 & 0xffff);
    FUN_00c44f60(*(void **)((int)this + 0x84),puVar11,0,(undefined2 *)&param_1);
  }
  if ((bVar5) && (!bVar4)) {
    uVar15 = WallPatternMap_OrdinalForKey(*(void **)((int)this + 0x88),local_14);
    param_1 = (uint *)(uVar15 & 0xffff);
    FUN_00c44f60(*(void **)((int)this + 0x84),puVar11,1,(undefined2 *)&param_1);
  }
  if (bVar3) {
    uVar15 = WallPatternMap_OrdinalForKey(*(void **)((int)this + 0x80),local_1c);
    param_1 = (uint *)(uVar15 & 0xffff);
    FUN_00c44f60(*(void **)((int)this + 0x7c),puVar11,0,(undefined2 *)&param_1);
  }
  if ((bVar6) && (!bVar4)) {
    uVar15 = WallPatternMap_OrdinalForKey(*(void **)((int)this + 0x80),local_10);
    param_1 = (uint *)(uVar15 & 0xffff);
    FUN_00c44f60(*(void **)((int)this + 0x7c),puVar11,1,(undefined2 *)&param_1);
  }
  uVar12 = FUN_00b4fc10(this,param_4,puVar7);
  return CONCAT31((int3)((uint)uVar12 >> 8),1);
}

