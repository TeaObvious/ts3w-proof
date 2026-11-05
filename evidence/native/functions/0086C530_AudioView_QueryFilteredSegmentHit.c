/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Static PC1.67 original instruction comparison; 601 complete owned bytes/186 actual Listing
   instructions. No runtime execution.
   Five stack inputs, plain RET, Boolean through AL. Missing global collision service returns false.
   Queries a segment; accepts ordinary hits, but shape pointer at output+0x38 with byte+0x34
   mask0x02 invokes lot containment/local-location/00AFDD10 filtering. Rejected special hits advance
   start from hit toward endpoint by binary32 0x3C23D70A (about0.01); lower-three normalized
   direction difference tolerance is2^-16 before re-query. Exact zero remaining segment exits false.
   The pointer is not the float implied by the inferred output array. No all-EAX Boolean or CLR
   nearest-wall/roof equivalence is inferred. */

uint __cdecl
AudioView_QueryFilteredSegmentHit
          (float *param_1,float *param_2,undefined4 param_3,float *param_4,char param_5)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  void *this;
  char cVar4;
  int iVar5;
  float *pfVar6;
  void *pvVar7;
  float fVar8;
  undefined4 extraout_ECX;
  undefined4 uVar9;
  undefined4 extraout_EDX;
  float fVar10;
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  undefined1 in_XMM3 [16];
  undefined1 auVar17 [16];
  float fVar19;
  float fVar20;
  float fVar21;
  undefined1 auVar18 [16];
  float fVar22;
  float fVar23;
  float fVar24;
  LotXZLevel local_5c;
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
  
  local_50 = *param_1;
  fStack_4c = param_1[1];
  fStack_48 = param_1[2];
  fStack_44 = param_1[3];
  iVar5 = CollisionService_GetGlobal();
  this = DAT_011edbc4;
  pfVar6 = (float *)0x0;
  if (iVar5 != 0) {
    pfVar6 = (float *)CollisionService_QuerySegment(&local_50,param_2,param_3,param_4,param_5);
    cVar4 = (char)pfVar6;
    while (cVar4 != '\0') {
      fVar8 = param_4[0xe];
      if ((fVar8 == 0.0) || ((*(byte *)((int)fVar8 + 0x34) & 2) == 0)) {
LAB_0086c780:
        return CONCAT31((int3)((uint)fVar8 >> 8),1);
      }
      local_40 = param_4[4];
      fStack_3c = param_4[5];
      fStack_38 = param_4[6];
      fStack_34 = param_4[7];
      local_30 = local_40;
      fStack_2c = fStack_3c;
      fStack_28 = fStack_38;
      fStack_24 = fStack_34;
      pvVar7 = LotSpatialIndex_FindContainingLotAtWorldXZ(this,local_40,fStack_38);
      fVar8 = 0.0;
      if (pvVar7 == (void *)0x0) goto LAB_0086c780;
      local_5c.x = -1.0;
      local_5c.z = -1.0;
      local_5c.level = 0;
      Lot_WorldPositionToLocalLocation(pvVar7,param_4 + 4,&local_5c);
      fVar8 = (float)Lot_TestSelectedFloorAtPosition(pvVar7,&local_5c.x,'\0','\0','\x01');
      if (SUB41(fVar8,0) != '\0') goto LAB_0086c780;
      local_20 = param_4[4];
      fStack_1c = param_4[5];
      fStack_18 = param_4[6];
      fStack_14 = param_4[7];
      fVar8 = *param_2 - local_20;
      fVar19 = param_2[1] - fStack_1c;
      fVar20 = param_2[2] - fStack_18;
      fVar21 = param_2[3] - fStack_14;
      auVar17._4_4_ = -(uint)(fVar19 == 0.0);
      auVar17._0_4_ = -(uint)(fVar8 == 0.0);
      auVar17._8_4_ = -(uint)(fVar20 == 0.0);
      auVar17._12_4_ = -(uint)(fVar21 == 0.0);
      uVar9 = movmskps(extraout_ECX,auVar17);
      pfVar6 = param_2;
      if (((byte)uVar9 & 7) == 7) break;
      fVar10 = fVar20 * fVar20 + fVar19 * fVar19 + fVar8 * fVar8;
      auVar3._4_4_ = fVar10;
      auVar3._0_4_ = fVar10;
      auVar3._8_4_ = fVar10;
      auVar3._12_4_ = fVar10;
      auVar17 = rsqrtps(in_XMM3,auVar3);
      fVar13 = auVar17._0_4_;
      fVar14 = auVar17._4_4_;
      fVar15 = auVar17._8_4_;
      fVar16 = auVar17._12_4_;
      fVar13 = (1.0 - fVar13 * fVar13 * fVar10) * fVar13 * 0.5 + fVar13;
      fVar14 = (1.0 - fVar14 * fVar14 * fVar10) * fVar14 * 0.5 + fVar14;
      fVar15 = (1.0 - fVar15 * fVar15 * fVar10) * fVar15 * 0.5 + fVar15;
      fVar16 = (1.0 - fVar16 * fVar16 * fVar10) * fVar16 * 0.5 + fVar16;
      fVar8 = ((1.0 - fVar13 * fVar13 * fVar10) * fVar13 * 0.5 + fVar13) * fVar8;
      fVar19 = ((1.0 - fVar14 * fVar14 * fVar10) * fVar14 * 0.5 + fVar14) * fVar19;
      fVar20 = ((1.0 - fVar15 * fVar15 * fVar10) * fVar15 * 0.5 + fVar15) * fVar20;
      fVar21 = ((1.0 - fVar16 * fVar16 * fVar10) * fVar16 * 0.5 + fVar16) * fVar21;
      local_50 = fVar8 * 0.01 + local_20;
      fStack_4c = fVar19 * 0.01 + fStack_1c;
      fStack_48 = fVar20 * 0.01 + fStack_18;
      fStack_44 = fVar21 * 0.01 + fStack_14;
      fVar22 = *param_2 - local_50;
      fVar23 = param_2[1] - fStack_4c;
      fVar24 = param_2[2] - fStack_48;
      fVar10 = fVar22 * fVar22;
      auVar18._4_4_ = fVar10;
      auVar18._0_4_ = fVar23 * fVar23;
      auVar18._8_4_ = fVar10;
      auVar18._12_4_ = fVar10;
      fVar10 = fVar24 * fVar24 + fVar23 * fVar23 + fVar10;
      auVar2._4_4_ = fVar10;
      auVar2._0_4_ = fVar10;
      auVar2._8_4_ = fVar10;
      auVar2._12_4_ = fVar10;
      auVar17 = rsqrtps(auVar18,auVar2);
      fVar13 = auVar17._0_4_;
      fVar14 = auVar17._4_4_;
      fVar15 = auVar17._8_4_;
      fVar16 = auVar17._12_4_;
      in_XMM3._0_4_ = (1.0 - fVar13 * fVar13 * fVar10) * fVar13 * 0.5 + fVar13;
      in_XMM3._4_4_ = (1.0 - fVar14 * fVar14 * fVar10) * fVar14 * 0.5 + fVar14;
      in_XMM3._8_4_ = (1.0 - fVar15 * fVar15 * fVar10) * fVar15 * 0.5 + fVar15;
      in_XMM3._12_4_ = (1.0 - fVar16 * fVar16 * fVar10) * fVar16 * 0.5 + fVar16;
      fVar8 = ((1.0 - in_XMM3._0_4_ * in_XMM3._0_4_ * fVar10) * in_XMM3._0_4_ * 0.5 + in_XMM3._0_4_)
              * fVar22 - fVar8;
      fVar19 = ((1.0 - in_XMM3._4_4_ * in_XMM3._4_4_ * fVar10) * in_XMM3._4_4_ * 0.5 + in_XMM3._4_4_
               ) * fVar23 - fVar19;
      fVar20 = ((1.0 - in_XMM3._8_4_ * in_XMM3._8_4_ * fVar10) * in_XMM3._8_4_ * 0.5 + in_XMM3._8_4_
               ) * fVar24 - fVar20;
      fVar21 = ((1.0 - in_XMM3._12_4_ * in_XMM3._12_4_ * fVar10) * in_XMM3._12_4_ * 0.5 +
               in_XMM3._12_4_) * (param_2[3] - fStack_44) - fVar21;
      auVar11._0_4_ = fVar8 * -1.0;
      auVar11._4_4_ = fVar19 * -1.0;
      auVar11._8_4_ = fVar20 * -1.0;
      auVar11._12_4_ = fVar21 * -1.0;
      auVar1._4_4_ = fVar19;
      auVar1._0_4_ = fVar8;
      auVar1._8_4_ = fVar20;
      auVar1._12_4_ = fVar21;
      auVar17 = maxps(auVar11,auVar1);
      auVar12._4_4_ = -(uint)(auVar17._4_4_ <= 1.5258789e-05);
      auVar12._0_4_ = -(uint)(auVar17._0_4_ <= 1.5258789e-05);
      auVar12._8_4_ = -(uint)(auVar17._8_4_ <= 1.5258789e-05);
      auVar12._12_4_ = -(uint)(auVar17._12_4_ <= 1.5258789e-05);
      uVar9 = movmskps(extraout_EDX,auVar12);
      if (((byte)uVar9 & 7) != 7) break;
      pfVar6 = (float *)CollisionService_QuerySegment(&local_50,param_2,param_3,param_4,param_5);
      cVar4 = (char)pfVar6;
    }
  }
  return (uint)pfVar6 & 0xffffff00;
}

