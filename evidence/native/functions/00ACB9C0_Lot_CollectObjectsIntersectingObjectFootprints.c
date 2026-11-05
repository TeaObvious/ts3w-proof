/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). thiscall lot.
   Requires lot+0x2d0 and object. Clears output length, requires footprint and level components and
   footprint component flag bit1. Iterates all-bit mask5 through 0x00945080. Transforms each
   nonempty source polygon to lot XZ, uses signed relative byte+5 plus base level, calls lot
   polygon-object collector. Deduplicates objects through GUID set; no self exclusion here (caller
   handles self).
   
   PC1.67 original static instructions. Rug overlapcaller uses real native footprint object query,
   categorymask5, enabled areas and per-area level handling (signed byte consumed atACBB1F); not
   only saved bytebounds/AABB. Shared host footprint polygon projection is a supported adapter, not
   complete native spatial-query equivalence. */

void __thiscall
Lot_CollectObjectsIntersectingObjectFootprints(void *this,void *param_1,int *param_2)

{
  undefined4 *puVar1;
  uint *puVar2;
  undefined4 *puVar3;
  byte bVar4;
  bool bVar5;
  void *this_00;
  undefined4 *puVar6;
  int iVar7;
  uint *puVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float *pfVar12;
  int local_94;
  void *local_90;
  float local_8c;
  float local_88;
  int local_84;
  uint local_80;
  uint local_7c;
  undefined1 local_78 [4];
  undefined4 *local_74;
  uint local_70;
  int local_6c;
  float local_68;
  undefined4 local_64;
  undefined4 local_60;
  char *local_5c;
  void *local_58;
  undefined4 local_54;
  undefined4 local_50;
  char *local_4c;
  void *local_48 [2];
  undefined4 local_40 [3];
  float local_34 [4];
  float local_24 [9];
  
  if ((*(int *)((int)this + 0x2d0) != 0) && (param_1 != (void *)0x0)) {
    param_2[1] = *param_2;
    local_68 = 1.0;
    local_64 = 0x40000000;
    local_5c = "Lot/GetObjectsIntersectingObjectFootprint/objSet";
    local_70 = 1;
    local_74 = &DAT_0114d900;
    local_6c = 0;
    local_60 = 0;
    local_48[0] = this;
    local_90 = Object_GetComponentByMask(param_1,DAT_011e9fa8);
    this_00 = Object_GetComponentByMask(param_1,DAT_011edf08);
    if ((local_90 != (void *)0x0) &&
       ((this_00 != (void *)0x0 &&
        (bVar4 = FootprintComponent_IsRegisteredBit((int)local_90), bVar4 != 0)))) {
      local_8c = -1.0;
      local_88 = -1.0;
      local_84 = 0;
      FUN_00c894e0(this_00,&local_8c,&local_88,&local_84);
      pfVar12 = local_24;
      local_80 = 0;
      local_94 = 0;
      fVar10 = local_8c;
      fVar11 = local_88;
      fVar9 = PlacementLocation_ReadYawWithRefresh(this_00);
      Footprint_BuildOwnerToLotXZMatrix(param_1,fVar9,fVar10,fVar11,pfVar12);
      local_58 = (void *)0x0;
      local_54 = 0;
      local_50 = 0;
      local_4c = "World/Lot/ObjectFootprintIntersectsPolygon/footprintPolyVerts";
      bVar5 = FootprintComponent_NextPolygonByRuntimeFlags(local_90,&local_80,5,&local_94,'\x01');
      if (bVar5) {
        do {
          if (*(int *)(local_94 + 0x30) != *(int *)(local_94 + 0x34)) {
            iVar7 = *(char *)(local_94 + 5) + local_84;
            Geometry_TransformPolygonXZByMatrix3((int *)(local_94 + 0x30),local_24,(int *)&local_58)
            ;
            Geometry_GetPolygonXZBounds((int *)&local_58,local_34);
            Lot_CollectObjectsIntersectingPolygon
                      (local_48[0],(int *)&local_58,iVar7,param_2,'\x01','\x01');
            puVar2 = (uint *)param_2[1];
            for (puVar8 = (uint *)*param_2; puVar8 != puVar2; puVar8 = puVar8 + 1) {
              local_7c = local_7c & 0xffffff00;
              FUN_006b5bc0(local_78,local_40,puVar8);
            }
          }
          bVar5 = FootprintComponent_NextPolygonByRuntimeFlags
                            (local_90,&local_80,5,&local_94,'\x01');
        } while (bVar5);
      }
      if (local_58 != (void *)0x0) {
        Memory_FreeIfNonNull(local_58);
      }
    }
    if (param_2[1] - *param_2 >> 2 != local_6c) {
      param_2[1] = *param_2;
      puVar3 = (undefined4 *)local_74[local_70];
      puVar1 = local_74 + local_70;
      puVar6 = PickCandidateMap_Begin(local_78,local_48);
      FUN_00ac64a0(&local_7c,(undefined4 *)*puVar6,puVar6[1],puVar3,puVar1,param_2);
    }
    FUN_00ae0410((int)local_74,local_70);
    local_6c = 0;
    if (1 < local_70) {
      Memory_FreeIfNonNull(local_74);
    }
  }
  return;
}

