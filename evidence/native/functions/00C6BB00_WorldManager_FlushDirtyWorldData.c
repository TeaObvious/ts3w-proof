/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  int ******ppppppiVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  float *pfVar4;
  uint uVar5;
  void *pvVar6;
  undefined4 uVar7;
  void *pvVar8;
  undefined4 *puVar9;
  bool bVar10;
  bool bVar11;
  int iVar12;
  int *****pppppiVar13;
  int iVar14;
  int *****pppppiVar15;
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
  
  if (*(char *)((int)this + 0x46) != '\0') {
    if (*(int *)((int)this + 0x54) == 0) {
      bVar10 = false;
    }
    else {
      bVar10 = *(int *)(*(int *)((int)this + 0x54) + 8) != 0;
    }
    bVar11 = false;
    local_74 = this;
    if (!bVar10) {
      World_EnsureHeightmapRelatedData(this,false);
      if (*(int *)((int)this + 0x54) == 0) {
        bVar11 = false;
      }
      else {
        bVar11 = *(int *)(*(int *)((int)this + 0x54) + 8) != 0;
      }
    }
    if (*(char *)((int)this + 0x1cc) != '\0') {
      LotSpatialIndex_RebuildBuckets((int)this);
    }
    puVar3 = *(undefined4 **)((int)this + 500);
    puVar9 = *(undefined4 **)((int)this + 0x1f8);
    local_78 = puVar9;
    if (puVar3 != puVar9) {
      do {
        pvVar6 = (void *)*puVar3;
        if ((pvVar6 != (void *)0x0) && (*(char *)((int)pvVar6 + 0x4bc) == '\0')) {
          iVar14 = *(int *)((int)pvVar6 + 0x178);
          iVar12 = *(int *)((int)pvVar6 + 0x174);
          uVar5 = *(uint *)((int)pvVar6 + 0x48);
          uVar7 = *(undefined4 *)((int)pvVar6 + 0x4c);
          pvVar8 = *(void **)((int)this + 0x54);
          pfVar4 = (float *)FUN_00ab1360(pvVar6,(float *)&local_30);
          FUN_00c2b990(pvVar8,uVar5,uVar7,pfVar4,iVar12,iVar14);
          puVar9 = local_78;
          this = local_74;
        }
        puVar3 = puVar3 + 1;
      } while (puVar3 != puVar9);
    }
    uVar5 = FUN_00c29990(*(void **)((int)this + 0x54),destinationDb,(int)options);
    if ((uVar5 & 1) != 0) {
      pvVar6 = (void *)thunk_FUN_00835d40();
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
      if (((pvVar6 != (void *)0x0) &&
          (uVar7 = FUN_0082bb40(pvVar6,(undefined4 *)((int)this + 0x48),&local_30,&local_54),
          (char)uVar7 != '\0')) && (*(char *)((int)pvVar6 + 0x97c) != '\0')) {
        FUN_00834500(pvVar6,(int)&local_30);
        FUN_00834b00(pvVar6,(int)this);
        FUN_007d7920(local_70,destinationDb,options);
        FUN_00828df0(pvVar6,local_70);
        FUN_00829640((int)pvVar6);
        FUN_007d7990((int)local_70);
      }
      local_7c = local_4c;
      puVar3 = local_48;
      if ((int ********)local_4c != &local_50) {
        do {
          ppppppiVar1 = local_7c[4];
          if (ppppppiVar1 != (int ******)0x0) {
            pppppiVar15 = ppppppiVar1[0x13];
            pppppiVar13 = ppppppiVar1[0x12];
            pvVar8 = (void *)FUN_008295c0((int)pvVar6);
            uVar7 = FUN_00629360(pvVar8,(uint)pppppiVar13,(uint)pppppiVar15);
            if ((char)uVar7 == '\0') {
              FUN_00834c50(pvVar6,(int *)ppppppiVar1,'\x01');
            }
            FUN_0082c6c0(pvVar6,(int)ppppppiVar1);
            FUN_0082b210(pvVar6,(uint)ppppppiVar1[0x12],(uint)ppppppiVar1[0x13]);
          }
          local_7c = (int *******)FUN_004e1030((int *)local_7c);
          puVar3 = local_48;
        } while ((int ********)local_7c != &local_50);
      }
      while (puVar9 = local_24, puVar3 != (undefined4 *)0x0) {
        FUN_008b19b0((undefined4 *)*puVar3);
        puVar9 = (undefined4 *)puVar3[1];
        Memory_FreeIfNonNull(puVar3);
        puVar3 = puVar9;
      }
      while (puVar9 != (undefined4 *)0x0) {
        FUN_008b19b0((undefined4 *)*puVar9);
        puVar3 = (undefined4 *)puVar9[1];
        Memory_FreeIfNonNull(puVar9);
        puVar9 = puVar3;
      }
      local_78 = options;
      LOCK();
      local_2c = (undefined4 *******)0x0;
      UNLOCK();
      local_1c = &local_74;
      local_18 = &local_78;
      local_30 = &PTR_FUN_0107a144;
      local_20 = FUN_00c60010;
      local_74 = destinationDb;
      local_24 = this;
      FUN_007d9b10(&local_30,'\0');
    }
    pvVar6 = (void *)FUN_004afe80();
    if (pvVar6 != (void *)0x0) {
      FUN_00c64cb0(&local_54,destinationDb);
      local_78 = &local_54;
      local_74 = (void *)0x0;
      LOCK();
      local_2c = (undefined4 *******)0x0;
      UNLOCK();
      local_18 = &local_78;
      local_1c = &local_74;
      local_30 = &PTR_FUN_0107a144;
      local_20 = (code *)&LAB_00c5fc40;
      local_24 = pvVar6;
      FUN_007d9b10(&local_30,'\0');
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
    puVar3 = (undefined4 *)((int)this + 0x48);
    *(undefined1 *)((int)this + 0x46) = 0;
    puVar9 = (undefined4 *)*puVar3;
    while (puVar9 != puVar3) {
      puVar2 = (undefined4 *)*puVar9;
      Memory_FreeIfNonNull(puVar9);
      puVar9 = puVar2;
    }
    *puVar3 = puVar3;
    *(undefined4 **)((int)this + 0x4c) = puVar3;
    if ((!bVar10) && (bVar11)) {
      World_ReleaseHeightmapRelatedData(this,false);
    }
    return (byte)uVar5 & 1;
  }
  return '\x01';
}

