/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 ECX collector with host, point, required slot mask and float maximum distance
   (four stack words, RET10hex). Selected branch obtains held product raw slot flags, visits host
   slots whose flags contain requested mask, measures distance, then calls AFC0B0 and appends1/4/8
   headings throughCCA400. Full body also performs component/transform/slot queries; this selected
   scalar contract does not replace complete placement validation. */

void __thiscall
SlotCandidates_CollectFromHost(void *this,void *param_1,float *param_2,uint param_3,float param_4)

{
  void *pvVar1;
  uint uVar2;
  int *piVar3;
  uint uVar4;
  uint uVar5;
  float10 fVar6;
  undefined1 auVar7 [16];
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fStack_c0;
  void *local_bc;
  uint local_b8;
  float fStack_b4;
  uint local_b0;
  undefined1 auStack_a0 [16];
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (param_1 == (void *)0x0) {
    local_bc = (void *)0x0;
  }
  else {
    pvVar1 = Object_GetComponentByMask(param_1,DAT_011ea2a8);
    if ((pvVar1 != (void *)0x0) && ((*(byte *)((int)pvVar1 + 8) & 1) == 0)) {
      return;
    }
    local_bc = Object_GetComponentByMask(param_1,DAT_011ea114);
  }
  if (*(void **)((int)this + 8) == (void *)0x0) {
    pvVar1 = (void *)0x0;
  }
  else {
    pvVar1 = Object_GetComponentByMask(*(void **)((int)this + 8),DAT_011edf08);
  }
  if (((local_bc != (void *)0x0) && (pvVar1 != (void *)0x0)) &&
     (param_1 != *(void **)((int)this + 8))) {
    fVar13 = PlacementLocation_ReadYawWithRefresh(pvVar1);
    Placement_QuantizeYawToOctant(fVar13);
    if (param_1 == (void *)0x0) {
      pvVar1 = (void *)0x0;
    }
    else {
      pvVar1 = Object_GetComponentByMask(param_1,DAT_011ea158);
    }
    TransformComponent_GetWorldMatrix(pvVar1,&local_50);
    if ((*(void **)((int)this + 8) == (void *)0x0) ||
       (pvVar1 = Object_FindCatalogInfo(*(void **)((int)this + 8)), pvVar1 == (void *)0x0)) {
      local_b0 = 0;
    }
    else {
      local_b0 = ObjectProduct_GetSlotPlacementFlags(pvVar1);
    }
    uVar2 = FUN_00950290((int)local_bc);
    local_b8 = 0;
    if (uVar2 != 0) {
      do {
        piVar3 = (int *)FUN_009502a0(local_bc,local_b8);
        if (param_3 == (piVar3[6] & param_3)) {
          (**(code **)(*piVar3 + 0x14))(&local_90);
          (**(code **)(*piVar3 + 0x20))(&fStack_54,auStack_a0 + 0xc,0);
          fVar10 = fStack_8c * fStack_38;
          fVar11 = fStack_8c * fStack_34;
          fVar13 = local_90 * fStack_4c;
          fVar8 = local_90 * fStack_48;
          fVar9 = local_90 * fStack_44;
          fVar12 = fStack_88 * fStack_24;
          local_90 = local_90 * local_50 + fStack_8c * fStack_40 + fStack_88 * fStack_30 +
                     fStack_84 * fStack_20;
          fStack_8c = fVar13 + fStack_8c * fStack_3c + fStack_88 * fStack_2c + fStack_84 * fStack_1c
          ;
          fStack_88 = fVar8 + fVar10 + fStack_88 * fStack_28 + fStack_84 * fStack_18;
          fStack_84 = fVar9 + fVar11 + fVar12 + fStack_84 * fStack_14;
          fVar9 = fStack_80 * fStack_4c;
          fVar10 = fStack_80 * fStack_48;
          fVar11 = fStack_80 * fStack_44;
          fVar13 = fStack_7c * fStack_38;
          fVar8 = fStack_7c * fStack_34;
          fVar12 = fStack_78 * fStack_24;
          fStack_80 = fStack_7c * fStack_40 + fStack_80 * local_50 + fStack_78 * fStack_30 +
                      fStack_74 * fStack_20;
          fStack_7c = fStack_7c * fStack_3c + fVar9 + fStack_78 * fStack_2c + fStack_74 * fStack_1c;
          fStack_78 = fVar13 + fVar10 + fStack_78 * fStack_28 + fStack_74 * fStack_18;
          fStack_74 = fVar8 + fVar11 + fVar12 + fStack_74 * fStack_14;
          fVar9 = fStack_70 * fStack_4c;
          fVar10 = fStack_70 * fStack_48;
          fVar11 = fStack_70 * fStack_44;
          fVar13 = fStack_6c * fStack_38;
          fVar8 = fStack_6c * fStack_34;
          fVar12 = fStack_68 * fStack_24;
          fStack_70 = fStack_6c * fStack_40 + fStack_70 * local_50 + fStack_68 * fStack_30 +
                      fStack_64 * fStack_20;
          fStack_6c = fStack_6c * fStack_3c + fVar9 + fStack_68 * fStack_2c + fStack_64 * fStack_1c;
          fStack_68 = fVar13 + fVar10 + fStack_68 * fStack_28 + fStack_64 * fStack_18;
          fStack_64 = fVar8 + fVar11 + fVar12 + fStack_64 * fStack_14;
          fVar13 = fStack_5c * fStack_38;
          fVar8 = fStack_5c * fStack_34;
          fVar10 = fStack_60 * fStack_4c;
          fVar11 = fStack_60 * fStack_48;
          fVar12 = fStack_60 * fStack_44;
          fVar9 = fStack_58 * fStack_24;
          fStack_60 = fStack_5c * fStack_40 + fStack_60 * local_50 + fStack_58 * fStack_30 +
                      fStack_54 * fStack_20;
          fStack_5c = fStack_5c * fStack_3c + fVar10 + fStack_58 * fStack_2c + fStack_54 * fStack_1c
          ;
          fStack_58 = fVar13 + fVar11 + fStack_58 * fStack_28 + fStack_54 * fStack_18;
          fStack_54 = fVar8 + fVar12 + fVar9 + fStack_54 * fStack_14;
          auVar7._0_4_ = (fStack_58 - param_2[2]) * (fStack_58 - param_2[2]) +
                         (fStack_5c - param_2[1]) * (fStack_5c - param_2[1]) +
                         (fStack_60 - *param_2) * (fStack_60 - *param_2);
          auVar7._4_4_ = auVar7._0_4_;
          auVar7._8_4_ = auVar7._0_4_;
          auVar7._12_4_ = auVar7._0_4_;
          auStack_a0 = sqrtps(auVar7,auVar7);
          if ((float)auStack_a0._0_4_ <= param_4) {
            fVar6 = FUN_00b3e750(param_1,piVar3);
            fStack_c0 = (float)fVar6;
            uVar4 = SlotPlacement_IntersectRotationFlags(piVar3[6],local_b0);
            uVar5 = 1;
            fStack_b4 = 0.0;
            if ((uVar4 & 0x20000000) == 0) {
              if ((uVar4 & 0x10000000) != 0) {
                fStack_b4 = 1.5707964;
                uVar5 = 4;
              }
            }
            else {
              fStack_b4 = 0.7853982;
              uVar5 = 8;
            }
            uVar4 = 0;
            if (uVar5 != 0) {
              do {
                SlotCandidates_AppendWithAngularDistance
                          (this,(int)param_1,piVar3,local_b8,uVar4,fStack_c0,auStack_a0._0_4_);
                fStack_c0 = fStack_c0 + fStack_b4;
                uVar4 = uVar4 + 1;
              } while (uVar4 < uVar5);
            }
          }
        }
        local_b8 = local_b8 + 1;
      } while (local_b8 < uVar2);
    }
  }
  return;
}

