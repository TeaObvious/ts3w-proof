/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 construction persistence contract): Actual edit consumer: compare old/new
   complete keys, release old non-sentinel references viaB49BD0 and add new viaB4BA40; then obtain
   current ordinal viaB49C60, narrow toUInt16 and publish side association. Thus counts/ordinal
   reuse are tied to resource edits, not loading a file into a replacement dictionary. */

undefined4 __thiscall WallPatternSide_UpdateResourcesAtPoint(void *this,uint *param_1,char *param_2)

{
  bool bVar1;
  uint *puVar2;
  uint *puVar3;
  int iVar4;
  uint uVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  undefined4 uVar8;
  uint *local_34;
  uint local_2c;
  uint *local_28;
  uint *local_24;
  char local_20;
  char local_1f;
  char local_1e;
  char local_1d;
  char local_1c;
  char local_1b;
  float local_18;
  float local_14;
  int local_10;
  float local_c;
  float fStack_8;
  int iStack_4;
  
  local_20 = -1;
  local_1f = -1;
  local_1d = -1;
  local_1c = -1;
  local_1e = '\0';
  local_1b = '\0';
  FUN_00b47d40(this,param_2,(undefined4 *)&local_20);
  local_24 = (uint *)WallGraph_FindWallForPackedLocator(*(void **)((int)this + 100),&local_20);
  if (local_24 == (uint *)0x0) {
    return 0;
  }
  uVar5 = *local_24;
  puVar2 = FUN_00b4aa50(this,&local_20);
  puVar3 = FUN_00b4ab10(this,&local_20);
  local_28 = FUN_00b4abd0(this,&local_20);
  iVar4 = WallGraph_FindWallForPackedLocator(*(void **)((int)this + 100),&local_20);
  if (iVar4 == 0) {
    local_34 = &DAT_011ec8c0;
  }
  else {
    local_34 = FUN_00c44ff0(*(void **)((int)this + 0x6c));
  }
  if ((((*puVar2 != *param_1) || (puVar2[2] != param_1[2])) || (puVar2[3] != param_1[3])) ||
     (puVar2[1] != param_1[1])) {
    if (((*puVar2 != DAT_011ec8d0) || (puVar2[2] != DAT_011ec8d8)) ||
       ((puVar2[3] != DAT_011ec8dc || (puVar2[1] != DAT_011ec8d4)))) {
      WallPatternMap_ReleaseReference(*(void **)((int)this + 0x78),puVar2);
    }
    if (((*param_1 != DAT_011ec8d0) || (param_1[2] != DAT_011ec8d8)) ||
       ((param_1[3] != DAT_011ec8dc || (param_1[1] != DAT_011ec8d4)))) {
      WallPatternMap_AddReference(*(void **)((int)this + 0x78),param_1);
      FUN_00ab09c0(*(void **)((int)this + 0xc),param_1);
    }
    bVar1 = FUN_00c44fc0(*(int *)((int)this + 0x74));
    if (!bVar1) {
      FUN_00c452d0(*(void **)((int)this + 0x74),uVar5,local_34);
    }
    local_2c = WallPatternMap_OrdinalForKey(*(void **)((int)this + 0x78),param_1);
    local_2c = local_2c & 0xffff;
    FUN_00c44f60(*(void **)((int)this + 0x74),uVar5,0,(undefined2 *)&local_2c);
  }
  puVar2 = param_1 + 4;
  if ((((*puVar3 != param_1[4]) || (puVar3[2] != param_1[6])) || (puVar3[3] != param_1[7])) ||
     (puVar3[1] != param_1[5])) {
    if (((*puVar3 != DAT_011ec8d0) || (puVar3[2] != DAT_011ec8d8)) ||
       ((puVar3[3] != DAT_011ec8dc || (puVar3[1] != DAT_011ec8d4)))) {
      WallPatternMap_ReleaseReference(*(void **)((int)this + 0x88),puVar3);
    }
    if (((*puVar2 != DAT_011ec8d0) || (param_1[6] != DAT_011ec8d8)) ||
       ((param_1[7] != DAT_011ec8dc || (param_1[5] != DAT_011ec8d4)))) {
      WallPatternMap_AddReference(*(void **)((int)this + 0x88),puVar2);
      FUN_00ab09c0(*(void **)((int)this + 0xc),puVar2);
    }
    bVar1 = FUN_00c44fc0(*(int *)((int)this + 0x84));
    if (!bVar1) {
      FUN_00c452d0(*(void **)((int)this + 0x84),uVar5,local_34);
    }
    local_2c = WallPatternMap_OrdinalForKey(*(void **)((int)this + 0x88),puVar2);
    local_2c = local_2c & 0xffff;
    FUN_00c44f60(*(void **)((int)this + 0x84),uVar5,0,(undefined2 *)&local_2c);
  }
  puVar2 = param_1 + 8;
  if ((((*local_28 != param_1[8]) || (local_28[2] != param_1[10])) || (local_28[3] != param_1[0xb]))
     || (local_28[1] != param_1[9])) {
    if (((*local_28 != DAT_011ec8d0) || (local_28[2] != DAT_011ec8d8)) ||
       ((local_28[3] != DAT_011ec8dc || (local_28[1] != DAT_011ec8d4)))) {
      WallPatternMap_ReleaseReference(*(void **)((int)this + 0x80),local_28);
    }
    if (((*puVar2 != DAT_011ec8d0) || (param_1[10] != DAT_011ec8d8)) ||
       ((param_1[0xb] != DAT_011ec8dc || (param_1[9] != DAT_011ec8d4)))) {
      WallPatternMap_AddReference(*(void **)((int)this + 0x80),puVar2);
      FUN_00ab09f0(*(void **)((int)this + 0xc),puVar2);
    }
    bVar1 = FUN_00c44fc0(*(int *)((int)this + 0x7c));
    if (!bVar1) {
      FUN_00c452d0(*(void **)((int)this + 0x7c),uVar5,local_34);
    }
    uVar5 = WallPatternMap_OrdinalForKey(*(void **)((int)this + 0x80),puVar2);
    local_28 = (uint *)(uVar5 & 0xffff);
    FUN_00c44f60(*(void **)((int)this + 0x7c),*local_24,0,(undefined2 *)&local_28);
  }
  if (*(char *)(*(int *)((int)this + 0xc) + 0x74) != '\0') {
    local_24 = (uint *)MessageDispatch_GetCurrent();
    puVar6 = FloorMessagePool_AcquireStorage();
    if (puVar6 == (undefined4 *)0x0) {
      puVar6 = (undefined4 *)0x0;
    }
    else {
      puVar6 = FUN_00b47cd0(puVar6);
    }
    iVar4 = *(int *)((int)this + 0xc);
    puVar6[2] = *(undefined4 *)(iVar4 + 0x48);
    puVar6[3] = *(undefined4 *)(iVar4 + 0x4c);
    puVar2 = param_1;
    puVar3 = puVar6 + 4;
    for (iVar4 = 0xc; iVar4 != 0; iVar4 = iVar4 + -1) {
      *puVar3 = *puVar2;
      puVar2 = puVar2 + 1;
      puVar3 = puVar3 + 1;
    }
    puVar6[0x10] = *(undefined4 *)param_2;
    *(undefined2 *)(puVar6 + 0x11) = *(undefined2 *)(param_2 + 4);
    iVar4 = WallGraph_FindWallForPackedLocator(*(void **)((int)this + 100),param_2);
    if (iVar4 == 0) {
      puVar7 = &DAT_011ec8c0;
    }
    else {
      puVar7 = FUN_00c44ff0(*(void **)((int)this + 0x6c));
    }
    puVar6[0x12] = *puVar7;
    puVar6[0x13] = puVar7[1];
    puVar6[0x14] = puVar7[2];
    puVar6[0x15] = puVar7[3];
    (**(code **)(*local_24 + 0x1c))(0x876e2ed,puVar6,0,0);
  }
  local_10 = (int)local_1e;
  local_18 = (float)(int)local_20;
  local_14 = (float)(int)local_1f;
  local_c = (float)(int)local_1d;
  fStack_8 = (float)(int)local_1c;
  iStack_4 = (int)local_1b;
  uVar8 = FUN_00b46fd0(this,&local_18,(int *)local_34);
  if ((char)uVar8 != '\0') {
    FUN_00a674a0(*(void **)((int)this + 0x8c),&local_18,(byte *)param_1);
    uVar8 = FUN_00b0d860(*(void **)((int)this + 0xc),&local_18);
    if ((char)uVar8 == '\0') {
      FUN_00b48490(this,&local_18,local_34,param_1);
    }
  }
  uVar8 = FUN_00b46fd0(this,&local_c,(int *)local_34);
  if ((char)uVar8 != '\0') {
    FUN_00a674a0(*(void **)((int)this + 0x8c),&local_c,(byte *)param_1);
    uVar8 = FUN_00b0d860(*(void **)((int)this + 0xc),&local_c);
    if ((char)uVar8 == '\0') {
      uVar8 = FUN_00b48490(this,&local_c,local_34,param_1);
    }
  }
  return CONCAT31((int3)((uint)uVar8 >> 8),1);
}

