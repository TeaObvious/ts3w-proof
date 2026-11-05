/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  int *allocation;
  char cVar1;
  byte bVar2;
  bool bVar3;
  void *pvVar4;
  int *piVar5;
  void *pvVar6;
  int iVar7;
  undefined4 *puVar8;
  uint uVar9;
  int *piVar10;
  int *this_00;
  uint uVar11;
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
  this_00 = (int *)0x0;
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
      this_00 = local_3c;
    }
    else {
      FUN_00af64f0(&local_4c);
      FUN_00af6500(&local_4c);
      bVar3 = FUN_00af6520(&local_4c);
      while (!bVar3) {
        local_45 = FUN_00500db0((undefined1 *)&local_4c);
        local_48 = *(undefined2 *)param_1;
        local_46 = param_1[2];
        piVar5 = this_00;
        if (((byte)param_6 & local_45) != 0) {
          local_20 = (void *)0x0;
          local_1c = 0;
          local_18 = 0;
          local_14 = "World/Lot/GetSimsAndObjectsOnTile/polyVertsTile";
          if (this_00 < local_38) {
            piVar5 = this_00 + 4;
            local_3c = piVar5;
            if (this_00 != (int *)0x0) {
              FUN_006289f0(this_00,(int *)&local_20);
            }
          }
          else {
            FUN_00808140(&local_40,this_00,(int *)&local_20);
            piVar5 = local_3c;
            if (local_20 != (void *)0x0) {
              Memory_FreeIfNonNull(local_20);
              piVar5 = local_3c;
            }
          }
          TileQuarter_WriteTriangle(&local_48,piVar5 + -4);
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
          Geometry_GetPolygonXZBounds(piVar5 + -4,(float *)(local_2c + -4));
          this = local_44;
        }
        FUN_00af6510(&local_4c);
        bVar3 = FUN_00af6520(&local_4c);
        this_00 = piVar5;
      }
    }
  }
  if (param_4 != '\0') {
    FUN_00ac4780(this,param_1,param_2,param_5,(int *)&local_40,(int *)&local_30);
  }
  pvVar4 = ObjectRegistry_GetGlobal();
  local_44 = pvVar4;
  if (pvVar4 != (void *)0x0) {
    if ((param_3 != '\0') && (cVar1 = FUN_00c88d00(), cVar1 != '\0')) {
      FUN_00ac4b20(this,param_1,param_2,param_5,(int *)&local_40,(int *)&local_30,(char)param_7,
                   param_8);
    }
    piVar5 = (int *)FUN_00ab3e50(*(void **)((int)this + 0x2d0),(int)*param_1,(int)param_1[1],
                                 (int)param_1[2] - *(int *)((int)this + 0x17c));
    iVar7 = *piVar5;
    if (iVar7 != piVar5[1]) {
      _param_4 = 0;
      if (piVar5[1] - iVar7 >> 3 != 0) {
        do {
          pvVar4 = ObjectRegistry_FindBorrowed
                             (pvVar4,CONCAT44(*(undefined4 *)(iVar7 + 4 + _param_4 * 8),
                                              *(undefined4 *)(iVar7 + _param_4 * 8)));
          param_6 = (uint)pvVar4;
          if (pvVar4 != (void *)0x0) {
            pvVar6 = Object_GetComponentByMask(pvVar4,DAT_011e9fa8);
            if (((char)param_7 != '\0') ||
               ((pvVar6 != (void *)0x0 &&
                (bVar2 = FootprintComponent_IsRegisteredBit((int)pvVar6), bVar2 != 0)))) {
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
                uVar9 = (int)this_00 - (int)local_40 >> 4;
                uVar11 = 0;
                if (uVar9 != 0) {
                  iVar7 = (int)local_30 - (int)local_40;
                  bVar3 = false;
                  piVar10 = local_40;
                  do {
                    pvVar4 = (void *)param_6;
                    this_00 = local_3c;
                    if (bVar3 != false) goto LAB_00ac7851;
                    bVar3 = LotQuery_TestFootprintPolygonIntersection
                                      ((void *)param_6,(int)param_1[2],piVar10,
                                       (float *)(iVar7 + (int)piVar10),param_8);
                    uVar11 = uVar11 + 1;
                    piVar10 = piVar10 + 4;
                  } while (uVar11 < uVar9);
                  pvVar4 = (void *)param_6;
                  this_00 = local_3c;
                  if (bVar3) goto LAB_00ac7851;
                }
              }
            }
          }
          iVar7 = *piVar5;
          _param_4 = _param_4 + 1;
          pvVar4 = local_44;
        } while (_param_4 < (uint)(piVar5[1] - iVar7 >> 3));
      }
      piVar5 = local_40;
      piVar10 = local_40;
      if (local_30 != (void *)0x0) {
        Memory_FreeIfNonNull(local_30);
        piVar5 = local_40;
        piVar10 = local_40;
      }
      for (; allocation = local_40, piVar5 < this_00; piVar5 = piVar5 + 4) {
        local_40 = piVar10;
        if ((void *)*piVar5 != (void *)0x0) {
          Memory_FreeIfNonNull((void *)*piVar5);
        }
        piVar10 = local_40;
        local_40 = allocation;
      }
      if (local_40 == (int *)0x0) {
        return;
      }
      local_40 = piVar10;
      Memory_FreeIfNonNull(allocation);
      return;
    }
  }
  if (local_30 != (void *)0x0) {
    Memory_FreeIfNonNull(local_30);
  }
  FUN_00629730((int *)&local_40);
  return;
}

