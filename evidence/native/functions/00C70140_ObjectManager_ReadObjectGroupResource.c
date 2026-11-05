/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX object-manager owner plus four stack
   words/RET10h; result meaningful low AL/status. Opens4D1A5589 group resource, reads original
   versions/signatures/pose/context framing.935C90 initializes/reads contexts before object block
   rewind. Reads DWORD object count; ascending serialized GUID loop calls938580 synchronously using
   the same reader/context. After rows calls935820 before resource close and retained-object manager
   admission. Resource recovery,event/init failure,GUID remapping and cross-group order are separate
   from raw row order. */

uint __thiscall
ObjectManager_ReadObjectGroupResource
          (void *this,uint *param_1,void *param_2,uint *param_3,undefined1 *param_4)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [4];
  bool bVar5;
  char cVar6;
  byte bVar7;
  uint3 extraout_var;
  uint uVar8;
  uint uVar9;
  float *pfVar10;
  undefined4 uVar11;
  int iVar12;
  uint3 extraout_var_00;
  uint3 uVar15;
  undefined4 *puVar13;
  int *piVar14;
  int *piVar16;
  uint *puVar17;
  undefined1 auVar18 [4];
  float10 fVar19;
  undefined1 auVar20 [16];
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  float fVar25;
  float fVar26;
  float fVar27;
  float fVar28;
  undefined1 in_XMM4 [16];
  char cStack_332;
  char cStack_331;
  int *local_330;
  uint local_32c;
  uint local_328;
  undefined1 uStack_321;
  undefined1 local_320 [4];
  undefined1 auStack_31c [4];
  undefined8 uStack_318;
  uint local_308;
  uint local_304;
  uint uStack_2fc;
  void *local_2f8;
  uint local_2f4;
  uint *local_2f0;
  uint *local_2ec;
  uint *puStack_2e8;
  uint *puStack_2e4;
  undefined **local_2e0 [11];
  void *pvStack_2b4;
  uint uStack_2b0;
  undefined4 uStack_2ac;
  undefined **local_290 [11];
  void *pvStack_264;
  uint uStack_260;
  undefined4 uStack_25c;
  uint uStack_240;
  undefined4 *puStack_23c;
  uint uStack_238;
  uint uStack_234;
  undefined1 auStack_230 [8];
  float fStack_228;
  undefined4 uStack_224;
  undefined4 local_220;
  undefined4 local_21c;
  undefined4 local_218;
  undefined4 local_214;
  float fStack_210;
  float fStack_20c;
  float fStack_208;
  float fStack_204;
  float fStack_200;
  float fStack_1fc;
  float fStack_1f8;
  float fStack_1f4;
  float fStack_1f0;
  float fStack_1ec;
  float fStack_1e8;
  float fStack_1e4;
  int iStack_1d8;
  int iStack_1d4;
  uint uStack_1d0;
  uint uStack_1cc;
  int *piStack_1c8;
  undefined **local_1c0 [10];
  undefined1 local_198 [4];
  void *local_194;
  uint local_190;
  undefined4 local_18c;
  float local_170;
  float fStack_16c;
  float fStack_168;
  float fStack_164;
  undefined **local_160 [11];
  int *local_134;
  uint local_130;
  undefined4 local_12c;
  float local_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float local_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  undefined4 uStack_f0;
  float fStack_ec;
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  float fStack_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float fStack_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  undefined1 auStack_b0 [16];
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float fStack_90;
  float fStack_8c;
  float fStack_88;
  undefined4 uStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  undefined1 local_40 [16];
  undefined1 auStack_30 [16];
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_330 = this;
  local_2f8 = ObjectRegistry_GetGlobal();
  local_21c = *(undefined4 *)((int)this + 0x4c);
  local_220 = *(undefined4 *)((int)this + 0x48);
  local_218 = 0x4d1a5589;
  local_214 = 0;
  bVar5 = ResourceStreamContext_OpenWrite(param_1,&local_220,0);
  uVar15 = extraout_var;
  if (!bVar5) goto LAB_00c70a0c;
  local_2f4 = CONCAT31(local_2f4._1_3_,1);
  bVar5 = Stream_ReadUInt32((void *)param_1[2],&local_328,param_1[4]);
  StreamReader_AccumulateStatus(param_1,bVar5);
  FUN_0093aa40(local_290);
  FUN_0093aa40(local_2e0);
  if (local_328 < 0x10) {
    *(undefined1 *)((int)this + 0x9c) = 1;
  }
  else {
    FUN_0093aa40(local_1c0);
    FUN_0093aa40(local_160);
    FUN_0093abf0(local_1c0,(int *)param_1[2]);
    FUN_0093abf0(local_160,(int *)param_1[2]);
    PickCandidateMap_Begin(local_198,&local_2f0);
    if (local_2f0 != *(uint **)((int)local_194 + local_190 * 4)) {
      do {
        puVar17 = local_2f0;
        local_304 = local_2f0[1];
        uVar9 = *local_2f0;
        local_32c = local_2f0[2];
        uVar8 = ObjectSignatureService_FindValue(uVar9,local_304,0x2dc343f);
        uVar8 = uVar8 + 1;
        if ((uVar8 == 1) || (local_32c != uVar8)) {
          *(undefined1 *)(local_330 + 0x27) = 1;
        }
        else {
          ObjectSignatureMap_InsertUnique(local_290,uVar9,local_304,uVar8);
        }
        local_2f0 = (uint *)puVar17[4];
        while (local_2f0 == (uint *)0x0) {
          pfVar10 = (float *)(local_2ec + 1);
          local_2ec = local_2ec + 1;
          local_2f0 = (uint *)*pfVar10;
        }
      } while (local_2f0 != *(uint **)((int)local_194 + local_190 * 4));
    }
    puVar17 = (uint *)*local_134;
    piVar16 = local_134;
    if (puVar17 == (uint *)0x0) {
      piVar16 = local_134 + 1;
      iVar12 = local_134[1];
      while (iVar12 == 0) {
        piVar16 = piVar16 + 1;
        iVar12 = *piVar16;
      }
      puVar17 = (uint *)*piVar16;
    }
    if (puVar17 != (uint *)local_134[local_130]) {
      do {
        local_304 = puVar17[1];
        local_308 = *puVar17;
        local_32c = puVar17[2];
        uVar9 = ObjectSignatureService_FindValue(local_308,local_304,0x736884f1);
        uVar9 = uVar9 + 1;
        if ((uVar9 == 1) || (local_32c != uVar9)) {
          *(undefined1 *)(local_330 + 0x27) = 1;
        }
        else {
          ObjectSignatureMap_InsertUnique(local_2e0,local_308,local_304,uVar9);
        }
        for (puVar17 = (uint *)puVar17[4]; puVar17 == (uint *)0x0; puVar17 = (uint *)*puVar17) {
          puVar17 = (uint *)(piVar16 + 1);
          piVar16 = piVar16 + 1;
        }
      } while (puVar17 != (uint *)local_134[local_130]);
    }
    World_InvokeLoadPumpCallback();
    local_160[0] = &PTR_FUN_01044038;
    FUN_00b305a0((int)local_134,local_130);
    local_12c = 0;
    if (1 < local_130) {
      Memory_FreeIfNonNull(local_134);
    }
    FUN_0059f450(local_160);
    local_1c0[0] = &PTR_FUN_01044038;
    FUN_00b305a0((int)local_194,local_190);
    local_18c = 0;
    if (1 < local_190) {
      Memory_FreeIfNonNull(local_194);
    }
    FUN_0059f450(local_1c0);
  }
  cVar6 = FUN_0058b460(L"forceRefresh",0);
  piVar16 = local_330;
  if (cVar6 != '\0') {
    *(undefined1 *)(local_330 + 0x27) = 1;
  }
  if (local_328 == 0xe) {
    ReferenceStore_ReadEmbeddedAndRestorePosition(param_2,param_1);
  }
  uStack_318._0_4_ = (undefined4 *)0x0;
  uStack_318._4_4_ = FLOAT_00f998f8;
  auVar3._8_8_ = 0;
  auVar3._0_8_ = uStack_318;
  _local_320 = auVar3 << 0x40;
  auVar23._12_4_ = 0;
  auVar23._0_12_ = _auStack_31c;
  _local_320 = auVar23 << 0x20;
  local_110 = 0.0;
  fStack_10c = 0.0;
  fStack_108 = 0.0;
  fStack_104 = FLOAT_00f998f8;
  local_a0 = 0.0;
  fStack_9c = 0.0;
  fStack_98 = 0.0;
  fStack_94 = 0.0;
  local_100 = 0.0;
  fStack_fc = 0.0;
  fStack_f8 = 0.0;
  fStack_f4 = 0.0;
  if (0x11 < local_328) {
    if (param_4 != (undefined1 *)0x0) {
      *param_4 = 0;
    }
    FUN_007d7b60(param_1,(uint *)&local_170);
    bVar5 = Stream_ReadUInt32((void *)param_1[2],(uint *)&local_330,param_1[4]);
    StreamReader_AccumulateStatus(param_1,bVar5);
    if ((char)param_1[5] != '\0') {
      pfVar10 = (float *)(**(code **)(*piVar16 + 100))(local_40);
      auVar20._4_4_ = -(uint)(pfVar10[1] == fStack_16c);
      auVar20._0_4_ = -(uint)(*pfVar10 == local_170);
      auVar20._8_4_ = -(uint)(pfVar10[2] == fStack_168);
      auVar20._12_4_ = -(uint)(pfVar10[3] == fStack_164);
      uVar11 = movmskps(pfVar10,auVar20);
      if ((((byte)uVar11 & 7) != 7) ||
         (fVar19 = (float10)(**(code **)(*piVar16 + 0x68))(), (float10)(float)local_330 != fVar19))
      {
        uStack_f0 = 0;
        fStack_ec = FLOAT_00f998f8;
        uStack_e8 = 0;
        uStack_e4 = 0;
        _auStack_230 = ZEXT416((uint)FLOAT_00f998f8) << 0x20;
        auVar21._4_4_ = local_330;
        auVar21._0_4_ = local_330;
        auVar21._8_4_ = local_330;
        auVar21._12_4_ = local_330;
        auVar1._4_4_ = DAT_0103fd88;
        auVar1._0_4_ = DAT_0103fd88;
        auVar1._8_4_ = DAT_0103fd88;
        auVar1._12_4_ = DAT_0103fd88;
        _local_320 = divps(auVar21,auVar1);
        fVar19 = (float10)fsin((float10)(float)local_320);
        fStack_210 = DAT_0103fd88;
        fStack_20c = DAT_0103fd88;
        fStack_208 = DAT_0103fd88;
        fStack_204 = DAT_0103fd88;
        fStack_74 = (float)fVar19;
        fVar19 = (float10)fcos((float10)(float)local_320);
        fStack_e0 = fStack_74 * 0.0;
        fStack_6c = fStack_74 * 0.0;
        fStack_68 = fStack_74 * 0.0;
        fStack_64 = fStack_74 * 0.0;
        fStack_20 = fStack_74 * 0.0;
        fStack_1c = fStack_74 * 0.0;
        fStack_d8 = fStack_74 * 0.0;
        fStack_14 = fStack_74 * 0.0;
        fStack_80 = FLOAT_00f998f8 * fStack_74;
        fStack_dc = FLOAT_00f998f8 * fStack_74;
        fStack_78 = FLOAT_00f998f8 * fStack_74;
        fStack_74 = FLOAT_00f998f8 * fStack_74;
        fStack_d4 = (float)fVar19;
        fStack_d0 = local_170;
        fStack_cc = fStack_16c;
        fStack_c8 = fStack_168;
        fStack_c4 = fStack_164;
        auStack_b0 = _local_320;
        fStack_7c = fStack_dc;
        fStack_70 = fStack_e0;
        fStack_18 = fStack_d8;
        fVar19 = (float10)(**(code **)(*piVar16 + 0x68))();
        uVar11 = auStack_230._0_4_;
        fStack_90 = (float)auStack_230._0_4_;
        fStack_8c = (float)auStack_230._4_4_;
        fStack_88 = fStack_228;
        uStack_84 = uStack_224;
        fVar25 = (float)fVar19;
        auVar22._4_4_ = fVar25;
        auVar22._0_4_ = fVar25;
        auVar22._8_4_ = fVar25;
        auVar22._12_4_ = fVar25;
        auVar2._4_4_ = fStack_20c;
        auVar2._0_4_ = fStack_210;
        auVar2._8_4_ = fStack_208;
        auVar2._12_4_ = fStack_204;
        auVar23 = divps(auVar22,auVar2);
        auStack_230._0_4_ = auVar23._0_4_;
        fVar19 = (float10)fsin((float10)(float)auStack_230._0_4_);
        fStack_b4 = (float)fVar19;
        fStack_1f0 = fStack_228 * fStack_b4;
        fStack_1ec = fStack_228 * fStack_b4;
        fStack_1e8 = fStack_228 * fStack_b4;
        fStack_1e4 = fStack_228 * fStack_b4;
        fStack_200 = (float)auStack_230._4_4_ * fStack_b4;
        fStack_1fc = (float)auStack_230._4_4_ * fStack_b4;
        fStack_1f8 = (float)auStack_230._4_4_ * fStack_b4;
        fStack_1f4 = (float)auStack_230._4_4_ * fStack_b4;
        fStack_c0 = (float)uVar11 * fStack_b4;
        fStack_bc = (float)uVar11 * fStack_b4;
        fStack_b8 = (float)uVar11 * fStack_b4;
        fStack_b4 = (float)uVar11 * fStack_b4;
        _auStack_230 = auVar23;
        pfVar10 = (float *)(**(code **)(*piVar16 + 100))(auStack_30);
        fVar19 = (float10)fcos((float10)(float)auStack_230._0_4_);
        local_2f0 = (uint *)(float)fVar19;
        auVar24._0_4_ =
             fStack_d4 * fStack_d4 + fStack_dc * fStack_dc +
             fStack_d8 * fStack_d8 + fStack_e0 * fStack_e0;
        auVar24._4_4_ = auVar24._0_4_;
        auVar24._8_4_ = auVar24._0_4_;
        auVar24._12_4_ = auVar24._0_4_;
        auVar23 = rcpps(in_XMM4,auVar24);
        fVar25 = (fStack_210 - auVar23._0_4_ * auVar24._0_4_) * auVar23._0_4_;
        fVar26 = (fStack_20c - auVar23._4_4_ * auVar24._0_4_) * auVar23._4_4_;
        fVar27 = (fStack_208 - auVar23._8_4_ * auVar24._0_4_) * auVar23._8_4_;
        fVar28 = (fStack_204 - auVar23._12_4_ * auVar24._0_4_) * auVar23._12_4_;
        fStack_1f4 = (fStack_210 - fVar25 * auVar24._0_4_) * fVar25 * -fStack_e0;
        fStack_1f8 = (fStack_20c - fVar26 * auVar24._0_4_) * fVar26 * -fStack_dc;
        fStack_200 = (fStack_208 - fVar27 * auVar24._0_4_) * fVar27 * -fStack_d8;
        fVar25 = (fStack_204 - fVar28 * auVar24._0_4_) * fVar28 * fStack_d4;
        fVar26 = (fStack_c8 * fStack_1f8 - fStack_cc * fStack_200) + fStack_d0 * fVar25;
        fVar27 = (fStack_d0 * fStack_200 - fStack_c8 * fStack_1f4) + fStack_cc * fVar25;
        fVar28 = (fStack_cc * fStack_1f4 - fStack_d0 * fStack_1f8) + fStack_c8 * fVar25;
        fStack_50 = local_a0 -
                    ((fVar28 * fStack_1f8 - fVar27 * fStack_200) * fStack_210 + fStack_d0);
        fStack_4c = fStack_9c -
                    ((fVar26 * fStack_200 - fVar28 * fStack_1f4) * fStack_20c + fStack_cc);
        fStack_48 = fStack_98 -
                    ((fVar27 * fStack_1f4 - fVar26 * fStack_1f8) * fStack_208 + fStack_c8);
        fStack_44 = fStack_94 -
                    ((fVar26 * fStack_1f4 - fVar26 * fStack_1f4) * fStack_204 + fStack_c4);
        fVar26 = (fStack_48 * fStack_1fc - fStack_4c * fStack_1e8) + fStack_50 * (float)local_2f0;
        fVar27 = (fStack_50 * fStack_1e8 - fStack_48 * fStack_c0) + fStack_4c * (float)local_2f0;
        fVar28 = (fStack_4c * fStack_c0 - fStack_50 * fStack_1fc) + fStack_48 * (float)local_2f0;
        local_100 = (fVar28 * fStack_1fc - fVar27 * fStack_1e8) * fStack_210 + fStack_50 + *pfVar10;
        fStack_fc = (fVar26 * fStack_1e8 - fVar28 * fStack_c0) * fStack_20c + fStack_4c + pfVar10[1]
        ;
        fStack_f8 = (fVar27 * fStack_c0 - fVar26 * fStack_1fc) * fStack_208 + fStack_48 + pfVar10[2]
        ;
        fStack_f4 = (fVar26 * fStack_c0 - fVar26 * fStack_c0) * fStack_204 + fStack_44 + pfVar10[3];
        local_110 = (fStack_1fc * fStack_200 - fStack_1e8 * fStack_1f8) +
                    (float)local_2f0 * fStack_1f4 + fVar25 * fStack_c0;
        fStack_10c = (fStack_1e8 * fStack_1f4 - fStack_c0 * fStack_200) +
                     (float)local_2f0 * fStack_1f8 + fVar25 * fStack_1fc;
        fStack_108 = (fStack_c0 * fStack_1f8 - fStack_1fc * fStack_1f4) +
                     (float)local_2f0 * fStack_200 + fVar25 * fStack_1e8;
        fStack_104 = fVar25 * (float)local_2f0 -
                     (fStack_200 * fStack_1e8 + fStack_1f8 * fStack_1fc + fStack_1f4 * fStack_c0);
        local_2ec = local_2f0;
        puStack_2e8 = local_2f0;
        puStack_2e4 = local_2f0;
        fStack_1fc = fStack_1f4;
        fStack_1f0 = fStack_1f8;
        fStack_1ec = fStack_200;
        fStack_1e8 = fStack_1f4;
        fStack_1e4 = fStack_1f4;
      }
    }
  }
  local_330 = (int *)param_3[4];
  if (local_328 < 0xd) {
LAB_00c70a25:
    FUN_00935770(param_3,param_2);
    FUN_009358b0(param_3,local_328);
    FUN_00935fb0(param_3,&local_110);
    uStack_238 = 0xffffffff;
    if (local_328 < 0xc) {
LAB_00c70b24:
      if (local_328 < 8) {
        bVar7 = ObjectIoContexts_ReadOrInitialize(param_3,piVar16,(void *)0x0);
        if (bVar7 == 0) {
          StreamReader_AccumulateStatus(param_1,0);
          *(undefined1 *)(param_1 + 5) = 0;
          local_2e0[0] = &PTR_FUN_01044038;
          FUN_00b305a0((int)pvStack_2b4,uStack_2b0);
          goto LAB_00c70ab2;
        }
LAB_00c70d34:
        bVar5 = Stream_ReadUInt32((void *)param_1[2],&uStack_2fc,param_1[4]);
        StreamReader_AccumulateStatus(param_1,bVar5);
        if ((char)param_1[5] != '\0') {
          _local_320 = ZEXT812(0);
          uStack_318._4_4_ = "World/ObjMgr/objs";
          FUN_004d5650(local_320,uStack_2fc);
          local_32c = 0;
          if (uStack_2fc != 0) {
            do {
              bVar5 = Stream_ReadUInt64((void *)param_1[2],(ulonglong *)&local_308,param_1[4]);
              StreamReader_AccumulateStatus(param_1,bVar5);
              if ((char)param_1[5] == '\0') goto LAB_00c70fb6;
              uStack_321 = 0;
              cStack_332 = '\x01';
              cStack_331 = '\0';
              puVar13 = ObjectRegistry_ReadAndCreateObjectRow
                                  (local_2f8,param_1,param_3,CONCAT44(local_304,local_308),local_290
                                   ,local_2e0,piVar16[0x12],piVar16[0x13],&uStack_321,&cStack_332,
                                   &cStack_331);
              if (puVar13 == (undefined4 *)0x0) {
                if ((cStack_332 != '\0') && (piVar14 = (int *)FUN_007693a0(), piVar14 != (int *)0x0)
                   ) {
                  iStack_1d8 = piVar16[0x12];
                  iStack_1d4 = piVar16[0x13];
                  uStack_1d0 = local_308;
                  uStack_1cc = local_304;
                  piStack_1c8 = piVar16;
                  (**(code **)(*piVar14 + 0x18))(0x7e44ad3,&iStack_1d8,0);
                }
              }
              else {
                LOCK();
                puVar13[1] = puVar13[1] + 1;
                UNLOCK();
                if (cStack_331 != '\0') {
                  *(undefined1 *)(piVar16 + 0x27) = 1;
                }
                auVar4 = auStack_31c;
                puStack_23c = puVar13;
                if ((uint)auStack_31c < (undefined4 *)uStack_318) {
                  bVar5 = auStack_31c != (undefined1  [4])0x0;
                  auStack_31c = (undefined1  [4])((int)auStack_31c + 4);
                  if (bVar5) {
                    *(undefined4 **)auVar4 = puVar13;
                  }
                }
                else {
                  FUN_00982420(local_320,(undefined4 *)auStack_31c,&puStack_23c);
                }
              }
              if ((char)param_1[5] == '\0') {
                if (puVar13 != (undefined4 *)0x0) {
                  piVar14 = puVar13 + 1;
                  LOCK();
                  iVar12 = *piVar14;
                  *piVar14 = *piVar14 + -1;
                  UNLOCK();
                  if (iVar12 == 1) {
                    LOCK();
                    *piVar14 = 1;
                    UNLOCK();
                    (**(code **)*puVar13)(1);
                  }
                }
                break;
              }
              if ((uStack_2fc & 0x1f) == 0) {
                World_InvokeLoadPumpCallback();
              }
              if (puVar13 != (undefined4 *)0x0) {
                piVar14 = puVar13 + 1;
                LOCK();
                iVar12 = *piVar14;
                *piVar14 = *piVar14 + -1;
                UNLOCK();
                if (iVar12 == 1) {
                  LOCK();
                  *piVar14 = 1;
                  UNLOCK();
                  (**(code **)*puVar13)(1);
                }
              }
              local_32c = local_32c + 1;
            } while (local_32c < uStack_2fc);
          }
          if ((char)param_1[5] == '\0') {
LAB_00c70fb6:
            local_2f4 = local_2f4 & 0xffffff00;
          }
          uVar11 = ObjectIoContexts_FinalizeLoad(param_3,piVar16,local_2f4);
          if ((char)uVar11 != '\0') {
            ResourceStreamContext_Close(param_1);
            auVar4 = local_320;
            auVar18 = local_320;
            if (local_320 != auStack_31c) {
              do {
                iVar12 = *(int *)auVar18;
                if ((*(uint *)(iVar12 + 0x28) >> 0x16 & 1) == 0) {
                  (**(code **)(*piVar16 + 0x30))(iVar12);
                }
                else {
                  *(uint *)(iVar12 + 0x28) = *(uint *)(iVar12 + 0x28) & 0xffbfffff;
                  ObjectRegistry_RemoveGuid
                            (local_2f8,
                             CONCAT44(*(undefined4 *)(iVar12 + 0xc),*(undefined4 *)(iVar12 + 8)));
                }
                auVar18 = (undefined1  [4])((int)auVar18 + 4);
              } while (auVar18 != auStack_31c);
            }
            if (auVar4 != (undefined1  [4])0x0) {
              Memory_FreeIfNonNull((void *)auVar4);
            }
            local_2e0[0] = &PTR_FUN_01044038;
            FUN_00b305a0((int)pvStack_2b4,uStack_2b0);
            uStack_2ac = 0;
            if (1 < uStack_2b0) {
              Memory_FreeIfNonNull(pvStack_2b4);
            }
            FUN_0059f450(local_2e0);
            local_290[0] = &PTR_FUN_01044038;
            FUN_00b305a0((int)pvStack_264,uStack_260);
            uStack_25c = 0;
            if (1 < uStack_260) {
              Memory_FreeIfNonNull(pvStack_264);
            }
            uVar11 = FUN_0059f450(local_290);
            return CONCAT31((int3)((uint)uVar11 >> 8),(undefined1)local_2f4);
          }
          StreamReader_AccumulateStatus(param_1,0);
          *(undefined1 *)(param_1 + 5) = 0;
          if (local_320 != (undefined1  [4])0x0) {
            Memory_FreeIfNonNull((void *)local_320);
          }
          local_2e0[0] = &PTR_FUN_01044038;
          FUN_00b305a0((int)pvStack_2b4,uStack_2b0);
          goto LAB_00c7098f;
        }
        local_2e0[0] = &PTR_FUN_01044038;
        FUN_00b305a0((int)pvStack_2b4,uStack_2b0);
        uStack_2ac = 0;
        if (1 < uStack_2b0) {
          Memory_FreeIfNonNull(pvStack_2b4);
        }
        FUN_0059f450(local_2e0);
        local_290[0] = &PTR_FUN_01044038;
        FUN_00b305a0((int)pvStack_264,uStack_260);
      }
      else {
        bVar5 = Stream_ReadUInt32((void *)param_1[2],&uStack_234,param_1[4]);
        StreamReader_AccumulateStatus(param_1,bVar5);
        if ((char)param_1[5] == '\0') {
          ResourceStreamContext_Close(param_1);
          local_2e0[0] = &PTR_FUN_01044038;
          FUN_00b305a0((int)pvStack_2b4,uStack_2b0);
          uStack_2ac = 0;
          if (1 < uStack_2b0) {
            Memory_FreeIfNonNull(pvStack_2b4);
          }
          FUN_0059f450(local_2e0);
          local_290[0] = &PTR_FUN_01044038;
          FUN_00b305a0((int)pvStack_264,uStack_260);
        }
        else {
          iVar12 = StreamContext_GetPositionAndMarkNegative(param_1);
          StreamContext_SeekWithSignedAbsoluteGuard(param_1,iVar12 + uStack_234,0);
          if ((char)param_1[5] != '\0') {
            bVar7 = ObjectIoContexts_ReadOrInitialize(param_3,piVar16,param_1);
            if (bVar7 == 0) {
              ResourceStreamContext_Close(param_1);
              FUN_0093aab0(local_2e0);
              uVar9 = FUN_0093aab0(local_290);
              return uVar9 & 0xffffff00;
            }
            StreamContext_SeekWithSignedAbsoluteGuard(param_1,iVar12,0);
            goto LAB_00c70d34;
          }
          ResourceStreamContext_Close(param_1);
          local_2e0[0] = &PTR_FUN_01044038;
          FUN_00b305a0((int)pvStack_2b4,uStack_2b0);
          uStack_2ac = 0;
          if (1 < uStack_2b0) {
            Memory_FreeIfNonNull(pvStack_2b4);
          }
          FUN_0059f450(local_2e0);
          local_290[0] = &PTR_FUN_01044038;
          FUN_00b305a0((int)pvStack_264,uStack_260);
        }
      }
    }
    else {
      bVar5 = Stream_ReadUInt32((void *)param_1[2],&uStack_238,param_1[4]);
      StreamReader_AccumulateStatus(param_1,bVar5);
      if ((char)param_1[5] != '\0') goto LAB_00c70b24;
      local_2e0[0] = &PTR_FUN_01044038;
      FUN_00b305a0((int)pvStack_2b4,uStack_2b0);
LAB_00c70ab2:
      uStack_2ac = 0;
      if (1 < uStack_2b0) {
        Memory_FreeIfNonNull(pvStack_2b4);
      }
      FUN_0059f450(local_2e0);
      local_290[0] = &PTR_FUN_01044038;
      FUN_00b305a0((int)pvStack_264,uStack_260);
    }
  }
  else {
    bVar5 = Stream_ReadUInt32((void *)param_1[2],&local_32c,param_1[4]);
    StreamReader_AccumulateStatus(param_1,bVar5);
    bVar5 = Stream_ReadUInt32((void *)param_1[2],&uStack_240,param_1[4]);
    StreamReader_AccumulateStatus(param_1,bVar5);
    if (local_32c == 0) goto LAB_00c70a25;
    iVar12 = StreamContext_GetPositionAndMarkNegative(param_1);
    StreamContext_SeekWithSignedAbsoluteGuard(param_1,local_32c,0);
    FUN_007d3d10((int)local_330);
    uVar9 = NativeObjectTable_ReadAndMaterialize(local_330,param_1);
    if ((char)uVar9 != '\0') {
      StreamContext_SeekWithSignedAbsoluteGuard(param_1,iVar12,0);
      goto LAB_00c70a25;
    }
    local_2e0[0] = &PTR_FUN_01044038;
    FUN_00b305a0((int)pvStack_2b4,uStack_2b0);
LAB_00c7098f:
    uStack_2ac = 0;
    if (1 < uStack_2b0) {
      Memory_FreeIfNonNull(pvStack_2b4);
    }
    FUN_0059f450(local_2e0);
    local_290[0] = &PTR_FUN_01044038;
    FUN_00b305a0((int)pvStack_264,uStack_260);
  }
  uStack_25c = 0;
  if (1 < uStack_260) {
    uStack_25c = 0;
    Memory_FreeIfNonNull(pvStack_264);
  }
  FUN_0059f450(local_290);
  uVar15 = extraout_var_00;
LAB_00c70a0c:
  return (uint)uVar15 << 8;
}

