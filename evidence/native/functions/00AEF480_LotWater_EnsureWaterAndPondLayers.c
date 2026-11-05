/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). Requires existing
   floor layer at owner+8. Lazily creates absent water+C8, pond flags+CC, visited+D0 and face
   flags+E4. New water dimensions include both boundary vertices; AEA370 supplies floor-minus1
   defaults. Pond flags compare water strictly above floor, rejecting unordered values. Existing
   visited/face storage is zero-initialized only on allocation; plain RET. No current cache
   invalidation or error policy inferred. Original managed LotPond
   constructor/startup/ID/corner/BuildBuy lifetime remains its authority. All IDs, physical ABI,
   prototypes/types/body/bytes/Listing/flow/analysis remain unchanged; current resource/cache policy
   is preserved. */

void __fastcall LotWater_EnsureWaterAndPondLayers(int param_1)

{
  float *pfVar1;
  float fVar2;
  int iVar3;
  void *pvVar4;
  byte bVar5;
  undefined4 *puVar6;
  int iVar7;
  uint uVar8;
  uint uVar9;
  byte *pbVar10;
  int iVar11;
  bool bVar12;
  int local_8;
  
  if (*(int *)(param_1 + 8) != 0) {
    if (*(int *)(param_1 + 200) == 0) {
      puVar6 = (undefined4 *)FUN_004e4500(0x1c,"Lot/LotTerrain/WaterElevationLayer",0);
      if (puVar6 == (undefined4 *)0x0) {
        puVar6 = (undefined4 *)0x0;
      }
      else {
        *puVar6 = &PTR_FUN_0105fb94;
        puVar6[1] = 0;
        puVar6[2] = 0;
        puVar6[3] = 0;
        puVar6[4] = 0;
        puVar6[5] = 0;
        puVar6[6] = "Lot/LotTerrain/WaterElevationLayer";
      }
      iVar7 = *(int *)(param_1 + 0xc) + 1;
      iVar11 = *(int *)(param_1 + 0x10) + 1;
      *(undefined4 **)(param_1 + 200) = puVar6;
      FUN_0056ddd0(puVar6 + 3,iVar7 * iVar11);
      puVar6[1] = iVar7;
      puVar6[2] = iVar11;
      LotWater_ResetHeightsBelowFloor(param_1);
    }
    if (*(int *)(param_1 + 0xcc) == 0) {
      puVar6 = (undefined4 *)FUN_004e4500(0x1c,"Lot/LotTerrain/PondPartFlagLayer",0);
      if (puVar6 == (undefined4 *)0x0) {
        puVar6 = (undefined4 *)0x0;
      }
      else {
        *puVar6 = &PTR_FUN_0105fb94;
        puVar6[1] = 0;
        puVar6[2] = 0;
        puVar6[3] = 0;
        puVar6[4] = 0;
        puVar6[5] = 0;
        puVar6[6] = "Lot/LotTerrain/PondPartFlagLayer";
      }
      *(undefined4 **)(param_1 + 0xcc) = puVar6;
      FUN_00a437b0(puVar6,*(int *)(param_1 + 0xc) + 1,*(int *)(param_1 + 0x10) + 1);
      local_8 = 0;
      if (-1 < *(int *)(param_1 + 0xc)) {
        do {
          iVar7 = 0;
          if (-1 < *(int *)(param_1 + 0x10)) {
            do {
              iVar11 = *(int *)(param_1 + 8);
              iVar3 = *(int *)(iVar11 + 0x24);
              fVar2 = *(float *)(*(int *)(*(int *)(param_1 + 200) + 0xc) +
                                (*(int *)(*(int *)(param_1 + 200) + 8) * local_8 + iVar7) * 4);
              pfVar1 = (float *)(*(int *)(iVar3 + 0x10) +
                                (((*(int *)(iVar11 + 0x18) - *(int *)(iVar11 + 0x10)) *
                                  *(int *)(iVar3 + 4) + local_8) * *(int *)(iVar3 + 8) + iVar7) * 4)
              ;
              iVar11 = *(int *)(*(int *)(param_1 + 0xcc) + 8) * local_8 + iVar7;
              bVar5 = '\x01' << ((byte)iVar11 & 7);
              pbVar10 = (byte *)((iVar11 >> 3) + *(int *)(*(int *)(param_1 + 0xcc) + 0xc));
              if (fVar2 < *pfVar1 || fVar2 == *pfVar1) {
                *pbVar10 = *pbVar10 & ~bVar5;
              }
              else {
                *pbVar10 = *pbVar10 | bVar5;
              }
              iVar7 = iVar7 + 1;
            } while (iVar7 <= *(int *)(param_1 + 0x10));
          }
          local_8 = local_8 + 1;
        } while (local_8 <= *(int *)(param_1 + 0xc));
      }
    }
    if (*(int *)(param_1 + 0xd0) == 0) {
      puVar6 = (undefined4 *)FUN_004e4500(0x1c,"Lot/LotTerrain/VisitedFlagLayer",0);
      if (puVar6 == (undefined4 *)0x0) {
        puVar6 = (undefined4 *)0x0;
      }
      else {
        *puVar6 = &PTR_FUN_0105fb94;
        puVar6[1] = 0;
        puVar6[2] = 0;
        puVar6[3] = 0;
        puVar6[4] = 0;
        puVar6[5] = 0;
        puVar6[6] = "Lot/LotTerrain/VisitedFlagLayer";
      }
      iVar7 = *(int *)(param_1 + 0xc) + 1;
      iVar11 = *(int *)(param_1 + 0x10) + 1;
      *(undefined4 **)(param_1 + 0xd0) = puVar6;
      puVar6[1] = iVar7;
      uVar8 = iVar7 * iVar11;
      puVar6[2] = iVar11;
      uVar9 = (int)(uVar8 + ((int)uVar8 >> 0x1f & 7U)) >> 3;
      uVar8 = uVar8 & 0x80000007;
      bVar12 = uVar8 == 0;
      if ((int)uVar8 < 0) {
        bVar12 = (uVar8 - 1 | 0xfffffff8) == 0xffffffff;
      }
      if (!bVar12) {
        uVar9 = uVar9 + 1;
      }
      FUN_00412e20(puVar6 + 3,uVar9);
      pvVar4 = *(void **)(*(int *)(param_1 + 0xd0) + 0xc);
      memset(pvVar4,0,*(int *)(*(int *)(param_1 + 0xd0) + 0x10) - (int)pvVar4);
    }
    if (*(int *)(param_1 + 0xe4) == 0) {
      puVar6 = (undefined4 *)FUN_004e4500(0x1c,"Lot/LotTerrain/FaceFlagLayer",0);
      if (puVar6 == (undefined4 *)0x0) {
        puVar6 = (undefined4 *)0x0;
      }
      else {
        *puVar6 = &PTR_FUN_0105fb94;
        puVar6[1] = 0;
        puVar6[2] = 0;
        puVar6[3] = 0;
        puVar6[4] = 0;
        puVar6[5] = 0;
        puVar6[6] = "Lot/LotTerrain/FaceFlagLayer";
      }
      iVar7 = *(int *)(param_1 + 0xc);
      iVar11 = *(int *)(param_1 + 0x10) * 4;
      *(undefined4 **)(param_1 + 0xe4) = puVar6;
      FUN_00412e20(puVar6 + 3,iVar7 * iVar11);
      puVar6[1] = iVar7;
      puVar6[2] = iVar11;
      pvVar4 = *(void **)(*(int *)(param_1 + 0xe4) + 0xc);
      memset(pvVar4,0,*(int *)(*(int *)(param_1 + 0xe4) + 0x10) - (int)pvVar4);
    }
  }
  return;
}

