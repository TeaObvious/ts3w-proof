/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 STATIC ORIGINAL. cdecl five DWORD arguments, ordinary RET; only AL is status on early
   failures, upper EAX not a Boolean contract. Catalog typed key at object+18 selects fieldA4.
   Nonzero flags clear both output sets; missing catalog/zero flags return AL0 without clearing.
   Required low mask3F, prohibitedFC0; if both zero, bit4000 synthesizes required2. Bounds fallback
   expands axes to at least0.5, with asymmetric second-axis handling for bit4002, then
   transforms/rasterizes into ordered edge sets. Authored count is signed pointer difference /28,
   but loop/count and ordinal are INTEGER DWORDs despite float locals in C; index increments2,
   compared unsigned. At B3FFEF the authored-path prohibited test REALLY uses the same low-mask
   DWORD as the required test, not retained FC0: do not silently correct that original behavior.
   Octant1/5 rewrites required2 to10,3/7 to20 in that path. Packed endpoint coordinates/levels use
   MOVSX byte. Outputs are native ordered descriptor sets, NOT one renderer/material span.
   Table/rotation/footprint children and native error lanes are independent contracts. */

uint __cdecl
Placement_CollectWallFlagEdgeSets
          (void *param_1,float *param_2,int param_3,void *param_4,void *param_5)

{
  int iVar1;
  void *this;
  char cVar2;
  undefined3 extraout_var;
  float *pfVar3;
  float *pfVar4;
  uint uVar5;
  uint uVar6;
  void *pvVar7;
  bool bVar8;
  bool bVar9;
  float fVar10;
  float local_b8;
  bool local_b4 [6];
  char local_ae;
  char local_ad;
  uint local_ac;
  char local_a8 [4];
  float local_a4;
  float local_a0;
  float local_9c;
  float local_98;
  float local_94;
  float local_90;
  float local_8c;
  float local_88;
  uint local_84;
  void *local_80;
  float local_7c;
  float local_78;
  float local_74;
  float local_70;
  char local_6c;
  char local_6b;
  char local_6a;
  undefined1 local_69;
  undefined1 local_68;
  undefined1 local_67;
  float local_64;
  float local_60;
  int local_5c;
  float local_58;
  float local_54;
  float local_50;
  float local_4c;
  float local_48;
  float local_44;
  float local_40;
  float local_3c;
  float local_38;
  float local_34;
  uint local_30;
  uint local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  dword local_18 [2];
  dword local_10 [3];
  
  local_80 = (void *)ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)param_1 + 0x18));
  this = param_4;
  uVar6 = 0;
  if (local_80 != (void *)0x0) {
    uVar5 = *(uint *)((int)local_80 + 0xa4);
    uVar6 = 0;
    if (uVar5 != 0) {
      FUN_008b19b0(*(undefined4 **)((int)param_4 + 0xc));
      pvVar7 = param_5;
      iVar1 = (int)this + 4;
      *(int *)iVar1 = iVar1;
      *(int *)((int)this + 8) = iVar1;
      *(undefined4 *)((int)this + 0xc) = 0;
      *(undefined1 *)((int)this + 0x10) = 0;
      *(undefined4 *)((int)this + 0x14) = 0;
      FUN_008b19b0(*(undefined4 **)((int)param_5 + 0xc));
      iVar1 = (int)pvVar7 + 4;
      *(int *)iVar1 = iVar1;
      *(int *)((int)pvVar7 + 8) = iVar1;
      local_ac = uVar5 & 0x3f;
      local_84 = uVar5 & 0xfc0;
      *(undefined4 *)((int)pvVar7 + 0xc) = 0;
      *(undefined1 *)((int)pvVar7 + 0x10) = 0;
      *(undefined4 *)((int)pvVar7 + 0x14) = 0;
      if ((local_ac == 0) && (local_84 == 0)) {
        uVar6 = 0;
        if ((uVar5 & 0x4000) == 0) goto LAB_00b403b4;
        local_ac = 2;
        uVar5 = 2;
      }
      local_38 = (float)((*(int *)((int)local_80 + 0xd8) - *(int *)((int)local_80 + 0xd4)) / 0x28);
      if (local_38 == 0.0) {
        local_a8[0] = -1;
        local_a8[1] = 0xff;
        local_a8[2] = 0;
        FUN_00af7730(param_2,local_a8);
        cVar2 = Placement_GetFootprintBoundsForLevel(0,param_1,&local_7c);
        uVar6 = CONCAT31(extraout_var,cVar2);
        if (cVar2 == '\0') goto LAB_00b403b4;
        if (local_74 - local_7c < 0.5) {
          fVar10 = (0.5 - (local_74 - local_7c)) * 0.5;
          local_7c = local_7c - fVar10;
          local_74 = local_74 + fVar10;
        }
        fVar10 = local_70 - local_78;
        if (fVar10 < 0.5) {
          if ((local_ac & 0x4002) == 0) {
            fVar10 = (0.5 - fVar10) * 0.5;
            local_78 = local_78 - fVar10;
            local_70 = local_70 + fVar10;
          }
          else {
            local_70 = (0.5 - fVar10) + local_70;
          }
        }
        FUN_00b3f470((int)this);
        FUN_00b3f470((int)pvVar7);
        uVar6 = Placement_TransformBoundsCornersToLot
                          (param_1,&local_7c,param_2,param_3,(int)&local_a4);
        if ((char)uVar6 != '\0') {
          uVar6 = 0;
          do {
            bVar8 = (local_ac & (&DAT_0106d72c)[uVar6]) != 0;
            bVar9 = ((&DAT_0106d744)[uVar6] & local_84) != 0;
            local_b4[0] = bVar8;
            if ((!bVar8) && (!bVar9)) goto switchD_00b40285_caseD_3;
            switch((&DAT_0106d72c)[uVar6]) {
            case 1:
              pfVar4 = &local_a4;
              pfVar3 = &local_8c;
              break;
            case 2:
              pfVar4 = &local_8c;
              pfVar3 = &local_94;
              goto LAB_00b402b9;
            default:
              goto switchD_00b40285_caseD_3;
            case 4:
              pfVar4 = &local_94;
              pfVar3 = &local_9c;
              goto LAB_00b40382;
            case 8:
              pfVar4 = &local_9c;
              pfVar3 = &local_a4;
              break;
            case 0x10:
              local_40 = local_94 + (local_9c - local_94) + (-0.0 - (local_98 - local_90));
              local_3c = local_90 + (local_98 - local_90) + (local_9c - local_94);
              pfVar4 = &local_94;
              pfVar3 = &local_40;
LAB_00b402b9:
              fVar10 = param_2[2];
              goto LAB_00b4039a;
            case 0x20:
              local_38 = local_8c + (local_a0 - local_88) + (local_a4 - local_8c);
              local_34 = local_88 + (-0.0 - (local_a4 - local_8c)) + (local_a0 - local_88);
              pfVar4 = &local_38;
              pfVar3 = &local_8c;
LAB_00b40382:
              fVar10 = param_2[2];
              goto LAB_00b4039a;
            }
            fVar10 = param_2[2];
LAB_00b4039a:
            Placement_RasterizeWallSegmentIntoSets
                      (uVar6,bVar8,bVar9,fVar10,pfVar3,pfVar4,this,param_5);
switchD_00b40285_caseD_3:
            uVar6 = uVar6 + 1;
            pvVar7 = param_5;
          } while (uVar6 < 6);
        }
      }
      else {
        if (((byte)uVar5 & 0x3f) == 2) {
          switch(param_3) {
          case 1:
          case 5:
            uVar5 = uVar5 & 0xffffffd0 | 0x10;
            break;
          case 3:
          case 7:
            uVar5 = uVar5 & 0xffffffe0 | 0x20;
          }
          local_ac = uVar5 & 0x3f;
        }
        local_b8 = 0.0;
        if (local_38 != 0.0) {
          local_2c = *(int *)((int)local_80 + 0xe4) * 2;
          do {
            local_28 = 0;
            local_24 = 0;
            local_20 = 0;
            local_1c = 0;
            local_58 = -1.0;
            local_54 = -1.0;
            local_50 = 0.0;
            local_4c = -1.0;
            local_48 = -1.0;
            local_44 = 0.0;
            ObjectCatalog_ReadWallPlacementRow
                      (local_80,(int)local_b8,&local_58,&local_54,&local_4c,&local_48,&local_50,
                       &local_28);
            local_a0 = local_54;
            local_94 = local_48;
            local_44 = local_50;
            local_9c = local_50;
            local_90 = local_50;
            local_a4 = local_58;
            local_98 = local_4c;
            FUN_00c45750(&local_a4,&param_3,&local_a4,(int)((uint)local_b8 % local_2c) >> 1);
            FUN_00c456b0(&local_a4,param_2,&local_a4);
            FUN_00784df0(&local_40,&local_a4,&local_98);
            local_b4[0] = true;
            local_b4[1] = true;
            local_b4[2] = false;
            local_b4[3] = true;
            FUN_00c45f20((char *)&local_40,(undefined2 *)local_b4);
            uVar6 = 0;
            do {
              local_ad = (local_ac & (uint)*(undefined1 **)((int)&DAT_0106d72c + uVar6)) != 0;
              local_ae = (*(uint *)((int)&DAT_0106d744 + uVar6) & local_ac) != 0;
              if (((bool)local_ad) || ((bool)local_ae)) {
                local_6c = -1;
                local_6b = -1;
                local_6a = '\0';
                local_69 = 0xff;
                local_68 = 0xff;
                local_67 = 0;
                local_64 = -1.0;
                local_60 = -1.0;
                local_5c = 0;
                FUN_00aff4d0(*(undefined1 **)((int)&DAT_0106d72c + uVar6),local_b4,param_3,&local_6c
                            );
                local_7c = (float)(int)local_6c;
                local_78 = (float)(int)local_6b;
                local_5c = (int)local_6a;
                local_64 = local_7c;
                local_60 = local_78;
                if (local_ad != '\0') {
                  local_30 = local_30 & 0xffffff00;
                  WallEdgeSet_InsertUnique(this,local_10,&local_6c,local_30);
                }
                if (local_ae != '\0') {
                  local_84 = local_84 & 0xffffff00;
                  WallEdgeSet_InsertUnique(param_5,local_18,&local_6c,local_84);
                }
              }
              uVar6 = uVar6 + 4;
            } while (uVar6 < 0x18);
            local_b8 = (float)((int)local_b8 + 2);
            pvVar7 = param_5;
          } while ((uint)local_b8 < (uint)local_38);
        }
      }
      if ((*(int *)((int)this + 0x14) == 0) && (*(int *)((int)pvVar7 + 0x14) == 0)) {
        return 0;
      }
      return 1;
    }
  }
LAB_00b403b4:
  return uVar6 & 0xffffff00;
}

