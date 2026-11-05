/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECX manager plus1stackDWORD/RET4. First instruction-level
   underside lookup uses signed byte(roomInfo.level+1); inferred child prototype can hide stack
   args. Selects ceiling/exteriorceiling by lowInt16 roomID, binds LightMap and
   ceilingLightmapScale. Passes contour counts and XY to B5B5B0, emits vertices at record height,
   reverses each index triple0,2,1. Unless manager byte60 set, display group min(level+1, signed
   owner liveTop); byte60 lane uses level. Scene model/material/native reference cleanup remains
   native; not proof GPU completion. */

void __thiscall CeilingRenderer_EmitRoomModel(void *this,undefined4 *param_1)

{
  char cVar1;
  float *pfVar2;
  undefined4 *puVar3;
  undefined4 *allocation;
  float *pfVar4;
  char *pcVar5;
  undefined4 uVar6;
  int iVar7;
  void *pvVar8;
  int *piVar9;
  int iVar10;
  void *this_00;
  uint uVar11;
  float *pfVar12;
  int *piVar13;
  char *pcVar14;
  float *pfStack_484;
  char local_47e;
  char cStack_47d;
  uint local_47c;
  void *pvStack_478;
  int *piStack_474;
  int *piStack_470;
  char *pcStack_46c;
  void *local_468;
  int *piStack_464;
  void *local_460;
  float *pfStack_45c;
  float *pfStack_458;
  float *pfStack_454;
  char *pcStack_450;
  int *local_44c;
  uint uStack_448;
  int iStack_444;
  int *piStack_440;
  float fStack_43c;
  float fStack_438;
  float fStack_434;
  float fStack_430;
  float fStack_42c;
  float fStack_428;
  int *piStack_424;
  int *piStack_420;
  undefined4 ******ppppppuStack_418;
  undefined4 ******ppppppuStack_414;
  undefined4 *puStack_410;
  undefined4 uStack_40c;
  undefined4 uStack_408;
  char *pcStack_404;
  void *pvStack_400;
  undefined4 uStack_3fc;
  undefined4 uStack_3f8;
  char *pcStack_3f4;
  float fStack_3f0;
  float fStack_3ec;
  int local_3e0 [8];
  float afStack_3c0 [4];
  float fStack_3b0;
  float fStack_3ac;
  float fStack_3a8;
  float fStack_3a4;
  float fStack_3a0;
  float fStack_39c;
  float fStack_398;
  float fStack_394;
  undefined4 local_390 [184];
  undefined4 auStack_b0 [43];
  
  cVar1 = *(char *)(param_1 + 6);
  local_468 = this;
  pcVar5 = (char *)FUN_00d73250(*(int *)((int)this + 100),*(int *)((int)this + 0x68),&local_47e);
  pcVar14 = *(char **)((int)this + 0x68);
  if (((pcVar5 == pcVar14) || ((char)(cVar1 + '\x01') < *pcVar5)) || (pcVar5 == pcVar5 + 1)) {
    pcVar5 = pcVar14;
  }
  if (pcVar5 == pcVar14) {
    FUN_006d3b70(local_390,0);
    local_460 = (void *)FUN_00adad60(*(void **)(*(int *)((int)this + 0x18) + 0x23c),param_1[6]);
    FUN_006d6370(local_390,1,&local_47e);
    FUN_006d7330((int)local_390);
    FUN_006d4360(local_390,0,2,0);
    FUN_006d4360(local_390,2,1,0);
    FUN_006d5fe0((int)local_390);
    if (*(short *)(param_1 + 5) == 0) {
      pcVar14 = "exteriorceiling";
    }
    else {
      pcVar14 = "ceiling";
    }
    local_47c = HashLowercasedCStringFNV1(pcVar14);
    FUN_00799680(local_3e0);
    uVar6 = FUN_007d0020((wint_t *)L"LightMap");
    uVar11 = 0;
    iVar7 = FUN_006a6620(local_460,param_1[5]);
    if (iVar7 != 0) {
      uVar11 = FUN_0069ed00(iVar7);
    }
    local_44c = (int *)FUN_006a45d0(local_460,uVar11);
    if (local_44c != (int *)0x0) {
      (**(code **)(*local_44c + 4))();
    }
    FUN_00799ab0(local_3e0,uVar6);
    pvVar8 = local_460;
    FUN_006a4e10(local_460,afStack_3c0,uVar11);
    FUN_00799ad0(local_3e0,"ceilingLightmapScale",afStack_3c0,4);
    FUN_006a4e10(pvVar8,&fStack_3f0,2);
    FUN_00a4da70(local_468,local_3e0);
    FUN_006d44c0(local_390,local_47c,local_3e0);
    piStack_464 = (int *)0x3;
    FUN_006d73b0(local_390,&piStack_464,&cStack_47d,&local_47e,0,0);
    piVar9 = (int *)*param_1;
    piStack_420 = (int *)param_1[1];
    local_47c = 0;
    piStack_464 = piVar9;
    if (piVar9 != piStack_420) {
      do {
        piStack_464 = piVar9;
        FUN_00b577f0(auStack_b0);
        iStack_444 = (piVar9[1] - *piVar9) / 0xc;
        pvStack_400 = (void *)0x0;
        uStack_3fc = 0;
        uStack_3f8 = 0;
        pcStack_3f4 = "LotRenderer/CeilingRenderManager/triIndices";
        pvStack_478 = (void *)0x0;
        piStack_474 = (int *)0x0;
        piStack_470 = (int *)0x0;
        pcStack_46c = "LotRenderer/CeilingRenderManager/cntrArray";
        pfStack_45c = (float *)0x0;
        pfStack_458 = (float *)0x0;
        pfStack_454 = (float *)0x0;
        pcStack_450 = "LotRenderer/CeilingRenderManager/vertArray";
        FUN_00982420(&pvStack_478,(undefined4 *)0x0,&iStack_444);
        pfVar2 = (float *)piVar9[1];
        for (pfVar12 = (float *)*piVar9; pfVar12 != pfVar2; pfVar12 = pfVar12 + 3) {
          fStack_434 = *pfVar12;
          fStack_430 = pfVar12[1];
          if (pfStack_458 < pfStack_454) {
            pfVar4 = pfStack_458 + 2;
            if (pfStack_458 != (float *)0x0) {
              *pfStack_458 = fStack_434;
              pfStack_458[1] = fStack_430;
            }
          }
          else {
            FUN_0040c540(&pfStack_45c,pfStack_458,&fStack_434);
            pfVar4 = pfStack_458;
          }
          pfStack_458 = pfVar4;
        }
        piStack_424 = (int *)piVar9[5];
        piVar13 = (int *)piVar9[4];
        if (piVar13 != piStack_424) {
          ppppppuStack_418 = &ppppppuStack_418;
          pcStack_404 = "World/CeilingRenderManager";
          puStack_410 = (undefined4 *)0x0;
          uStack_40c = 0;
          uStack_408 = 0;
          ppppppuStack_414 = ppppppuStack_418;
          allocation = puStack_410;
          if (piVar13 != piStack_424) {
            do {
              iStack_444 = (piVar13[1] - *piVar13) / 0xc;
              if (piStack_474 < piStack_470) {
                piVar9 = piStack_474 + 1;
                if (piStack_474 != (int *)0x0) {
                  *piStack_474 = iStack_444;
                }
              }
              else {
                FUN_00982420(&pvStack_478,piStack_474,&iStack_444);
                piVar9 = piStack_474;
              }
              piStack_474 = piVar9;
              pfVar2 = (float *)piVar13[1];
              for (pfVar12 = (float *)*piVar13; pfVar12 != pfVar2; pfVar12 = pfVar12 + 3) {
                fStack_42c = *pfVar12;
                fStack_428 = pfVar12[1];
                if (pfStack_458 < pfStack_454) {
                  pfVar4 = pfStack_458 + 2;
                  if (pfStack_458 != (float *)0x0) {
                    *pfStack_458 = fStack_42c;
                    pfStack_458[1] = fStack_428;
                  }
                }
                else {
                  FUN_0040c540(&pfStack_45c,pfStack_458,&fStack_42c);
                  pfVar4 = pfStack_458;
                }
                pfStack_458 = pfVar4;
              }
              piVar13 = piVar13 + 4;
              allocation = puStack_410;
              piVar9 = piStack_464;
            } while (piVar13 != piStack_424);
          }
          while (allocation != (undefined4 *)0x0) {
            FUN_008b19b0((undefined4 *)*allocation);
            puVar3 = (undefined4 *)allocation[1];
            Memory_FreeIfNonNull(allocation);
            allocation = puVar3;
          }
        }
        uStack_448 = 0;
        Polygon_TriangulateContourSet
                  (auStack_b0,(int *)&pvStack_478,(int *)&pfStack_45c,(int *)&pvStack_400,
                   &uStack_448);
        pfVar2 = pfStack_458;
        for (pfVar12 = pfStack_45c; pfVar12 != pfVar2; pfVar12 = pfVar12 + 2) {
          fStack_438 = pfVar12[1];
          fStack_43c = *pfVar12;
          fStack_3a0 = fStack_3ec * fStack_438;
          fStack_39c = fStack_3ec * fStack_438;
          fStack_398 = fStack_3ec * fStack_438;
          fStack_394 = fStack_3ec * fStack_438;
          fStack_3b0 = fStack_3f0 * fStack_43c;
          fStack_3ac = fStack_3f0 * fStack_43c;
          fStack_3a8 = fStack_3f0 * fStack_43c;
          fStack_3a4 = fStack_3f0 * fStack_43c;
          FUN_006d5a30(local_390,0,fStack_3b0,fStack_3a0,0,0);
          FUN_006d5b50(local_390,fStack_43c,param_1[4],fStack_438);
        }
        uVar11 = 0;
        if (uStack_448 != 0) {
          iVar7 = 0;
          do {
            FUN_006d48c0(local_390,*(int *)(iVar7 + (int)pvStack_400) + local_47c,
                         *(int *)(iVar7 + 8 + (int)pvStack_400) + local_47c,
                         *(int *)(iVar7 + 4 + (int)pvStack_400) + local_47c);
            uVar11 = uVar11 + 1;
            iVar7 = iVar7 + 0xc;
          } while (uVar11 < uStack_448);
        }
        local_47c = local_47c + ((int)pfStack_458 - (int)pfStack_45c >> 3);
        if (pfStack_45c != (float *)0x0) {
          Memory_FreeIfNonNull(pfStack_45c);
        }
        if (pvStack_478 != (void *)0x0) {
          Memory_FreeIfNonNull(pvStack_478);
        }
        if (pvStack_400 != (void *)0x0) {
          Memory_FreeIfNonNull(pvStack_400);
        }
        FUN_00b578a0((int)auStack_b0);
        piVar9 = piVar9 + 8;
        piStack_464 = piVar9;
      } while (piVar9 != piStack_420);
    }
    piVar9 = (int *)0x0;
    if (*(short *)(param_1 + 5) != 0) {
      FUN_006a5370(local_460,param_1[5],local_390,param_1[4]);
    }
    FUN_006d1a70((int)local_390);
    FUN_006d7320((int)local_390);
    piStack_440 = (int *)0x0;
    uVar6 = FUN_006d4950(local_390,&piStack_440);
    if ((char)uVar6 != '\0') {
      pvVar8 = (void *)FUN_004e4520(0x2f0,0x10,0,"LotRenderer/CeilingRenderManager/SceneModel",0);
      if ((pvVar8 != (void *)0x0) && (piVar9 = FUN_00a47bc0(pvVar8,0,0), piVar9 != (int *)0x0)) {
        (**(code **)*piVar9)();
      }
      FUN_00a47c00(piVar9,*(undefined4 *)((int)local_468 + 0x18),*(undefined2 *)(param_1 + 5),
                   piStack_440,(int *)0x0);
      pvVar8 = local_468;
      iVar7 = *piVar9;
      iVar10 = FUN_00adf630(*(int *)((int)local_468 + 0x18));
      (**(code **)(iVar7 + 0x20))(iVar10);
      FUN_006f46d0(piVar9,'\0');
      (**(code **)(*piVar9 + 0x34))(0x7ffff080,0x8000080);
      this_00 = LoadPump_ReadFrameServiceGlobal();
      iVar7 = param_1[6];
      if (*(char *)((int)pvVar8 + 0x60) == '\0') {
        iVar10 = *(int *)(*(int *)((int)pvVar8 + 0x18) + 0x6c);
        iVar7 = param_1[6] + 1;
        if (iVar10 < iVar7) {
          iVar7 = iVar10;
        }
      }
      pvVar8 = (void *)(*(code *)**(undefined4 **)(*(int *)((int)pvVar8 + 0x18) + 8))(iVar7);
      FUN_006e82e0(this_00,piVar9,pvVar8);
      pfStack_484 = (float *)0x0;
      (**(code **)*piVar9)();
      pfVar12 = pfStack_45c;
      iVar7 = param_1[6];
      if (pfStack_45c != (float *)0x0) {
        (**(code **)((int)*pfStack_45c + 4))();
        pfStack_484 = pfVar12;
      }
      local_47c = param_1[5];
      piVar13 = *(int **)((int)pvStack_478 + 0x20);
      if (piVar13 < *(int **)((int)pvStack_478 + 0x24)) {
        *(int **)((int)pvStack_478 + 0x20) = piVar13 + 4;
        if (piVar13 != (int *)0x0) {
          *piVar13 = (int)piVar9;
          (**(code **)*piVar9)();
          piVar13[1] = (int)pfStack_484;
          if (pfStack_484 != (float *)0x0) {
            (**(code **)((int)*pfStack_484 + 4))();
          }
          piVar13[2] = iVar7;
          piVar13[3] = local_47c;
        }
      }
      else {
        FUN_00a4e2f0((void *)((int)pvStack_478 + 0x1c),piVar13,(int *)&stack0xfffffb78);
      }
      if (pfStack_484 != (float *)0x0) {
        (**(code **)((int)*pfStack_484 + 8))();
      }
      if (piVar9 != (int *)0x0) {
        (**(code **)(*piVar9 + 4))();
      }
      (**(code **)(*piVar9 + 4))();
    }
    if (piStack_440 != (int *)0x0) {
      (**(code **)(*piStack_440 + 4))();
    }
    if (local_44c != (int *)0x0) {
      (**(code **)(*local_44c + 8))();
    }
    FUN_007996b0(local_3e0);
    FUN_006d3dd0(local_390);
  }
  return;
}

