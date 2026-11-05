/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Collects lot objects on a tile. With polygon testing enabled, builds tile
   polygons and filters registered tile members through B0E870 before appending them. Snow blocking
   calls this with mask4 and all four tile parts. Decompiler char-pointer tile parameter represents
   compact tile coordinates, not a string.
   
   PC1.67 original static instructions. ECXlot+8stackDWORDs/RET20hex, void. Compact signed
   x/z/level, outvector cleared first; reject outsidephysical lot/liverange. Optionalpolygon test
   builds selected quarterpolygons andfiltersregisteredtilemembers with B0E870/area mask
   beforeappend. Snowcaller uses allfourquarterbits0F andareaMask4. Physical partmask is a
   DWORDvalue, not a pointer to0F. Native member/footprint/visibility ownership cannot be replaced
   by pivotAABB orcachedcatalogflag. */

void __thiscall
LotQuery_CollectObjectsOnTile
          (void *this,char *param_1,undefined4 *param_2,char param_3,char param_4,char param_5,
          uint param_6,undefined4 param_7,uint param_8)

{
  int *piVar1;
  int *allocation;
  char cVar2;
  bool bVar3;
  void *pvVar4;
  int *piVar5;
  undefined *component;
  uint uVar6;
  int iVar7;
  undefined4 *puVar8;
  int *piVar9;
  uint uVar10;
  int local_4c;
  undefined2 local_48;
  char local_46;
  byte local_45;
  void *local_44;
  int *local_40;
  int *local_3c;
  int *local_38;
  char *local_34;
  void *local_30;
  undefined4 *local_2c;
  undefined4 *local_28;
  char *local_24;
  void *local_20;
  undefined4 local_1c;
  undefined4 local_18;
  char *local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  param_2[1] = *param_2;
  piVar9 = (int *)0x0;
  if (((((*param_1 < 0) || (*(int *)((int)this + 0x174) <= (int)*param_1)) || (param_1[1] < 0)) ||
      ((*(int *)((int)this + 0x178) <= (int)param_1[1] ||
       ((int)param_1[2] < *(int *)((int)this + 0x17c))))) ||
     (*(int *)((int)this + 0x180) < (int)param_1[2])) {
    return;
  }
  puVar8 = (undefined4 *)0x0;
  local_40 = (int *)0x0;
  local_3c = (int *)0x0;
  local_38 = (int *)0x0;
  local_34 = "World/Lot/GetSimsAndObjectsOnTile/vector2ArrayVec";
  local_30 = (void *)0x0;
  local_2c = (undefined4 *)0x0;
  local_28 = (undefined4 *)0x0;
  local_24 = "World/Lot/GetSimsAndObjectsOnTile/rectFloatArray";
  local_44 = this;
  if (param_5 != '\0') {
    if ((byte)param_6 == '\x0f') {
      local_20 = (void *)0x0;
      local_1c = 0;
      local_18 = 0;
      local_14 = "World/Lot/GetSimsAndObjectsOnTile/polyVertsTile";
      FUN_00808140(&local_40,(int *)0x0,(int *)&local_20);
      if (local_20 != (void *)0x0) {
        Memory_FreeIfNonNull(local_20);
      }
      FUN_00abec10(&local_30,&local_10);
      FUN_00b432a0((int)*param_1,(int)param_1[1],*param_1 + 1,param_1[1] + 1,local_3c + -4,
                   (float *)(local_2c + -4));
      piVar9 = local_3c;
    }
    else {
      FUN_00af64f0(&local_4c);
      FUN_00af6500(&local_4c);
      bVar3 = FUN_00af6520(&local_4c);
      if (!bVar3) {
        piVar5 = piVar9;
        do {
          local_45 = FUN_00500db0((undefined1 *)&local_4c);
          local_48 = *(undefined2 *)param_1;
          local_46 = param_1[2];
          piVar9 = piVar5;
          if (((byte)param_6 & local_45) != 0) {
            local_20 = (void *)0x0;
            local_1c = 0;
            local_18 = 0;
            local_14 = "World/Lot/GetSimsAndObjectsOnTile/polyVertsTile";
            if (piVar5 < local_38) {
              piVar9 = piVar5 + 4;
              local_3c = piVar9;
              if (piVar5 != (int *)0x0) {
                FUN_006289f0(piVar5,(int *)&local_20);
              }
            }
            else {
              FUN_00808140(&local_40,piVar5,(int *)&local_20);
              if (local_20 != (void *)0x0) {
                Memory_FreeIfNonNull(local_20);
              }
              piVar9 = local_3c;
            }
            TileQuarter_WriteTriangle(&local_48,piVar9 + -4);
            if (puVar8 < local_28) {
              local_2c = puVar8 + 4;
              if (puVar8 != (undefined4 *)0x0) {
                *puVar8 = local_10;
                puVar8[1] = local_c;
                puVar8[2] = local_8;
                puVar8[3] = local_4;
              }
            }
            else {
              FUN_00abd510(&local_30,puVar8,&local_10);
            }
            puVar8 = local_2c;
            Geometry_GetPolygonXZBounds(piVar9 + -4,(float *)(local_2c + -4));
            this = local_44;
          }
          FUN_00af6510(&local_4c);
          bVar3 = FUN_00af6520(&local_4c);
          piVar5 = piVar9;
        } while (!bVar3);
      }
    }
  }
  if (param_4 != '\0') {
    FUN_00ac4780(this,param_1,param_2,param_5,(int *)&local_40,(int *)&local_30);
  }
  pvVar4 = ObjectRegistry_GetGlobal();
  local_44 = pvVar4;
  if (pvVar4 != (void *)0x0) {
    if ((param_3 != '\0') && (cVar2 = GameProducts_TestCachedMask40000(), cVar2 != '\0')) {
      FUN_00ac4b20(this,param_1,param_2,param_5,(int *)&local_40,(int *)&local_30,(char)param_7,
                   param_8);
    }
    piVar5 = (int *)FUN_00ab3e50(*(void **)((int)this + 0x2d0),(int)*param_1,(int)param_1[1],
                                 (int)param_1[2] - *(int *)((int)this + 0x17c));
    iVar7 = *piVar5;
    if (iVar7 != piVar5[1]) {
      _param_4 = 0;
      if (piVar5[1] - iVar7 >> 3 == 0) {
LAB_00ac789d:
        piVar5 = local_40;
        piVar1 = local_40;
        if (local_30 != (void *)0x0) {
          Memory_FreeIfNonNull(local_30);
          piVar5 = local_40;
          piVar1 = local_40;
        }
        for (; allocation = local_40, piVar5 < piVar9; piVar5 = piVar5 + 4) {
          local_40 = piVar1;
          if ((void *)*piVar5 != (void *)0x0) {
            Memory_FreeIfNonNull((void *)*piVar5);
          }
          piVar1 = local_40;
          local_40 = allocation;
        }
        if (local_40 == (int *)0x0) {
          return;
        }
        local_40 = piVar1;
        Memory_FreeIfNonNull(allocation);
        return;
      }
      do {
        pvVar4 = ObjectRegistry_FindBorrowed
                           (pvVar4,CONCAT44(*(undefined4 *)(iVar7 + 4 + _param_4 * 8),
                                            *(undefined4 *)(iVar7 + _param_4 * 8)));
        param_6 = (uint)pvVar4;
        if (pvVar4 != (void *)0x0) {
          component = Object_GetComponentByMask(pvVar4,DAT_011e9fa8);
          if (((char)param_7 != '\0') ||
             ((component != (undefined *)0x0 &&
              (uVar6 = FootprintComponent_IsRegisteredBit(component), (char)uVar6 != '\0')))) {
            if (param_5 == '\0') {
LAB_00ac7851:
              puVar8 = (undefined4 *)param_2[1];
              if (puVar8 < (undefined4 *)param_2[2]) {
                param_2[1] = puVar8 + 1;
                if (puVar8 != (undefined4 *)0x0) {
                  *puVar8 = pvVar4;
                }
              }
              else {
                FUN_00982420(param_2,puVar8,&param_6);
              }
            }
            else {
              uVar6 = (int)piVar9 - (int)local_40 >> 4;
              uVar10 = 0;
              if (uVar6 != 0) {
                iVar7 = (int)local_30 - (int)local_40;
                bVar3 = false;
                piVar9 = local_40;
                do {
                  if (bVar3 != false) goto LAB_00ac7845;
                  bVar3 = LotQuery_TestFootprintPolygonIntersection
                                    ((void *)param_6,(int)param_1[2],piVar9,
                                     (float *)(iVar7 + (int)piVar9),param_8);
                  uVar10 = uVar10 + 1;
                  piVar9 = piVar9 + 4;
                } while (uVar10 < uVar6);
                if (bVar3) {
LAB_00ac7845:
                  pvVar4 = (void *)param_6;
                  piVar9 = local_3c;
                  goto LAB_00ac7851;
                }
                piVar9 = local_3c;
              }
            }
          }
        }
        iVar7 = *piVar5;
        _param_4 = _param_4 + 1;
        if ((uint)(piVar5[1] - iVar7 >> 3) <= _param_4) goto LAB_00ac789d;
        pvVar4 = local_44;
      } while( true );
    }
  }
  if (local_30 != (void *)0x0) {
    Memory_FreeIfNonNull(local_30);
  }
  FUN_00629730((int *)&local_40);
  return;
}

