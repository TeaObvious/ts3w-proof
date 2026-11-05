/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst original PC1.67 instruction contract. ECX Transform plus reader/context words, RET8;
   result reader status byte+14h. UInt16 context version<=2 reads/converts16DWORD matrix;>=3 reads
   position/quaternion. Reads parentGUID; nonzero reads pointDWORD,occupant Boolean and version>=2
   bone-mode Boolean (older default0). Primitive results accumulate. Event27 payload starts1;
   post-event nonzero appends through9597E0. Zero parent uses separate optional pose adjustment. No
   assumed bone ordinal, callback acceptance or rollback. */

undefined1 __thiscall
TransformComponent_ReadStreamAndQueueAttachment(void *this,void *param_1,void *param_2)

{
  int iVar1;
  undefined1 auVar2 [16];
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  bool bVar11;
  undefined4 uVar12;
  int iVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar28;
  float fVar29;
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  undefined1 auVar27 [16];
  float fVar30;
  undefined1 auVar31 [16];
  undefined1 auVar32 [16];
  undefined1 auVar33 [16];
  undefined1 auVar34 [16];
  undefined1 auVar35 [16];
  float fVar37;
  undefined1 auVar36 [16];
  char local_b5;
  uint local_b4;
  int local_b0;
  int local_ac;
  float local_a4;
  uint local_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  undefined1 local_74 [4];
  float local_70;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float local_30;
  float fStack_2c;
  float fStack_28;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  if (*(ushort *)((int)param_2 + 4) < 3) {
    uVar12 = Stream_ReadUInt32ArrayByByteOrder
                       (*(int **)((int)param_1 + 8),(uint *)&local_50,0x10,
                        *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,(byte)uVar12);
    auVar33._4_4_ = local_50;
    auVar33._0_4_ = local_50;
    auVar33._8_4_ = local_50;
    auVar33._12_4_ = local_50;
    local_60 = local_50 + fStack_3c;
    fStack_5c = local_50 + fStack_3c;
    fStack_58 = local_50 + fStack_3c;
    fStack_54 = local_50 + fStack_3c;
    local_70 = local_60 + fStack_28;
    fStack_8c = fStack_5c + fStack_28;
    fStack_88 = fStack_58 + fStack_28;
    fStack_84 = fStack_54 + fStack_28;
    local_a4 = DAT_010f4ccc;
    if (local_70 <= DAT_010f4ccc) {
      if (fStack_3c < local_50) {
        local_90 = local_50;
        local_a4 = fStack_28;
        if (fStack_28 < local_50) {
          auVar22._0_4_ = FLOAT_00f998f8 + (local_50 - (fStack_28 + fStack_3c));
          auVar22._4_4_ = FLOAT_00f998f8 + (local_50 - (fStack_28 + fStack_3c));
          auVar22._8_4_ = FLOAT_00f998f8 + (local_50 - (fStack_28 + fStack_3c));
          auVar22._12_4_ = FLOAT_00f998f8 + (local_50 - (fStack_28 + fStack_3c));
          auVar33 = sqrtps(auVar22,auVar22);
          auVar34._4_4_ = _DAT_00f9b5b4;
          auVar34._0_4_ = _DAT_00f9b5b4;
          auVar34._8_4_ = _DAT_00f9b5b4;
          auVar34._12_4_ = _DAT_00f9b5b4;
          auVar35 = divps(auVar34,auVar33);
          *(float *)((int)this + 0x10) = auVar33._0_4_ * _DAT_00f9b5b4;
          *(float *)((int)this + 0x14) = (local_40 + fStack_4c) * auVar35._4_4_;
          *(float *)((int)this + 0x18) = (local_30 + fStack_48) * auVar35._8_4_;
          *(float *)((int)this + 0x1c) = (fStack_38 - fStack_2c) * auVar35._12_4_;
          *(undefined4 *)((int)this + 0x20) = local_20;
          *(undefined4 *)((int)this + 0x24) = uStack_1c;
          *(undefined4 *)((int)this + 0x28) = uStack_18;
          *(undefined4 *)((int)this + 0x2c) = uStack_14;
          goto LAB_00959b2d;
        }
      }
      local_90 = fStack_3c;
      local_a4 = fStack_28;
      if (fStack_3c <= fStack_28) {
        auVar35._0_4_ = FLOAT_00f998f8 + (fStack_28 - local_60);
        auVar35._4_4_ = FLOAT_00f998f8 + (fStack_28 - fStack_5c);
        auVar35._8_4_ = FLOAT_00f998f8 + (fStack_28 - fStack_58);
        auVar35._12_4_ = FLOAT_00f998f8 + (fStack_28 - fStack_54);
        auVar33 = sqrtps(auVar33,auVar35);
        auVar36._4_4_ = _DAT_00f9b5b4;
        auVar36._0_4_ = _DAT_00f9b5b4;
        auVar36._8_4_ = _DAT_00f9b5b4;
        auVar36._12_4_ = _DAT_00f9b5b4;
        auVar35 = divps(auVar36,auVar33);
        fVar37 = auVar33._8_4_ * _DAT_00f9b5b4;
        *(float *)((int)this + 0x10) = (local_30 + fStack_48) * auVar35._0_4_;
        *(float *)((int)this + 0x14) = (fStack_2c + fStack_38) * auVar35._4_4_;
        *(float *)((int)this + 0x18) = fVar37;
        *(float *)((int)this + 0x1c) = (fStack_4c - local_40) * auVar35._12_4_;
        *(undefined4 *)((int)this + 0x20) = local_20;
        *(undefined4 *)((int)this + 0x24) = uStack_1c;
        *(undefined4 *)((int)this + 0x28) = uStack_18;
        *(undefined4 *)((int)this + 0x2c) = uStack_14;
      }
      else {
        auVar23._0_4_ = FLOAT_00f998f8 + (fStack_3c - (fStack_28 + local_50));
        auVar23._4_4_ = FLOAT_00f998f8 + (fStack_3c - (fStack_28 + local_50));
        auVar23._8_4_ = FLOAT_00f998f8 + (fStack_3c - (fStack_28 + local_50));
        auVar23._12_4_ = FLOAT_00f998f8 + (fStack_3c - (fStack_28 + local_50));
        auVar35 = sqrtps(auVar33,auVar23);
        auVar31._4_4_ = _DAT_00f9b5b4;
        auVar31._0_4_ = _DAT_00f9b5b4;
        auVar31._8_4_ = _DAT_00f9b5b4;
        auVar31._12_4_ = _DAT_00f9b5b4;
        auVar33 = divps(auVar31,auVar35);
        fVar37 = auVar35._4_4_ * _DAT_00f9b5b4;
        *(float *)((int)this + 0x10) = (local_40 + fStack_4c) * auVar33._0_4_;
        *(float *)((int)this + 0x14) = fVar37;
        *(float *)((int)this + 0x18) = (fStack_2c + fStack_38) * auVar33._8_4_;
        *(float *)((int)this + 0x1c) = (local_30 - fStack_48) * auVar33._12_4_;
        *(undefined4 *)((int)this + 0x20) = local_20;
        *(undefined4 *)((int)this + 0x24) = uStack_1c;
        *(undefined4 *)((int)this + 0x28) = uStack_18;
        *(undefined4 *)((int)this + 0x2c) = uStack_14;
      }
    }
    else {
      auVar21._0_4_ = FLOAT_00f998f8 + local_70;
      auVar21._4_4_ = FLOAT_00f998f8 + fStack_8c;
      auVar21._8_4_ = FLOAT_00f998f8 + fStack_88;
      auVar21._12_4_ = FLOAT_00f998f8 + fStack_84;
      auVar35 = sqrtps(ZEXT416((uint)local_70),auVar21);
      auVar32._4_4_ = _DAT_00f9b5b4;
      auVar32._0_4_ = _DAT_00f9b5b4;
      auVar32._8_4_ = _DAT_00f9b5b4;
      auVar32._12_4_ = _DAT_00f9b5b4;
      auVar33 = divps(auVar32,auVar35);
      fVar37 = auVar35._12_4_ * _DAT_00f9b5b4;
      *(float *)((int)this + 0x10) = (fStack_38 - fStack_2c) * auVar33._0_4_;
      *(float *)((int)this + 0x14) = (local_30 - fStack_48) * auVar33._4_4_;
      *(float *)((int)this + 0x18) = (fStack_4c - local_40) * auVar33._8_4_;
      *(float *)((int)this + 0x1c) = fVar37;
      *(undefined4 *)((int)this + 0x20) = local_20;
      *(undefined4 *)((int)this + 0x24) = uStack_1c;
      *(undefined4 *)((int)this + 0x28) = uStack_18;
      *(undefined4 *)((int)this + 0x2c) = uStack_14;
      local_90 = local_70;
    }
  }
  else {
    FUN_007d7b60(param_1,(uint *)((int)this + 0x20));
    FUN_007d7c20(param_1,(uint *)((int)this + 0x10));
  }
LAB_00959b2d:
  bVar11 = Stream_ReadUInt64(*(void **)((int)param_1 + 8),(ulonglong *)&local_b0,
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar11);
  if (local_b0 == 0 && local_ac == 0) {
    iVar1 = *(int *)((int)param_2 + 0x14);
    if (iVar1 != 0) {
      auVar33 = *(undefined1 (*) [16])(iVar1 + 0x30);
      auVar24._0_4_ = auVar33._0_4_ * FLOAT_00fab218;
      auVar24._4_4_ = auVar33._4_4_ * FLOAT_00fab218;
      auVar24._8_4_ = auVar33._8_4_ * FLOAT_00fab218;
      auVar24._12_4_ = auVar33._12_4_ * FLOAT_00fab218;
      auVar33 = maxps(auVar24,auVar33);
      auVar25._4_4_ = -(uint)(auVar33._4_4_ <= DAT_0104583c);
      auVar25._0_4_ = -(uint)(auVar33._0_4_ <= DAT_0104583c);
      auVar25._8_4_ = -(uint)(auVar33._8_4_ <= DAT_0104583c);
      auVar25._12_4_ = -(uint)(auVar33._12_4_ <= DAT_0104583c);
      uVar12 = movmskps(0,auVar25);
      if (((byte)uVar12 & 7) == 7) {
        fVar37 = *(float *)(iVar1 + 0x20) - 0.0;
        fVar15 = *(float *)(iVar1 + 0x24) - 0.0;
        fVar17 = *(float *)(iVar1 + 0x28) - 0.0;
        fVar19 = *(float *)(iVar1 + 0x2c) - FLOAT_00f998f8;
        auVar26._0_4_ = fVar37 * FLOAT_00fab218;
        auVar26._4_4_ = fVar15 * FLOAT_00fab218;
        auVar26._8_4_ = fVar17 * FLOAT_00fab218;
        auVar26._12_4_ = fVar19 * FLOAT_00fab218;
        auVar2._4_4_ = fVar15;
        auVar2._0_4_ = fVar37;
        auVar2._8_4_ = fVar17;
        auVar2._12_4_ = fVar19;
        auVar33 = maxps(auVar26,auVar2);
        auVar27._4_4_ = -(uint)(auVar33._4_4_ <= DAT_0104583c);
        auVar27._0_4_ = -(uint)(auVar33._0_4_ <= DAT_0104583c);
        auVar27._8_4_ = -(uint)(auVar33._8_4_ <= DAT_0104583c);
        auVar27._12_4_ = -(uint)(auVar33._12_4_ <= DAT_0104583c);
        iVar13 = movmskps(param_2,auVar27);
        if (iVar13 == 0xf) goto LAB_00959d6d;
      }
      fVar37 = *(float *)(iVar1 + 0x20);
      fVar15 = *(float *)(iVar1 + 0x24);
      fVar17 = *(float *)(iVar1 + 0x28);
      fVar19 = *(float *)(iVar1 + 0x2c);
      fVar3 = *(float *)((int)this + 0x20);
      fVar4 = *(float *)((int)this + 0x24);
      fVar5 = *(float *)((int)this + 0x28);
      fVar14 = (fVar5 * fVar15 - fVar4 * fVar17) + fVar19 * fVar3;
      fVar16 = (fVar3 * fVar17 - fVar5 * fVar37) + fVar19 * fVar4;
      fVar18 = (fVar4 * fVar37 - fVar3 * fVar15) + fVar19 * fVar5;
      fVar20 = (fVar18 * fVar15 - fVar16 * fVar17) * DAT_0103fd88;
      fVar28 = (fVar14 * fVar17 - fVar18 * fVar37) * DAT_0103fd88;
      fVar29 = (fVar16 * fVar37 - fVar14 * fVar15) * DAT_0103fd88;
      fVar30 = (fVar14 * fVar37 - fVar14 * fVar37) * DAT_0103fd88;
      fVar14 = *(float *)(iVar1 + 0x30);
      fVar16 = *(float *)(iVar1 + 0x34);
      fVar18 = *(float *)(iVar1 + 0x38);
      fVar6 = *(float *)(iVar1 + 0x3c);
      fVar7 = *(float *)((int)this + 0x10);
      fVar8 = *(float *)((int)this + 0x14);
      fVar9 = *(float *)((int)this + 0x18);
      fVar10 = *(float *)((int)this + 0x1c);
      *(float *)((int)this + 0x10) =
           (fVar9 * fVar15 - fVar8 * fVar17) + fVar19 * fVar7 + fVar10 * fVar37;
      *(float *)((int)this + 0x14) =
           (fVar7 * fVar17 - fVar9 * fVar37) + fVar19 * fVar8 + fVar10 * fVar15;
      *(float *)((int)this + 0x18) =
           (fVar8 * fVar37 - fVar7 * fVar15) + fVar19 * fVar9 + fVar10 * fVar17;
      *(float *)((int)this + 0x1c) =
           fVar10 * fVar19 - (fVar9 * fVar17 + fVar8 * fVar15 + fVar7 * fVar37);
      *(float *)((int)this + 0x20) = fVar20 + fVar3 + fVar14;
      *(float *)((int)this + 0x24) = fVar28 + fVar4 + fVar16;
      *(float *)((int)this + 0x28) = fVar29 + fVar5 + fVar18;
      *(float *)((int)this + 0x2c) = fVar30 + *(float *)((int)this + 0x2c) + fVar6;
    }
  }
  else {
    local_b4 = local_b4 & 0xffffff00;
    bVar11 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_94,*(uint *)((int)param_1 + 0x10)
                              );
    StreamReader_AccumulateStatus(param_1,bVar11);
    bVar11 = Stream_ReadBoolean(*(void **)((int)param_1 + 8),local_74);
    StreamReader_AccumulateStatus(param_1,bVar11);
    if (1 < *(ushort *)((int)param_2 + 4)) {
      bVar11 = Stream_ReadBoolean(*(void **)((int)param_1 + 8),&local_b4);
      StreamReader_AccumulateStatus(param_1,bVar11);
    }
    local_b5 = '\x01';
    ObjectEvents_Dispatch(0x27,*(void **)((int)this + 4),&local_b5);
    if (local_b5 != '\0') {
      TransformContext_AppendAttachmentRow
                (param_2,*(undefined4 *)(*(int *)((int)this + 4) + 8),
                 *(undefined4 *)(*(int *)((int)this + 4) + 0xc),local_b0,local_ac,local_94,
                 local_74[0],(char)local_b4);
      return *(undefined1 *)((int)param_1 + 0x14);
    }
  }
LAB_00959d6d:
  return *(undefined1 *)((int)param_1 + 0x14);
}

