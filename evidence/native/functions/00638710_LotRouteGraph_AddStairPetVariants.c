/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst: original PC 1.67 portal contract. Adds original dog/cat/little-dog directional location
   variants to stair portal and sets primary human mask0x7ff. Endpoint third fields are signed int
   floor levels; decompiler float casts in untyped locals are artifacts. */

bool __thiscall LotRouteGraph_AddStairPetVariants(void *this,void *lot,void *portal)

{
  TS3WPortalXZLevel *pTVar1;
  undefined1 auVar2 [16];
  TS3WPortalXZLevel start;
  TS3WPortalXZLevel start_00;
  TS3WPortalXZLevel end;
  TS3WPortalXZLevel backStart;
  TS3WPortalXZLevel backEnd;
  bool bVar3;
  uint uVar4;
  uint uVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  undefined1 in_XMM3 [16];
  undefined1 auVar16 [16];
  undefined1 in_XMM6 [16];
  float local_d0 [4];
  undefined4 local_c0;
  undefined4 local_bc;
  undefined4 local_b8;
  undefined4 local_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if ((lot != (void *)0x0) && (portal != (void *)0x0)) {
    *(undefined4 *)((int)portal + 0x60) = *(undefined4 *)((int)portal + 0x5c);
    bVar3 = FUN_00523da0(&DAT_011cede0,0x200);
    if (bVar3) {
      fVar7 = *(float *)((int)portal + 0x20) - *(float *)((int)portal + 0x14);
      fVar9 = *(float *)((int)portal + 0x24) - *(float *)((int)portal + 0x18);
      fVar7 = (SQRT(fVar9 * fVar9 + fVar7 * fVar7) - DAT_00fed9f4) * DAT_00fb3f7c;
      *(undefined4 *)((int)portal + 0x78) = 0x7ff;
      *(undefined4 *)((int)portal + 0x7c) = 0;
      if ((int)ROUND(fVar7) == 1) {
        local_d0[0] = DAT_00fed9f0;
        local_d0[1] = (float)DAT_00fed9e8;
        local_d0[2] = (float)DAT_00fed9e4;
        local_b8 = DAT_00fed9e4;
        local_d0[3] = (float)DAT_00fed9ec;
        local_b4 = DAT_00fed9e0;
        local_20 = *(float *)((int)portal + 0x14);
        fVar7 = *(float *)((int)portal + 0x20);
        local_c0 = DAT_00fed9dc;
        local_bc = DAT_00fed9d8;
        fStack_1c = *(float *)((int)portal + 0x18);
        fVar9 = *(float *)((int)portal + 0x24);
        local_30 = fVar7 - local_20;
        fStack_2c = fVar9 - fStack_1c;
        fVar6 = local_30 * local_30;
        fVar8 = fStack_2c * fStack_2c;
        fVar13 = fVar8 + fVar6;
        fVar14 = fVar8 + fVar6;
        fVar15 = fVar8 + fVar6;
        fVar8 = fVar8 + fVar6;
        auVar16._4_4_ = fVar14;
        auVar16._0_4_ = fVar13;
        auVar16._8_4_ = fVar15;
        auVar16._12_4_ = fVar8;
        auVar16 = rsqrtps(in_XMM3,auVar16);
        fVar6 = auVar16._0_4_;
        fVar10 = auVar16._4_4_;
        fVar11 = auVar16._8_4_;
        fVar12 = auVar16._12_4_;
        fVar6 = (DAT_00f998f8 - fVar6 * fVar6 * fVar13) * _DAT_00f9b5b4 * fVar6 + fVar6;
        fVar10 = (DAT_00f998f8 - fVar10 * fVar10 * fVar14) * _DAT_00f9b5b4 * fVar10 + fVar10;
        fVar11 = (DAT_00f998f8 - fVar11 * fVar11 * fVar15) * _DAT_00f9b5b4 * fVar11 + fVar11;
        fVar12 = (DAT_00f998f8 - fVar12 * fVar12 * fVar8) * _DAT_00f9b5b4 * fVar12 + fVar12;
        local_30 = ((DAT_00f998f8 - fVar6 * fVar6 * fVar13) * _DAT_00f9b5b4 * fVar6 + fVar6) *
                   local_30;
        fStack_2c = ((DAT_00f998f8 - fVar10 * fVar10 * fVar14) * _DAT_00f9b5b4 * fVar10 + fVar10) *
                    fStack_2c;
        fStack_28 = ((DAT_00f998f8 - fVar11 * fVar11 * fVar15) * _DAT_00f9b5b4 * fVar11 + fVar11) *
                    (fVar7 - local_20);
        fStack_24 = ((DAT_00f998f8 - fVar12 * fVar12 * fVar8) * _DAT_00f9b5b4 * fVar12 + fVar12) *
                    (fVar7 - local_20);
        uVar5 = 0;
        fStack_18 = local_20;
        fStack_14 = local_20;
        do {
          fVar6 = local_d0[uVar5 * 4 + 1];
          fVar8 = local_d0[uVar5 * 4 + 2];
          fVar10 = local_d0[uVar5 * 4];
          local_90 = fVar6 * local_30 + fVar7;
          fStack_8c = fVar6 * fStack_2c + fVar9;
          fStack_88 = fVar6 * fStack_28 + fVar7;
          fStack_84 = fVar6 * fStack_24 + fVar7;
          local_70 = fVar7 - fVar8 * local_30;
          fStack_6c = fVar9 - fVar8 * fStack_2c;
          fStack_68 = fVar7 - fVar8 * fStack_28;
          fStack_64 = fVar7 - fVar8 * fStack_24;
          fVar6 = local_d0[uVar5 * 4 + 3];
          local_b0 = fVar10 * local_30 + local_20;
          fStack_ac = fVar10 * fStack_2c + fStack_1c;
          fStack_a8 = fVar10 * fStack_28 + fStack_18;
          fStack_a4 = fVar10 * fStack_24 + fStack_14;
          local_a0 = local_20 - fVar6 * local_30;
          fStack_9c = fStack_1c - fVar6 * fStack_2c;
          fStack_98 = fStack_18 - fVar6 * fStack_28;
          fStack_94 = fStack_14 - fVar6 * fStack_24;
          uVar4 = 0;
          if (uVar5 == 0) {
            uVar4 = 0x180780;
          }
          else if (uVar5 == 1) {
            uVar4 = 0xc30780;
          }
          start.z = fStack_ac;
          start.x = local_b0;
          start.level = *(int *)((int)portal + 0x1c);
          end.z = fStack_8c;
          end.x = local_90;
          end.level = *(int *)((int)portal + 0x28);
          backStart.z = fStack_6c;
          backStart.x = local_70;
          backStart.level = *(int *)((int)portal + 0x28);
          backEnd.z = fStack_9c;
          backEnd.x = local_a0;
          backEnd.level = *(int *)((int)portal + 0x1c);
          local_80 = local_90;
          fStack_7c = fStack_8c;
          fStack_78 = fStack_88;
          fStack_74 = fStack_84;
          local_60 = local_b0;
          fStack_5c = fStack_ac;
          fStack_58 = fStack_a8;
          fStack_54 = fStack_a4;
          local_50 = local_a0;
          fStack_4c = fStack_9c;
          fStack_48 = fStack_98;
          fStack_44 = fStack_94;
          local_40 = local_70;
          fStack_3c = fStack_6c;
          fStack_38 = fStack_68;
          fStack_34 = fStack_64;
          LotRouteGraph_AddPortalLocationVariant
                    (this,lot,*(ulonglong *)((int)portal + 8),portal,start,end,backStart,backEnd,
                     (ulonglong)uVar4,true);
          uVar5 = uVar5 + 1;
        } while (uVar5 < 2);
        return true;
      }
      fStack_a8 = *(float *)((int)portal + 0x18);
      local_b0 = ((TS3WPortalXZLevel *)((int)portal + 0x14))->x;
      fStack_88 = *(float *)((int)portal + 0x24);
      pTVar1 = (TS3WPortalXZLevel *)((int)portal + 0x20);
      local_90 = pTVar1->x;
      fVar11 = local_90 - local_b0;
      fVar12 = fStack_88 - fStack_a8;
      fVar7 = fVar12 * fVar12 + 0.0 + fVar11 * fVar11;
      auVar2._4_4_ = fVar7;
      auVar2._0_4_ = fVar7;
      auVar2._8_4_ = fVar7;
      auVar2._12_4_ = fVar7;
      auVar16 = rsqrtps(in_XMM6,auVar2);
      fVar9 = auVar16._0_4_;
      fVar6 = auVar16._4_4_;
      fVar8 = auVar16._8_4_;
      fVar10 = auVar16._12_4_;
      fVar9 = (DAT_00f998f8 - fVar9 * fVar9 * fVar7) * _DAT_00f9b5b4 * fVar9 + fVar9;
      fVar6 = (DAT_00f998f8 - fVar6 * fVar6 * fVar7) * _DAT_00f9b5b4 * fVar6 + fVar6;
      fVar8 = (DAT_00f998f8 - fVar8 * fVar8 * fVar7) * _DAT_00f9b5b4 * fVar8 + fVar8;
      fVar10 = (DAT_00f998f8 - fVar10 * fVar10 * fVar7) * _DAT_00f9b5b4 * fVar10 + fVar10;
      fStack_ac = 0.0;
      fStack_5c = 0.0;
      fStack_7c = 0.0;
      fStack_8c = 0.0;
      local_a0 = ((DAT_00f998f8 - fVar9 * fVar9 * fVar7) * _DAT_00f9b5b4 * fVar9 + fVar9) * fVar11 *
                 DAT_00fed9d4 + local_b0;
      fStack_9c = ((DAT_00f998f8 - fVar6 * fVar6 * fVar7) * _DAT_00f9b5b4 * fVar6 + fVar6) * 0.0 *
                  DAT_00fed9d4 + 0.0;
      fStack_98 = ((DAT_00f998f8 - fVar8 * fVar8 * fVar7) * _DAT_00f9b5b4 * fVar8 + fVar8) * fVar12
                  * DAT_00fed9d4 + fStack_a8;
      fStack_94 = ((DAT_00f998f8 - fVar10 * fVar10 * fVar7) * _DAT_00f9b5b4 * fVar10 + fVar10) *
                  (local_90 - local_b0) * DAT_00fed9d4 + local_b0;
      fStack_3c = 0.0;
      fStack_6c = 0.0;
      start_00.z = fStack_98;
      start_00.x = local_a0;
      start_00.level = *(int *)((int)portal + 0x1c);
      fStack_a4 = local_b0;
      fStack_84 = local_90;
      local_80 = local_90;
      fStack_78 = fStack_88;
      fStack_74 = local_90;
      local_70 = local_90;
      fStack_68 = fStack_88;
      fStack_64 = local_90;
      local_60 = local_b0;
      fStack_58 = fStack_a8;
      fStack_54 = local_b0;
      local_50 = local_a0;
      fStack_4c = fStack_9c;
      fStack_48 = fStack_98;
      fStack_44 = fStack_94;
      local_40 = local_90;
      fStack_38 = fStack_88;
      fStack_34 = local_90;
      LotRouteGraph_AddPortalLocationVariant
                (this,lot,*(ulonglong *)((int)portal + 8),portal,start_00,*pTVar1,*pTVar1,
                 *(TS3WPortalXZLevel *)((int)portal + 0x14),0xdb0780,true);
    }
    return true;
  }
  return false;
}

