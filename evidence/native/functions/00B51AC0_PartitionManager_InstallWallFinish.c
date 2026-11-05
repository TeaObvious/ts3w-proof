/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  char cVar9;
  char cVar10;
  char cVar11;
  uint *puVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  uint *puVar15;
  uint uVar16;
  uint *puVar17;
  char local_20;
  char cStack_1f;
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
  local_20 = -1;
  cStack_1f = -1;
  local_1d = 0xff;
  local_1e = '\0';
  WallLocator_QueryFirstAdjacentTile((char *)param_4,(undefined2 *)&local_20);
  cVar11 = local_1e;
  cVar10 = cStack_1f;
  cVar9 = local_20;
  WallLocator_QueryOtherAdjacentTile((undefined2 *)pfVar8,(undefined2 *)&local_20);
  puVar15 = param_1;
  uVar16 = *(uint *)((int)this + 0xc);
  if (((((cVar9 < 0) || (*(int *)(uVar16 + 0x174) <= (int)cVar9)) || (cVar10 < 0)) ||
      ((*(int *)(uVar16 + 0x178) <= (int)cVar10 || ((int)cVar11 < *(int *)(uVar16 + 0x17c))))) ||
     (*(int *)(uVar16 + 0x180) < (int)cVar11)) {
    if (((local_20 < 0) || (*(int *)(uVar16 + 0x174) <= (int)local_20)) ||
       ((cStack_1f < 0 ||
        (((*(int *)(uVar16 + 0x178) <= (int)cStack_1f || ((int)local_1e < *(int *)(uVar16 + 0x17c)))
         || (*(int *)(uVar16 + 0x180) < (int)local_1e)))))) {
      return uVar16 & 0xffffff00;
    }
  }
  uVar13 = WallProduct_HasNonzeroFieldE0(param_1);
  uVar14 = FUN_00c5b860(puVar15);
  if (((char)uVar14 == '\0') || (bVar4 = true, (char)uVar13 != '\0')) {
    bVar4 = false;
  }
  FUN_00b50590(this,(char *)pfVar8,1);
  FUN_00b47150(this,(int *)pfVar8,puVar15);
  puVar15 = (uint *)FUN_00c418d0(*(void **)((int)this + 100),(char *)pfVar8);
  uVar16 = *puVar15;
  local_10 = (uint *)uVar16;
  if (((*(int *)(param_3 + 0x18) != 0) || (*(int *)(param_3 + 0x28) != 0)) ||
     (*(int *)(param_3 + 0x38) != 0)) {
    param_3 = (byte *)FUN_00a90e70(*(void **)((int)this + 0x9c),param_3);
    FUN_00c5b2f0(*(void **)((int)this + 0xa0),uVar16,&param_3);
  }
  puVar7 = param_2;
  WallPatternMap_AddReference(*(void **)((int)this + 0x70),param_2);
  WallPatternMap_AddReference(*(void **)((int)this + 0x70),puVar7 + 0x10);
  this_00 = *(void **)((int)this + 0x70);
  local_c = WallPatternMap_OrdinalForKey(this_00,puVar7);
  local_c = local_c & 0xffff;
  local_8 = WallPatternMap_OrdinalForKey(this_00,puVar7 + 0x10);
  puVar12 = local_10;
  local_8 = local_8 & 0xffff;
  FUN_00c452d0(*(void **)((int)this + 0x6c),(uint)local_10,param_1);
  FUN_00c44f60(*(void **)((int)this + 0x6c),puVar12,0,(undefined2 *)&local_c);
  FUN_00c44f60(*(void **)((int)this + 0x6c),puVar12,1,(undefined2 *)&local_8);
  local_18 = puVar7 + 8;
  puVar15 = puVar7 + 4;
  puVar1 = puVar7 + 0x14;
  local_1c = puVar7 + 0xc;
  local_14 = puVar7 + 0x18;
  puVar17 = puVar7 + 0x1c;
  if ((((*puVar15 != DAT_011ec8d0) || (puVar7[6] != DAT_011ec8d8)) || (puVar7[7] != DAT_011ec8dc))
     || (param_3 = (byte *)((uint)param_3 & 0xffffff00), puVar7[5] != DAT_011ec8d4)) {
    param_3 = (byte *)CONCAT31(param_3._1_3_,1);
  }
  local_4 = *puVar1;
  if (((local_4 != DAT_011ec8d0) || (puVar7[0x16] != DAT_011ec8d8)) ||
     ((puVar7[0x17] != DAT_011ec8dc ||
      (param_2 = (uint *)((uint)param_2 & 0xffffff00), puVar7[0x15] != DAT_011ec8d4)))) {
    param_2 = (uint *)CONCAT31(param_2._1_3_,1);
  }
  if (((*puVar15 != DAT_011ec8d0) || (puVar7[6] != DAT_011ec8d8)) ||
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
  if (((*puVar17 != DAT_011ec8d0) || (puVar7[0x1e] != DAT_011ec8d8)) ||
     ((puVar7[0x1f] != DAT_011ec8dc || (bVar6 = false, puVar7[0x1d] != DAT_011ec8d4)))) {
    bVar6 = true;
  }
  local_10 = puVar17;
  if ((char)param_3 != '\0') {
    WallPatternMap_AddReference(*(void **)((int)this + 0x78),puVar15);
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
      WallPatternMap_AddReference(*(void **)((int)this + 0x80),puVar17);
    }
  }
  puVar7 = param_1;
  if (((char)param_3 != '\0') || ((char)param_2 != '\0')) {
    FUN_00c452d0(*(void **)((int)this + 0x74),(uint)puVar12,param_1);
  }
  if ((bVar2) || (bVar5)) {
    FUN_00c452d0(*(void **)((int)this + 0x84),(uint)puVar12,puVar7);
  }
  if ((bVar3) || (bVar6)) {
    FUN_00c452d0(*(void **)((int)this + 0x7c),(uint)puVar12,puVar7);
  }
  if ((char)param_3 != '\0') {
    uVar16 = WallPatternMap_OrdinalForKey(*(void **)((int)this + 0x78),puVar15);
    param_1 = (uint *)(uVar16 & 0xffff);
    FUN_00c44f60(*(void **)((int)this + 0x74),puVar12,0,(undefined2 *)&param_1);
  }
  if (((char)param_2 != '\0') && (!bVar4)) {
    uVar16 = WallPatternMap_OrdinalForKey(*(void **)((int)this + 0x78),puVar1);
    param_1 = (uint *)(uVar16 & 0xffff);
    FUN_00c44f60(*(void **)((int)this + 0x74),puVar12,1,(undefined2 *)&param_1);
  }
  if (bVar2) {
    uVar16 = WallPatternMap_OrdinalForKey(*(void **)((int)this + 0x88),local_18);
    param_1 = (uint *)(uVar16 & 0xffff);
    FUN_00c44f60(*(void **)((int)this + 0x84),puVar12,0,(undefined2 *)&param_1);
  }
  if ((bVar5) && (!bVar4)) {
    uVar16 = WallPatternMap_OrdinalForKey(*(void **)((int)this + 0x88),local_14);
    param_1 = (uint *)(uVar16 & 0xffff);
    FUN_00c44f60(*(void **)((int)this + 0x84),puVar12,1,(undefined2 *)&param_1);
  }
  if (bVar3) {
    uVar16 = WallPatternMap_OrdinalForKey(*(void **)((int)this + 0x80),local_1c);
    param_1 = (uint *)(uVar16 & 0xffff);
    FUN_00c44f60(*(void **)((int)this + 0x7c),puVar12,0,(undefined2 *)&param_1);
  }
  if ((bVar6) && (!bVar4)) {
    uVar16 = WallPatternMap_OrdinalForKey(*(void **)((int)this + 0x80),local_10);
    param_1 = (uint *)(uVar16 & 0xffff);
    FUN_00c44f60(*(void **)((int)this + 0x7c),puVar12,1,(undefined2 *)&param_1);
  }
  uVar13 = FUN_00b4fc10(this,param_4,puVar7);
  return CONCAT31((int3)((uint)uVar13 >> 8),1);
}

