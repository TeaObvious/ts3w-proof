/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Loads floor manager content, reads its source height layer, then calls
   A8BD10 with the placement header. The header supplies vertex transform +0x64 and float terrain
   offset +0x34. */

undefined1 __thiscall
LotImport_LoadFloorManager(void *this,void *param_1,float param_2,uint *placementHeader)

{
  uint uVar1;
  void *this_00;
  int *piVar2;
  bool bVar3;
  char cVar4;
  int iVar5;
  undefined4 uVar6;
  float fVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  uint *placementHeader_00;
  int iVar11;
  uint *puVar12;
  float fVar13;
  int iVar14;
  float10 fVar15;
  char *local_3c;
  uint local_38;
  uint local_34;
  float local_30;
  int local_2c;
  int local_28;
  int local_24;
  uint *local_20;
  uint *local_1c;
  uint local_10;
  uint local_c;
  undefined4 local_8;
  float local_4;
  
  FUN_00a8d0c0((int)this);
  placementHeader_00 = placementHeader;
  *(uint *)((int)this + 0x10) = placementHeader[9];
  uVar1 = placementHeader[10];
  *(uint *)((int)this + 0x14) = uVar1;
  local_10 = *placementHeader;
  local_c = placementHeader[1];
  iVar5 = (uVar1 - *(int *)((int)this + 0x10)) + 1;
  local_8 = 0x5e4faf7;
  local_4 = param_2;
  bVar3 = ResourceStreamContext_OpenRead(param_1,&local_10,0);
  if (bVar3) {
    bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)((int)this + 0x1c),
                              *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar3);
    bVar3 = Stream_ReadBoolean(*(void **)((int)param_1 + 8),(void *)((int)this + 0x114));
    StreamReader_AccumulateStatus(param_1,bVar3);
    ResourceStreamContext_Close(param_1);
  }
  if (*(char *)((int)param_1 + 0x14) != '\0') {
    local_34 = 0;
    local_38 = 0;
    param_2 = 0.0;
    cVar4 = FUN_00c6da60(*(void **)((int)this + 0x24),param_1,0x93d6d4,*placementHeader_00,
                         placementHeader_00[1],placementHeader_00[9],placementHeader_00[10],
                         &local_34,&local_38,(int *)&param_2);
    fVar7 = param_2;
    if (cVar4 != '\0') {
      local_3c = "Lot/FloorManager/HeightContents";
      local_30 = param_2;
      FUN_00d4c330(&local_20,(int)param_2,&local_3c);
      fVar13 = fVar7;
      puVar12 = local_20;
      if (fVar7 != 0.0) {
        for (; fVar13 = local_30, fVar7 != 0.0; fVar7 = (float)((int)fVar7 + -1)) {
          *puVar12 = 0;
          puVar12 = puVar12 + 1;
        }
      }
      local_1c = local_20 + (int)fVar13;
      uVar6 = Stream_ReadUInt32ArrayByByteOrder
                        (*(int **)((int)param_1 + 8),local_20,(uint)param_2,
                         *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,(byte)uVar6);
      ResourceStreamContext_Close(param_1);
      local_24 = *(int *)(*(int *)((int)this + 0x24) + 4);
      iVar9 = *(int *)(*(int *)((int)this + 0x24) + 8);
      iVar8 = -*(int *)((int)this + 0x10);
      local_2c = iVar8;
      local_28 = iVar9;
      if ((0 < iVar5) && (iVar10 = 0, placementHeader_00 = placementHeader, 0 < local_24)) {
        do {
          iVar14 = 0;
          if (0 < iVar9) {
            do {
              iVar11 = *(int *)((int)this + 0x24);
              local_30 = *(float *)(*(int *)(iVar11 + 0x10) +
                                   ((*(int *)(iVar11 + 4) * iVar8 + iVar10) * *(int *)(iVar11 + 8) +
                                   iVar14) * 4);
              iVar11 = 0;
              if (0 < iVar5) {
                local_3c = (char *)-iVar8;
                do {
                  if (iVar11 != iVar8) {
                    fVar15 = FUN_00ab02d0();
                    iVar9 = *(int *)((int)this + 0x24);
                    *(float *)(*(int *)(iVar9 + 0x10) +
                              ((*(int *)(iVar9 + 4) * iVar11 + iVar10) * *(int *)(iVar9 + 8) +
                              iVar14) * 4) =
                         (float)(fVar15 * (float10)(int)local_3c + (float10)local_30);
                    iVar8 = local_2c;
                  }
                  local_3c = local_3c + 1;
                  iVar11 = iVar11 + 1;
                  iVar9 = local_28;
                } while (iVar11 < iVar5);
              }
              iVar14 = iVar14 + 1;
            } while (iVar14 < iVar9);
          }
          iVar10 = iVar10 + 1;
          placementHeader_00 = placementHeader;
        } while (iVar10 < local_24);
      }
      LotImport_ApplyFloorHeightTransform
                (this,*(int *)((int)this + 0x24),(int *)&local_20,(int)placementHeader_00,local_34,
                 local_38);
      *(undefined1 *)((int)this + 0x220) = 1;
      if (local_20 != (uint *)0x0) {
        Memory_FreeIfNonNull(local_20);
      }
    }
  }
  this_00 = *(void **)((int)this + 0xd0);
  if ((this_00 != (void *)0x0) && (*(int *)((int)this_00 + 0xc) < iVar5)) {
    FUN_00a95850(this_00,*(int *)((int)this + 8),*(int *)((int)this + 0xc),iVar5);
    placementHeader = (uint *)((uint)placementHeader & 0xffffff00);
    FUN_00a94e90(*(void **)((int)this + 0xd0),(byte *)&placementHeader);
  }
  *(undefined4 *)((int)this + 0x108) = *(undefined4 *)((int)this + 0x104);
  placementHeader = *(uint **)((int)this + 0x10);
  if ((int)placementHeader <= *(int *)((int)this + 0x14)) {
    do {
      piVar2 = *(int **)((int)this + 0x108);
      if (piVar2 < *(int **)((int)this + 0x10c)) {
        *(int **)((int)this + 0x108) = piVar2 + 1;
        if (piVar2 != (int *)0x0) {
          *piVar2 = (int)placementHeader;
        }
      }
      else {
        FUN_00982420((void *)((int)this + 0x104),piVar2,&placementHeader);
      }
      placementHeader = (uint *)((int)placementHeader + 1);
    } while ((int)placementHeader <= *(int *)((int)this + 0x14));
  }
  return *(undefined1 *)((int)param_1 + 0x14);
}

