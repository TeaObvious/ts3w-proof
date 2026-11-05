/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Type propagation algorithm not settling */
/* Analyst: PC 1.67 map/lot detail contract. If world dirty byte+46 iszero, return1 without writes.
   Otherwise snapshot whether heightmap manager+54 owns pointer+8; if absent call00c63370(this,0),
   snapshot whether it then exists. Perform original dirty-world flush, clear+46 and dirty-rect
   list, then call WorldManager cleanup00c63410(this,0) only if pointer was absent before and
   present after. Cleanup result is ignored; returned low byte is00c29990 result bit0. This is a
   temporary-data cleanup caller, not proof of ordinary map-view cleanup or a permanent streaming
   residency guarantee. Complex displayed pointer nesting is a decompiler container-type artifact.
    */

uchar __thiscall WorldManager_FlushDirtyWorldData(void *this,void *destinationDb,void *options)

{
  int *piVar1;
  int ******ppppppiVar2;
  undefined4 *puVar3;
  int *piVar4;
  float *pfVar5;
  uint uVar6;
  void *pvVar7;
  undefined4 uVar8;
  void *pvVar9;
  undefined4 *puVar10;
  int *allocation;
  bool bVar11;
  bool bVar12;
  int iVar13;
  int *****pppppiVar14;
  int iVar15;
  int *****pppppiVar16;
  int *******local_7c;
  undefined4 *local_78;
  void *local_74;
  undefined **local_70 [2];
  undefined1 local_68 [20];
  undefined4 local_54;
  int *******local_50;
  int *******local_4c;
  undefined4 *local_48;
  undefined4 local_44;
  undefined4 local_40;
  char *local_3c;
  undefined **local_30;
  undefined4 *******local_2c;
  undefined4 *******local_28;
  undefined4 *local_24;
  code *local_20;
  void **local_1c;
  undefined4 **local_18;
  
  if (*(char *)((int)this + 0x46) == '\0') {
    return '\x01';
  }
  if (*(int *)((int)this + 0x54) == 0) {
    bVar11 = false;
  }
  else {
    bVar11 = *(int *)(*(int *)((int)this + 0x54) + 8) != 0;
  }
  bVar12 = false;
  local_74 = this;
  if (!bVar11) {
    World_EnsureHeightmapRelatedData(this,false);
    if (*(int *)((int)this + 0x54) == 0) {
      bVar12 = false;
    }
    else {
      bVar12 = *(int *)(*(int *)((int)this + 0x54) + 8) != 0;
    }
  }
  if (*(char *)((int)this + 0x1cc) != '\0') {
    LotSpatialIndex_RebuildBuckets((int)this);
  }
  local_7c = *(int ********)((int)this + 500);
  puVar10 = *(undefined4 **)((int)this + 0x1f8);
  local_78 = puVar10;
  if (local_7c != (int *******)puVar10) {
    do {
      pvVar7 = *local_7c;
      if ((pvVar7 != (void *)0x0) && (*(char *)((int)pvVar7 + 0x4bc) == '\0')) {
        iVar15 = *(int *)((int)pvVar7 + 0x178);
        iVar13 = *(int *)((int)pvVar7 + 0x174);
        uVar6 = *(uint *)((int)pvVar7 + 0x48);
        uVar8 = *(undefined4 *)((int)pvVar7 + 0x4c);
        pvVar9 = *(void **)((int)this + 0x54);
        pfVar5 = (float *)Lot_GetLocalToWorldPose(pvVar7,(float *)&local_30);
        FUN_00c2b990(pvVar9,uVar6,uVar8,pfVar5,iVar13,iVar15);
        puVar10 = local_78;
        this = local_74;
      }
      local_7c = local_7c + 1;
    } while (local_7c != (int *******)puVar10);
  }
  uVar6 = FUN_00c29990(*(void **)((int)this + 0x54),destinationDb,(int)options);
  if ((uVar6 & 1) != 0) {
    pvVar7 = (void *)thunk_FUN_00835d40();
    local_2c = &local_2c;
    local_50 = (int *******)&local_50;
    local_18 = (undefined4 **)0x107a9f4;
    local_24 = (undefined4 *)0x0;
    local_20 = (code *)0x0;
    local_1c = (void **)0x0;
    local_3c = "World/WorldManager/DirtyLots";
    local_48 = (undefined4 *)0x0;
    local_44 = 0;
    local_40 = 0;
    local_4c = local_50;
    local_28 = local_2c;
    if (((pvVar7 != (void *)0x0) &&
        (uVar8 = FUN_0082bb40(pvVar7,(undefined4 *)((int)this + 0x48),&local_30,&local_54),
        (char)uVar8 != '\0')) && (*(char *)((int)pvVar7 + 0x97c) != '\0')) {
      FUN_00834500(pvVar7,(int)&local_30);
      FUN_00834b00(pvVar7,(int)this);
      FUN_007d7920(local_70,destinationDb,options);
      FUN_00828df0(pvVar7,local_70);
      FUN_00829640((int)pvVar7);
      StreamReader_ReleaseAuxiliary(local_70);
    }
    local_7c = local_4c;
    puVar10 = local_48;
    if ((int ********)local_4c != &local_50) {
      do {
        ppppppiVar2 = local_7c[4];
        if (ppppppiVar2 != (int ******)0x0) {
          pppppiVar16 = ppppppiVar2[0x13];
          pppppiVar14 = ppppppiVar2[0x12];
          pvVar9 = (void *)FUN_008295c0((int)pvVar7);
          uVar8 = LotRouting_HasAdmittedLotRecord(pvVar9,(uint)pppppiVar14,(uint)pppppiVar16);
          if ((char)uVar8 == '\0') {
            FUN_00834c50(pvVar7,(int *)ppppppiVar2,'\x01');
          }
          FUN_0082c6c0(pvVar7,(int)ppppppiVar2);
          FUN_0082b210(pvVar7,(uint)ppppppiVar2[0x12],(uint)ppppppiVar2[0x13]);
        }
        local_7c = (int *******)FUN_004e1030((int *)local_7c);
        puVar10 = local_48;
      } while ((int ********)local_7c != &local_50);
    }
    while (puVar10 != (undefined4 *)0x0) {
      FUN_008b19b0((undefined4 *)*puVar10);
      puVar3 = (undefined4 *)puVar10[1];
      Memory_FreeIfNonNull(puVar10);
      puVar10 = puVar3;
    }
    puVar10 = local_24;
    while (puVar10 != (undefined4 *)0x0) {
      FUN_008b19b0((undefined4 *)*puVar10);
      puVar3 = (undefined4 *)puVar10[1];
      Memory_FreeIfNonNull(puVar10);
      puVar10 = puVar3;
    }
    local_78 = options;
    local_74 = destinationDb;
    LOCK();
    local_2c = (undefined4 *******)0x0;
    UNLOCK();
    local_1c = &local_74;
    local_18 = &local_78;
    local_30 = &PTR_AddAtomicReference_0107a144;
    local_20 = FUN_00c60010;
    local_24 = this;
    RemoteMethodCall_DispatchOrQueueJob(&local_30,'\0');
  }
  pvVar7 = (void *)FUN_004afe80();
  if (pvVar7 != (void *)0x0) {
    FUN_00c64cb0(&local_54,destinationDb);
    local_78 = &local_54;
    local_74 = (void *)0x0;
    LOCK();
    local_2c = (undefined4 *******)0x0;
    UNLOCK();
    local_18 = &local_78;
    local_1c = &local_74;
    local_30 = &PTR_AddAtomicReference_0107a144;
    local_20 = (code *)&LAB_00c5fc40;
    local_24 = pvVar7;
    RemoteMethodCall_DispatchOrQueueJob(&local_30,'\0');
    FUN_00b305a0((int)local_4c,(uint)local_48);
    local_44 = 0;
    if ((undefined4 *)0x1 < local_48) {
      Memory_FreeIfNonNull(local_4c);
    }
  }
  if (*(void **)((int)this + 0x84) != destinationDb) {
    local_70[0] = &PTR_LAB_010798cc;
    FUN_00c22ad0(local_68,5);
    FUN_007d9130(*(int **)((int)this + 0x84),destinationDb);
  }
  piVar1 = (int *)((int)this + 0x48);
  *(undefined1 *)((int)this + 0x46) = 0;
  if ((int *)*piVar1 != piVar1) {
    allocation = (int *)*piVar1;
    do {
      piVar4 = (int *)*allocation;
      Memory_FreeIfNonNull(allocation);
      allocation = piVar4;
    } while (piVar4 != piVar1);
  }
  *piVar1 = (int)piVar1;
  *(int **)((int)this + 0x4c) = piVar1;
  if ((!bVar11) && (bVar12)) {
    World_ReleaseHeightmapRelatedData(this,false);
  }
  return (byte)uVar6 & 1;
}

