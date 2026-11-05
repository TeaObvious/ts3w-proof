/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x005eb433) */
/* WARNING: Removing unreachable block (ram,0x005eb456) */
/* WARNING: Removing unreachable block (ram,0x005eb477) */
/* WARNING: Removing unreachable block (ram,0x005eb4a2) */
/* WARNING: Removing unreachable block (ram,0x005eb4ae) */
/* WARNING: Removing unreachable block (ram,0x005eb4e8) */
/* WARNING: Removing unreachable block (ram,0x005eb4b8) */
/* WARNING: Removing unreachable block (ram,0x005eb50c) */
/* WARNING: Removing unreachable block (ram,0x005ea12e) */
/* WARNING: Removing unreachable block (ram,0x005ea147) */
/* WARNING: Removing unreachable block (ram,0x005ea15f) */
/* WARNING: Removing unreachable block (ram,0x005ea163) */
/* WARNING: Removing unreachable block (ram,0x005ea16c) */
/* PC1.67 outfit wire instruction contract: this in ECX plus stream, opaque forwarded load argument,
   optional external key vector at stack+C; RET0C. Unsigned version-2<=19 admits2..21. v8+ relative
   IGT table, byte indices before21 and ushort at21. v9+ preset list; v15+ nonzero flag selects
   binary Preset_ReadBinaryBlock; five texture pairs per part fromv6, v7/8 inline UTF16. Blend
   branch physically exists at5EB433..525. This full native loader also resolves CASPs/texture
   resources and submits jobs: shared format decoding alone does not reproduce those side effects.
   Stack formals corrected against all3 direct incoming calls; no instruction/body change. */

undefined1 __thiscall
SimOutfit_ReadWire(void *this,int *param_1,int *param_2,int *externalKeyVector)

{
  int *allocation;
  int *piVar1;
  LPCWSTR allocation_00;
  bool bVar2;
  char cVar3;
  byte bVar4;
  int *piVar5;
  int iVar6;
  void *pvVar7;
  uint uVar8;
  void *this_00;
  uint uVar9;
  int iVar10;
  undefined4 *puVar11;
  ushort uVar12;
  undefined4 unaff_EBP;
  uint uVar13;
  ulonglong *puVar14;
  uint *puVar15;
  undefined4 *puVar16;
  int *piVar17;
  int *piVar18;
  undefined4 *puVar19;
  bool bVar20;
  int *unaff_retaddr;
  uint uVar21;
  uint *puVar22;
  byte bVar24;
  ushort uVar25;
  undefined3 uVar23;
  undefined1 auStack_154 [2];
  byte abStack_152 [2];
  undefined1 local_150 [4];
  int *piStack_14c;
  void *local_148;
  uint uStack_144;
  uint local_140;
  uint uStack_13c;
  int *local_138;
  byte bStack_131;
  int *piStack_130;
  void **ppvStack_12c;
  byte bStack_127;
  byte bStack_126;
  byte bStack_125;
  undefined8 uStack_124;
  uint uStack_11c;
  uint uStack_118;
  int *piStack_114;
  void *pvStack_110;
  int *local_10c;
  uint local_108;
  void *pvStack_104;
  uint uStack_100;
  undefined8 uStack_fc;
  uint uStack_f4;
  uint uStack_f0;
  int *piStack_ec;
  int *piStack_e8;
  undefined4 uStack_e4;
  char *pcStack_e0;
  LPCWSTR pWStack_dc;
  LPCWSTR pWStack_d8;
  undefined2 *puStack_d4;
  char *pcStack_d0;
  char *pcStack_cc;
  int *piStack_c8;
  uint uStack_c4;
  int *piStack_c0;
  int *piStack_bc;
  undefined4 uStack_b8;
  char *pcStack_b4;
  int *piStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  char *pcStack_a4;
  void *pvStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  char *pcStack_94;
  uint uStack_90;
  uint uStack_8c;
  uint uStack_88;
  uint uStack_84;
  void *apvStack_80 [4];
  undefined1 auStack_70 [4];
  undefined4 *******pppppppuStack_6c;
  undefined4 *******pppppppuStack_68;
  undefined4 *puStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  char *pcStack_58;
  int iStack_54;
  int iStack_50;
  LPCWSTR pWStack_4c;
  undefined1 *puStack_48;
  undefined2 *puStack_44;
  char *pcStack_40;
  uint uStack_3c;
  uint uStack_38;
  undefined4 auStack_34 [5];
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  uVar25 = (ushort)((uint)unaff_EBP >> 0x10);
  local_10c = this;
  StreamReader_Construct(local_150,param_1,1);
  local_108 = FUN_005ae9b0();
  local_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_14 = 0;
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  bVar2 = Stream_ReadUInt32(local_148,(uint *)&local_138,local_140);
  StreamReader_AccumulateStatus(local_150,bVar2);
  if (0x13 < (int)local_138 - 2U) {
    StreamReader_ReleaseAuxiliary(local_150);
    return 0;
  }
  FUN_005e7120((int)this);
  piVar5 = JobManager_GetInterface();
  (**(code **)(*piVar5 + 0x10))((int *)((int)this + 0xb8));
  if (this == (void *)0x0) {
    iVar6 = 0;
  }
  else {
    iVar6 = (int)this + 0x30;
  }
  iVar10 = *(int *)((int)this + 0xb8);
  *(int *)(iVar10 + 0xc) = iVar6;
  *(undefined1 **)(iVar10 + 8) = &LAB_00599c70;
  pcStack_cc = "CAS/SimOutfitResource/Load";
  FUN_007d9500(apvStack_80,&pcStack_cc);
  ppvStack_12c = (void **)0x0;
  pcStack_cc = (char *)0x0;
  if (7 < uStack_13c) {
    bVar2 = Stream_ReadUInt32(piStack_14c,&local_108,uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
    piStack_130 = (int *)StreamContext_GetPositionAndMarkNegative(auStack_154);
    StreamContext_SeekWithSignedAbsoluteGuard(auStack_154,local_108,1);
    local_138 = (int *)0x0;
    if (uStack_13c < 0x15) {
      bVar2 = Stream_ReadByte(piStack_14c,auStack_154 + -3);
      StreamReader_AccumulateStatus(auStack_154,bVar2);
      local_138 = (int *)0x0;
    }
    else {
      ReadUInt16AndAccumulateStatus(auStack_154,(ushort *)&local_138);
    }
    uVar13 = (uint)local_138 & 0xffff;
    iVar6 = StreamContext_GetPositionAndMarkNegative(auStack_154);
    pcStack_cc = (char *)(iVar6 + uVar13 * 0x10);
    if (param_2 == (int *)0x0) {
      ppvStack_12c = apvStack_80;
      FUN_007998a0(ppvStack_12c,uVar13);
      uVar12 = 0;
      if ((ushort)local_138 != 0) {
        do {
          puVar14 = (ulonglong *)((uint)uVar12 * 0x10 + (int)apvStack_80[0]);
          bVar2 = Stream_ReadUInt64(piStack_14c,puVar14,uStack_144);
          StreamReader_AccumulateStatus(auStack_154,bVar2);
          bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)((int)puVar14 + 0xc),uStack_144);
          StreamReader_AccumulateStatus(auStack_154,bVar2);
          bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)(puVar14 + 1),uStack_144);
          StreamReader_AccumulateStatus(auStack_154,bVar2);
          uVar12 = uVar12 + 1;
        } while (uVar12 < (ushort)local_138);
      }
    }
    else {
      ppvStack_12c = (void **)param_2;
    }
    StreamContext_SeekWithSignedAbsoluteGuard(auStack_154,(int)piStack_130,0);
  }
  piStack_ec = (int *)0x0;
  piStack_e8 = (int *)0x0;
  uStack_e4 = 0;
  pcStack_e0 = "CAS/SimOutfitResource/Load";
  if (8 < uStack_13c) {
    bVar20 = 0xe < uStack_13c;
    piStack_130 = (int *)0x0;
    bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)&piStack_130,uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
    FUN_0062afc0(&piStack_ec,(uint)piStack_130);
    pcStack_d0 = "CAS/SimOutfitResource/Load/PresetStr";
    pWStack_dc = (LPCWSTR)&DAT_011c8e54;
    pWStack_d8 = (LPCWSTR)&DAT_011c8e54;
    puStack_d4 = &DAT_011c8e56;
    local_138 = (int *)0x0;
    if (piStack_130 != (int *)0x0) {
      do {
        pvVar7 = (void *)FUN_004e4500(0x60,"CAS/SimOutfitResource/Preset",0);
        if (pvVar7 == (void *)0x0) {
          piVar5 = (int *)0x0;
        }
        else {
          piVar5 = (int *)DesignPreset_InitializeEmpty(pvVar7);
        }
        piVar17 = (int *)piStack_ec[(int)local_138];
        if (piVar5 != piVar17) {
          if (piVar5 != (int *)0x0) {
            (**(code **)*piVar5)();
          }
          piStack_ec[(int)local_138] = (int)piVar5;
          if (piVar17 != (int *)0x0) {
            (**(code **)(*piVar17 + 4))();
          }
        }
        pvVar7 = (void *)piStack_ec[(int)local_138];
        if (pvVar7 == (void *)0x0) {
          if ((2 < (int)((int)puStack_d4 - (int)pWStack_dc & 0xfffffffeU)) &&
             (pWStack_dc != (LPCWSTR)0x0)) {
            Memory_FreeIfNonNull(pWStack_dc);
          }
          FUN_00626e50((int *)&piStack_ec);
          bVar2 = apvStack_80[0] == (void *)0x0;
          goto LAB_005eb5ca;
        }
        if (bVar20) {
          bVar2 = Stream_ReadBoolean(piStack_14c,auStack_154 + -3);
          StreamReader_AccumulateStatus(auStack_154,bVar2);
        }
        if (pWStack_dc != pWStack_d8) {
          *pWStack_dc = L'\0';
          pWStack_d8 = pWStack_dc;
        }
        StreamContext_ReadUtf16String(auStack_154,&pWStack_dc);
        cVar3 = FUN_005c0060(pvVar7,pWStack_dc);
        if (cVar3 == '\0') {
          if ((2 < (int)((int)puStack_d4 - (int)pWStack_dc & 0xfffffffeU)) &&
             (pWStack_dc != (LPCWSTR)0x0)) {
            Memory_FreeIfNonNull(pWStack_dc);
          }
          FUN_00626e50((int *)&piStack_ec);
          bVar2 = apvStack_80[0] == (void *)0x0;
          goto LAB_005eb5ca;
        }
        local_138 = (int *)((int)local_138 + 1);
      } while (local_138 < piStack_130);
    }
    uVar25 = (ushort)bVar20;
    if ((2 < (int)((int)puStack_d4 - (int)pWStack_dc & 0xfffffffeU)) && (pWStack_dc != (LPCWSTR)0x0)
       ) {
      Memory_FreeIfNonNull(pWStack_dc);
    }
  }
  if (0xd < uStack_13c) {
    puVar14 = (ulonglong *)((int)this + 0xd0);
    bVar2 = Stream_ReadUInt64(piStack_14c,puVar14,uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
    if (uStack_13c < 0x13) {
      uStack_c4 = *(uint *)((int)this + 0xd4);
      if ((*(uint *)puVar14 & uStack_c4) != 0xffffffff) {
        *(uint *)puVar14 = *(uint *)puVar14;
        *(uint *)((int)this + 0xd4) = (uStack_c4 & 0xffff0000) << 0xc | uStack_c4 & 0xffff;
      }
    }
  }
  bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)((int)this + 0x68),uStack_144);
  StreamReader_AccumulateStatus(auStack_154,bVar2);
  bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)((int)this + 0x6c),uStack_144);
  StreamReader_AccumulateStatus(auStack_154,bVar2);
  if (4 < uStack_13c) {
    bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)((int)this + 0x70),uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
  }
  if (9 < uStack_13c) {
    bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)((int)this + 0x74),uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
  }
  *(undefined4 *)((int)this + 0x38) = 0;
  bVar2 = Stream_ReadUInt32(piStack_14c,&uStack_100,uStack_144);
  StreamReader_AccumulateStatus(auStack_154,bVar2);
  uVar13 = *(uint *)((int)this + 0x38) & 0xffffff80 | uStack_100;
  puVar16 = (undefined4 *)((int)this + 0xa8);
  *(uint *)((int)this + 0x38) = uVar13;
  puVar19 = puVar16;
  pvVar7 = (void *)FUN_005ebac0();
  FUN_005ecdd0(pvVar7,uVar13,puVar19);
  bVar2 = Stream_ReadUInt32(piStack_14c,&uStack_100,uStack_144);
  StreamReader_AccumulateStatus(auStack_154,bVar2);
  *(uint *)((int)this + 0x38) = *(uint *)((int)this + 0x38) & 0xffffcfff | uStack_100;
  bVar2 = Stream_ReadUInt32(piStack_14c,&uStack_100,uStack_144);
  StreamReader_AccumulateStatus(auStack_154,bVar2);
  if (uStack_100 == 0x10000) {
    uStack_100 = 0x100;
  }
  uVar13 = *(uint *)((int)this + 0x38) & 0xffff30ff | uStack_100;
  *(uint *)((int)this + 0x38) = uVar13;
  pvVar7 = (void *)FUN_005ebac0();
  FUN_005ecdd0(pvVar7,uVar13,puVar16);
  if (0xc < uStack_13c) {
    bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)((int)this + 0x3c),uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
  }
  puVar14 = (ulonglong *)((int)this + 0x40);
  if (ppvStack_12c == (void **)0x0) {
    bVar2 = Stream_ReadUInt64(piStack_14c,puVar14,uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
    bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)((int)this + 0x4c),uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
    bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)((int)this + 0x48),uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
  }
  else {
    FUN_005e56e0(uStack_13c,(uint *)puVar14,auStack_154,(int *)ppvStack_12c);
  }
  if (uStack_13c < 0xb) {
    if (ppvStack_12c == (void **)0x0) {
      bVar2 = Stream_ReadUInt64(piStack_14c,(ulonglong *)&pWStack_dc,uStack_144);
      StreamReader_AccumulateStatus(auStack_154,bVar2);
      bVar2 = Stream_ReadUInt32(piStack_14c,&local_108,uStack_144);
      StreamReader_AccumulateStatus(auStack_154,bVar2);
      bVar2 = Stream_ReadUInt32(piStack_14c,&local_108,uStack_144);
    }
    else {
      bVar2 = Stream_ReadByte(piStack_14c,auStack_154 + -2);
    }
    StreamReader_AccumulateStatus(auStack_154,bVar2);
  }
  bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)((int)this + 0x50),uStack_144);
  StreamReader_AccumulateStatus(auStack_154,bVar2);
  if (uStack_13c < 0xb) {
    bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)&piStack_c8,uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
  }
  if (0x10 < uStack_13c) {
    bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)((int)this + 0x54),uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
  }
  if (0x11 < uStack_13c) {
    bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)((int)this + 0x58),uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
  }
  if (0xb < uStack_13c) {
    bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)((int)this + 0x5c),uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
    bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)((int)this + 0x60),uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
    bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)((int)this + 100),uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
  }
  if (0x12 < uStack_13c) {
    bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)((int)this + 0x7c),uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
    bVar2 = Stream_ReadUInt32(piStack_14c,(uint *)((int)this + 0x80),uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
  }
  if (0x13 < uStack_13c) {
    bVar2 = Stream_ReadResourceKeyTGI(piStack_14c,(void *)((int)this + 0x88),uStack_144);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
  }
  bVar2 = Stream_ReadByte(piStack_14c,&bStack_131);
  StreamReader_AccumulateStatus(auStack_154,bVar2);
  uStack_124._0_4_ = 0;
  uStack_124._4_4_ = 0;
  uStack_11c = 0;
  uStack_118 = 0;
  uStack_fc._0_4_ = 0;
  uStack_fc._4_4_ = 0;
  uStack_f4 = 0;
  uStack_f0 = 0;
  FUN_005e9cd0((void *)((int)this + 0x98),(uint)bStack_131);
  uVar13 = (uint)bStack_131 * 5;
  FUN_005b1a40((void *)((int)this + 0xbc),(int *)((uint)bStack_131 * 10 + 1));
  FUN_005e5c70(this,(int)puVar14,0);
  local_138 = (int *)0x1;
  pvStack_a0 = (void *)0x0;
  uStack_9c = 0;
  uStack_98 = 0;
  pcStack_94 = "CAS/SimOutfitResource/TempKeyPool";
  piStack_b0 = (int *)0x0;
  uStack_ac = 0;
  uStack_a8 = 0;
  pcStack_a4 = "CAS/SimOutfitResource/TempKeyPool";
  FUN_005e7640(&pvStack_a0,uVar13);
  FUN_005e7640(&piStack_b0,uVar13);
  piStack_114 = (int *)0x0;
  piStack_130 = (int *)0x0;
  uVar13 = (uint)uVar25 << 0x10;
  if (bStack_131 != 0) {
    iStack_54 = 0;
    iStack_50 = 0;
    do {
      pvVar7 = pvStack_110;
      pvStack_104 = (void *)(uVar13 >> 8 & 0xff);
      puVar15 = (uint *)((int)pvStack_104 * 0x68 + *(int *)((int)pvStack_110 + 0x98));
      piVar5 = (int *)puVar15[6];
      uVar8 = puVar15[5];
      if ((uint)((int)((int)piVar5 - uVar8) >> 2) < 5) {
        FUN_005b0680(puVar15 + 5,piVar5,5 - ((int)((int)piVar5 - uVar8) >> 2),&iStack_54);
      }
      else {
        FUN_00602210(puVar15 + 5,(int *)(uVar8 + 0x14),piVar5);
      }
      piVar5 = (int *)puVar15[0xf];
      uVar8 = puVar15[0xe];
      if ((uint)((int)((int)piVar5 - uVar8) >> 2) < 5) {
        FUN_005b0680(puVar15 + 0xe,piVar5,5 - ((int)((int)piVar5 - uVar8) >> 2),&iStack_50);
      }
      else {
        FUN_00602210(puVar15 + 0xe,(int *)(uVar8 + 0x14),piVar5);
      }
      if (uStack_13c < 6) {
        bVar2 = Stream_ReadUInt64(piStack_14c,&uStack_fc,uStack_144);
        StreamReader_AccumulateStatus(auStack_154,bVar2);
        bVar2 = Stream_ReadUInt32(piStack_14c,&uStack_f0,uStack_144);
        StreamReader_AccumulateStatus(auStack_154,bVar2);
        bVar2 = Stream_ReadUInt32(piStack_14c,&uStack_f4,uStack_144);
        StreamReader_AccumulateStatus(auStack_154,bVar2);
        if ((local_10c == (int *)0x0) ||
           (bVar2 = FUN_005af730(local_10c,(uint *)&uStack_fc,auStack_34), !bVar2)) {
          bVar2 = false;
        }
        else {
          bVar2 = true;
        }
        bVar20 = Stream_ReadUInt64(piStack_14c,&uStack_124,uStack_144);
        StreamReader_AccumulateStatus(auStack_154,bVar20);
        bVar20 = Stream_ReadUInt32(piStack_14c,&uStack_118,uStack_144);
        StreamReader_AccumulateStatus(auStack_154,bVar20);
        bVar20 = Stream_ReadUInt32(piStack_14c,&uStack_11c,uStack_144);
        StreamReader_AccumulateStatus(auStack_154,bVar20);
        piVar5 = local_138;
        if ((uStack_11c != 0) && (bVar2)) {
          FUN_005e5c70(pvVar7,(int)&uStack_124,local_138);
          local_138 = (int *)((int)piVar5 + 1);
          *(uint *)((int)pvStack_a0 + (int)piStack_114 * 0x28 + 8) = (uint)uStack_124;
          *(int *)((int)pvStack_a0 + (int)piStack_114 * 0x28 + 0xc) = uStack_124._4_4_;
          *(uint *)((int)pvStack_a0 + (int)piStack_114 * 0x28 + 0x10) = uStack_11c;
          *(uint *)((int)pvStack_a0 + (int)piStack_114 * 0x28 + 0x14) = uStack_118;
          *(uint *)((int)pvStack_a0 + (int)piStack_114 * 0x28 + 0x18) = (uint)uStack_fc;
          *(uint *)((int)pvStack_a0 + (int)piStack_114 * 0x28 + 0x1c) = uStack_fc._4_4_;
          *(uint *)((int)pvStack_a0 + (int)piStack_114 * 0x28 + 0x20) = uStack_f4;
          *(uint *)((int)pvStack_a0 + (int)piStack_114 * 0x28 + 0x24) = uStack_f0;
          piStack_114 = (int *)((int)piStack_114 + 1);
        }
        bVar20 = Stream_ReadUInt64(piStack_14c,&uStack_124,uStack_144);
        StreamReader_AccumulateStatus(auStack_154,bVar20);
        bVar20 = Stream_ReadUInt32(piStack_14c,&uStack_118,uStack_144);
        StreamReader_AccumulateStatus(auStack_154,bVar20);
        bVar20 = Stream_ReadUInt32(piStack_14c,&uStack_11c,uStack_144);
        StreamReader_AccumulateStatus(auStack_154,bVar20);
        piVar5 = local_138;
        if ((uStack_11c != 0) && (bVar2)) {
          FUN_005e5c70(pvVar7,(int)&uStack_124,local_138);
          local_138 = (int *)((int)piVar5 + 1);
          piStack_b0[(int)piStack_130 * 10 + 2] = (uint)uStack_124;
          piStack_b0[(int)piStack_130 * 10 + 3] = uStack_124._4_4_;
          piStack_b0[(int)piStack_130 * 10 + 4] = uStack_11c;
          piStack_b0[(int)piStack_130 * 10 + 5] = uStack_118;
          piStack_b0[(int)piStack_130 * 10 + 6] = (uint)uStack_fc;
          piStack_b0[(int)piStack_130 * 10 + 7] = uStack_fc._4_4_;
          piStack_b0[(int)piStack_130 * 10 + 8] = uStack_f4;
          piStack_b0[(int)piStack_130 * 10 + 9] = uStack_f0;
          piStack_130 = (int *)((int)piStack_130 + 1);
        }
        pppppppuStack_6c = &pppppppuStack_6c;
        pcStack_58 = "CAS/SimOutfitResource";
        puStack_64 = (undefined4 *)0x0;
        uStack_60 = 0;
        uStack_5c = 0;
        pppppppuStack_68 = pppppppuStack_6c;
        bVar2 = Stream_ReadByte(piStack_14c,auStack_154 + -2);
        StreamReader_AccumulateStatus(auStack_154,bVar2);
        bVar4 = 0;
        bVar24 = (byte)(uVar13 >> 0x10);
        puVar16 = puStack_64;
        if (bVar24 != 0) {
          do {
            bVar2 = Stream_ReadUInt64(piStack_14c,(ulonglong *)&pWStack_dc,uStack_144);
            StreamReader_AccumulateStatus(auStack_154,bVar2);
            piVar5 = unaff_retaddr;
            puVar15 = FUN_005e76d0(auStack_70,(uint *)&pWStack_dc);
            FUN_005f78f0(puVar15,piVar5);
            bVar4 = bVar4 + 1;
            puVar16 = puStack_64;
          } while (bVar4 < bVar24);
        }
        while (puVar16 != (undefined4 *)0x0) {
          FUN_008b19b0((undefined4 *)*puVar16);
          puVar19 = (undefined4 *)puVar16[1];
          Memory_FreeIfNonNull(puVar16);
          puVar16 = puVar19;
        }
      }
      else {
        FUN_005e56e0(uStack_13c,(uint *)&uStack_fc,auStack_154,(int *)ppvStack_12c);
        piVar5 = local_10c;
        *puVar15 = (uint)uStack_fc;
        puVar15[1] = uStack_fc._4_4_;
        puVar15[2] = uStack_f4;
        puVar15[3] = uStack_f0;
        if (local_10c == (int *)0x0) {
LAB_005ea8e2:
          uVar13 = uVar13 & 0xffffff00;
        }
        else {
          bVar2 = FUN_005af730(local_10c,(uint *)&uStack_fc,auStack_34);
          uVar13 = CONCAT31((int3)(uVar13 >> 8),1);
          if (!bVar2) goto LAB_005ea8e2;
        }
        if (0xc < uStack_13c) {
          bVar2 = Stream_ReadUInt32(piStack_14c,puVar15 + 0x18,uStack_144);
          StreamReader_AccumulateStatus(auStack_154,bVar2);
          if ((char)uVar13 == '\0') {
            uVar8 = puVar15[0x18];
            puVar22 = &uStack_90;
            uVar9 = *(uint *)((int)pvStack_110 + 0x38) & 0x307f;
            uVar21 = 0;
            uStack_90 = 0;
            uStack_8c = 0;
            uStack_88 = 0;
            uStack_84 = 0;
            pvVar7 = (void *)FUN_005df4d0();
            uVar8 = ResourceLookup_FindDefaultPart(pvVar7,uVar9,uVar21,uVar8,puVar22);
            uVar23 = (undefined3)(uVar13 >> 8);
            uVar13 = CONCAT31(uVar23,(char)uVar8);
            if ((char)uVar8 != '\0') {
              *puVar15 = uStack_90;
              puVar15[1] = uStack_8c;
              puVar15[2] = uStack_88;
              puVar15[3] = uStack_84;
              if (piVar5 == (int *)0x0) {
LAB_005ea9b2:
                uVar13 = uVar13 & 0xffffff00;
              }
              else {
                bVar2 = FUN_005af730(piVar5,&uStack_90,auStack_34);
                uVar13 = CONCAT31(uVar23,1);
                if (!bVar2) goto LAB_005ea9b2;
              }
              *(undefined1 *)(puVar15 + 0x19) = 1;
            }
          }
        }
        bVar2 = Stream_ReadByte(piStack_14c,&bStack_126);
        StreamReader_AccumulateStatus(auStack_154,bVar2);
        if (bStack_126 != 5) {
          if (piStack_b0 != (int *)0x0) {
            Memory_FreeIfNonNull(piStack_b0);
          }
          piVar5 = piStack_ec;
          piVar17 = piStack_ec;
          piVar18 = piStack_e8;
          if (pvStack_a0 != (void *)0x0) {
            Memory_FreeIfNonNull(pvStack_a0);
            piVar5 = piStack_ec;
            piVar17 = piStack_ec;
            piVar18 = piStack_e8;
          }
          while( true ) {
            piVar1 = piStack_e8;
            allocation = piStack_ec;
            if (piStack_e8 <= piVar5) break;
            piStack_ec = piVar17;
            piStack_e8 = piVar18;
            if ((int *)*piVar5 != (int *)0x0) {
              (**(code **)(*(int *)*piVar5 + 4))();
            }
            piVar5 = piVar5 + 1;
            piVar17 = piStack_ec;
            piVar18 = piStack_e8;
            piStack_e8 = piVar1;
            piStack_ec = allocation;
          }
          bVar2 = piStack_ec != (int *)0x0;
          piStack_ec = piVar17;
          piStack_e8 = piVar18;
          if (bVar2) {
            Memory_FreeIfNonNull(allocation);
          }
          bVar2 = apvStack_80[0] == (void *)0x0;
          goto LAB_005eb5ca;
        }
        piVar5 = piStack_b0 + (int)piStack_130 * 10;
        uVar13 = uVar13 & 0xffffff;
        bStack_127 = 0;
        pvVar7 = (void *)((int)pvStack_a0 + (int)piStack_114 * 0x28);
        piVar17 = local_138;
        do {
          FUN_005e56e0(uStack_13c,(uint *)&uStack_124,auStack_154,(int *)ppvStack_12c);
          if (((uStack_11c != 0) && ((char)uVar13 != '\0')) && ((char)puVar15[0x19] == '\0')) {
            iVar6 = FUN_005e5c70(pvStack_110,(int)&uStack_124,piVar17);
            piVar17 = (int *)((int)piVar17 + 1);
            if ((char)iVar6 == '\0') {
              uVar13 = CONCAT13(1,(int3)uVar13);
            }
            else {
              piStack_114 = (int *)((int)piStack_114 + 1);
              *(uint *)((int)pvVar7 + 8) = (uint)uStack_124;
              *(int *)((int)pvVar7 + 0xc) = uStack_124._4_4_;
              *(uint *)((int)pvVar7 + 0x10) = uStack_11c;
              *(uint *)((int)pvVar7 + 0x14) = uStack_118;
              *(uint *)((int)pvVar7 + 0x18) = *puVar15;
              *(uint *)((int)pvVar7 + 0x1c) = puVar15[1];
              *(uint *)((int)pvVar7 + 0x20) = puVar15[2];
              *(uint *)((int)pvVar7 + 0x24) = puVar15[3];
              pvVar7 = (void *)((int)pvVar7 + 0x28);
            }
          }
          FUN_005e56e0(uStack_13c,(uint *)&uStack_124,auStack_154,(int *)ppvStack_12c);
          if (((uStack_11c != 0) && ((char)uVar13 != '\0')) && ((char)puVar15[0x19] == '\0')) {
            iVar6 = FUN_005e5c70(pvStack_110,(int)&uStack_124,piVar17);
            piVar17 = (int *)((int)piVar17 + 1);
            if ((char)iVar6 == '\0') {
              uVar13 = CONCAT13(1,(int3)uVar13);
            }
            else {
              piStack_130 = (int *)((int)piStack_130 + 1);
              piVar5[2] = (uint)uStack_124;
              piVar5[3] = uStack_124._4_4_;
              piVar5[4] = uStack_11c;
              piVar5[5] = uStack_118;
              piVar5[6] = *puVar15;
              piVar5[7] = puVar15[1];
              piVar5[8] = puVar15[2];
              piVar5[9] = puVar15[3];
              piVar5 = piVar5 + 10;
            }
          }
          bStack_127 = bStack_127 + 1;
        } while (bStack_127 < bStack_126);
        local_138 = piVar17;
        if (((char)(uVar13 >> 0x18) != '\0') &&
           ((*(uint *)((int)pvStack_110 + 0xd0) & *(uint *)((int)pvStack_110 + 0xd4)) == 0xffffffff)
           ) {
          uVar8 = *(uint *)((int)pvStack_110 + 0x38) & 0xcf00;
          if ((uVar8 != 0) && (uVar8 != 0x100)) {
            piStack_c0 = (int *)0x0;
            piStack_bc = (int *)0x0;
            uStack_b8 = 0;
            pcStack_b4 = "CAS/SimOutfitResource/Load";
            pvVar7 = (void *)piStack_ec[(int)pvStack_104];
            piVar5 = piStack_c0;
            piVar17 = piStack_bc;
            if (pvVar7 != (void *)0x0) {
              uVar8 = FUN_005bef50((int)pvVar7);
              piVar5 = piStack_c0;
              piVar17 = piStack_bc;
              if ((char)uVar8 != '\0') {
                uVar8 = FUN_005bef80((int)pvVar7);
                piVar5 = piStack_c0;
                piVar17 = piStack_bc;
                if ((char)uVar8 != '\0') {
                  bVar2 = ComplateNative_BuildPrograms(pvVar7,(undefined *)&piStack_c0,1,true);
                  piVar5 = piStack_c0;
                  piVar17 = piStack_bc;
                  if (bVar2) {
                    pvStack_104 = (void *)FUN_005ebac0();
                    piStack_c8 = piStack_bc;
                    piVar18 = piStack_c0;
                    piVar5 = piStack_c0;
                    piVar17 = piStack_bc;
                    if (piStack_c0 != piStack_bc) {
                      do {
                        piVar5 = (int *)*piVar18;
                        uVar8 = piVar5[0x16];
                        if (uVar8 == 0) {
                          uVar8 = 0xffffffff;
                        }
                        else {
                          uVar8 = CountTrailingZeroBits32(uVar8);
                        }
                        FUN_005ef080(pvStack_104,piVar5);
                        if (uVar8 < 5) {
                          if ((char)piVar18[2] == '\0') {
                            pvVar7 = (void *)(puVar15[5] + uVar8 * 4);
                          }
                          else {
                            pvVar7 = (void *)(puVar15[0xe] + uVar8 * 4);
                          }
                          StatePointerSlots_AssignVirtualLifetime(pvVar7,piVar18);
                        }
                        piVar18 = piVar18 + 3;
                        piVar5 = piStack_c0;
                        piVar17 = piStack_bc;
                      } while (piVar18 != piStack_c8);
                    }
                  }
                }
              }
            }
            for (; piVar18 = piStack_bc, piVar5 < piStack_bc; piVar5 = piVar5 + 3) {
              piStack_bc = piVar17;
              if ((int *)*piVar5 != (int *)0x0) {
                (**(code **)(*(int *)*piVar5 + 4))();
              }
              piVar17 = piStack_bc;
              piStack_bc = piVar18;
            }
            piStack_bc = piVar17;
            if (piStack_c0 != (int *)0x0) {
              Memory_FreeIfNonNull(piStack_c0);
            }
          }
        }
        if (uStack_13c - 7 < 2) {
          pvVar7 = (void *)FUN_004e4500(0x60,"CAS/SimOutfitResource/Preset",0);
          if (pvVar7 == (void *)0x0) {
            piVar5 = (int *)0x0;
          }
          else {
            piVar5 = (int *)DesignPreset_InitializeEmpty(pvVar7);
          }
          piVar17 = (int *)puVar15[0x17];
          if (piVar5 != piVar17) {
            if (piVar5 != (int *)0x0) {
              (**(code **)*piVar5)();
            }
            puVar15[0x17] = (uint)piVar5;
            if (piVar17 != (int *)0x0) {
              (**(code **)(*piVar17 + 4))();
            }
          }
          bVar2 = Stream_ReadUInt32(piStack_14c,&local_108,uStack_144);
          StreamReader_AccumulateStatus(auStack_154,bVar2);
          if (0 < (int)local_108) {
            pWStack_4c = (LPCWSTR)&DAT_011c8e54;
            puStack_48 = &DAT_011c8e54;
            pcStack_40 = "CAS/SimOutfitResource/Load";
            puStack_44 = &DAT_011c8e56;
            FUN_005e6800(&pWStack_4c,local_108,0);
            allocation_00 = pWStack_4c;
            uVar8 = Stream_ReadUtf16UnitsEndian
                              (piStack_14c,(ushort *)pWStack_4c,local_108,uStack_144);
            StreamReader_AccumulateStatus(auStack_154,(byte)uVar8);
            if ((void *)puVar15[0x17] != (void *)0x0) {
              FUN_005c0060((void *)puVar15[0x17],allocation_00);
            }
            if ((2 < (int)((int)puStack_44 - (int)allocation_00 & 0xfffffffeU)) &&
               (allocation_00 != (LPCWSTR)0x0)) {
              Memory_FreeIfNonNull(allocation_00);
            }
          }
        }
        if ((char)uVar13 == '\0') {
          *puVar15 = 0;
          puVar15[1] = 0;
          puVar15[2] = 0;
          puVar15[3] = 0;
        }
      }
      bVar4 = (char)(uVar13 >> 8) + 1;
      uVar13 = (uint)CONCAT21((short)(uVar13 >> 0x10),bVar4) << 8;
    } while (bVar4 < bStack_131);
    this = pvStack_110;
  }
  piVar5 = piStack_114;
  piVar17 = FUN_004e6f20(DAT_011cc864,((int)piStack_130 + (int)piStack_114) * 0x28,0);
  *(int **)((int)this + 0x298) = piVar17;
  if (piVar5 != (int *)0x0) {
    iVar6 = 0;
    local_10c = piStack_114;
    do {
      puVar16 = (undefined4 *)((int)pvStack_a0 + iVar6);
      puVar19 = (undefined4 *)(*(int *)((int)pvStack_110 + 0x298) + iVar6);
      for (iVar10 = 10; iVar10 != 0; iVar10 = iVar10 + -1) {
        *puVar19 = *puVar16;
        puVar16 = puVar16 + 1;
        puVar19 = puVar19 + 1;
      }
      iVar10 = *(int *)((int)pvStack_110 + 0x298);
      puVar11 = (undefined4 *)(iVar10 + iVar6);
      uVar13 = (*(uint *)(iVar10 + 0x14 + iVar6) ^ *(uint *)(iVar10 + 8 + iVar6)) % 0x35;
      puVar16 = *(undefined4 **)((int)pvStack_110 + uVar13 * 4 + 0xd8);
      for (puVar19 = puVar16; puVar19 != (undefined4 *)0x0; puVar19 = (undefined4 *)*puVar19) {
        if ((((puVar11[2] == puVar19[2]) && (puVar11[4] == puVar19[4])) &&
            (puVar11[5] == puVar19[5])) && (puVar11[3] == puVar19[3])) {
          if (puVar19 != (undefined4 *)0x0) goto LAB_005eb273;
          break;
        }
      }
      *puVar11 = puVar16;
      *(undefined4 **)((int)pvStack_110 + uVar13 * 4 + 0xd8) = puVar11;
      *(int *)((int)pvStack_110 + 0x1b0) = *(int *)((int)pvStack_110 + 0x1b0) + 1;
LAB_005eb273:
      iVar6 = iVar6 + 0x28;
      local_10c = (int *)((int)local_10c + -1);
    } while (local_10c != (int *)0x0);
  }
  if (piStack_130 != (int *)0x0) {
    iVar6 = (int)piStack_114 * 0x28;
    local_138 = piStack_b0;
    local_10c = piStack_130;
    do {
      piVar5 = local_138;
      piVar17 = (int *)(*(int *)((int)pvStack_110 + 0x298) + iVar6);
      for (iVar10 = 10; iVar10 != 0; iVar10 = iVar10 + -1) {
        *piVar17 = *piVar5;
        piVar5 = piVar5 + 1;
        piVar17 = piVar17 + 1;
      }
      iVar10 = *(int *)((int)pvStack_110 + 0x298);
      puVar11 = (undefined4 *)(iVar10 + iVar6);
      uVar13 = (*(uint *)(iVar10 + 0x14 + iVar6) ^ *(uint *)(iVar10 + 8 + iVar6)) % 0x35;
      puVar16 = *(undefined4 **)((int)pvStack_110 + uVar13 * 4 + 0x1b8);
      for (puVar19 = puVar16; puVar19 != (undefined4 *)0x0; puVar19 = (undefined4 *)*puVar19) {
        if (((puVar11[2] == puVar19[2]) && (puVar11[4] == puVar19[4])) &&
           ((puVar11[5] == puVar19[5] && (puVar11[3] == puVar19[3])))) {
          if (puVar19 != (undefined4 *)0x0) goto LAB_005eb32c;
          break;
        }
      }
      *puVar11 = puVar16;
      *(undefined4 **)((int)pvStack_110 + uVar13 * 4 + 0x1b8) = puVar11;
      *(int *)((int)pvStack_110 + 0x290) = *(int *)((int)pvStack_110 + 0x290) + 1;
LAB_005eb32c:
      local_138 = local_138 + 10;
      iVar6 = iVar6 + 0x28;
      local_10c = (int *)((int)local_10c + -1);
    } while (local_10c != (int *)0x0);
  }
  bVar2 = Stream_ReadByte(piStack_14c,&bStack_125);
  StreamReader_AccumulateStatus(auStack_154,bVar2);
  bVar4 = 0;
  if (bStack_125 != 0) {
    do {
      bVar2 = Stream_ReadUInt32(piStack_14c,&uStack_38,uStack_144);
      StreamReader_AccumulateStatus(auStack_154,bVar2);
      bVar2 = Stream_ReadUInt32(piStack_14c,&uStack_3c,uStack_144);
      StreamReader_AccumulateStatus(auStack_154,bVar2);
      FUN_005e56e0(uStack_13c,(uint *)&uStack_124,auStack_154,(int *)ppvStack_12c);
      bVar4 = bVar4 + 1;
    } while (bVar4 < bStack_125);
  }
  if (3 < uStack_13c) {
    bVar2 = Stream_ReadByte(piStack_14c,auStack_154 + -1);
    StreamReader_AccumulateStatus(auStack_154,bVar2);
    FUN_007dfe60((void *)((int)pvStack_110 + 0x2b8),0);
  }
  piVar17 = piStack_e8;
  piVar5 = piStack_ec;
  if (8 < uStack_13c) {
    piStack_c8 = (int *)((int)piStack_e8 - (int)piStack_ec >> 2);
    if (piStack_c8 !=
        (int *)((*(int *)((int)pvStack_110 + 0x9c) - *(int *)((int)pvStack_110 + 0x98)) / 0x68)) {
      if (piStack_b0 != (int *)0x0) {
        Memory_FreeIfNonNull(piStack_b0);
      }
      piVar18 = piVar5;
      if (pvStack_a0 != (void *)0x0) {
        Memory_FreeIfNonNull(pvStack_a0);
      }
      for (; piVar18 < piVar17; piVar18 = piVar18 + 1) {
        if ((int *)*piVar18 != (int *)0x0) {
          (**(code **)(*(int *)*piVar18 + 4))();
        }
      }
      if (piVar5 != (int *)0x0) {
        Memory_FreeIfNonNull(piVar5);
      }
      bVar2 = apvStack_80[0] == (void *)0x0;
LAB_005eb5ca:
      if (!bVar2) {
        Memory_FreeIfNonNull(apvStack_80[0]);
      }
      StreamReader_ReleaseAuxiliary(auStack_154);
      return 0;
    }
    pvStack_104 = *(void **)((int)pvStack_110 + 0x9c);
    pvVar7 = *(void **)((int)pvStack_110 + 0x98);
    local_138 = (int *)0x0;
    if (pvVar7 != pvStack_104) {
      do {
        if ((local_138 < piStack_c8) && (*(int *)((int)pvVar7 + 8) != 0)) {
          if (*(char *)((int)pvVar7 + 100) == '\0') {
            piVar5 = (int *)piStack_ec[(int)local_138];
            piVar17 = *(int **)((int)pvVar7 + 0x5c);
            if (piVar5 != piVar17) {
              if (piVar5 != (int *)0x0) {
                (**(code **)*piVar5)();
              }
              *(int **)((int)pvVar7 + 0x5c) = piVar5;
              if (piVar17 != (int *)0x0) {
                (**(code **)(*piVar17 + 4))();
              }
            }
          }
          else {
            this_00 = (void *)FUN_004e4500(0x60,"CAS/SimOutfitResource/Preset",0);
            if (this_00 == (void *)0x0) {
              piVar5 = (int *)0x0;
            }
            else {
              piVar5 = (int *)DesignPreset_InitializeEmpty(this_00);
            }
            piVar17 = *(int **)((int)pvVar7 + 0x5c);
            if (piVar5 != piVar17) {
              if (piVar5 != (int *)0x0) {
                (**(code **)*piVar5)();
              }
              *(int **)((int)pvVar7 + 0x5c) = piVar5;
              if (piVar17 != (int *)0x0) {
                (**(code **)(*piVar17 + 4))();
              }
            }
          }
        }
        local_138 = (int *)((int)local_138 + 1);
        pvVar7 = (void *)((int)pvVar7 + 0x68);
      } while (pvVar7 != pvStack_104);
    }
  }
  piVar17 = piStack_e8;
  piVar5 = piStack_ec;
  if (pcStack_cc != (char *)0x0) {
    StreamContext_SeekWithSignedAbsoluteGuard(auStack_154,(int)pcStack_cc,0);
  }
  Job_Submit(*(void **)((int)pvStack_110 + 0xb8));
  FUN_005e5790(pvStack_110);
  if (piStack_b0 != (int *)0x0) {
    Memory_FreeIfNonNull(piStack_b0);
  }
  piVar18 = piVar5;
  if (pvStack_a0 != (void *)0x0) {
    Memory_FreeIfNonNull(pvStack_a0);
  }
  for (; piVar18 < piVar17; piVar18 = piVar18 + 1) {
    if ((int *)*piVar18 != (int *)0x0) {
      (**(code **)(*(int *)*piVar18 + 4))();
    }
  }
  if (piVar5 != (int *)0x0) {
    Memory_FreeIfNonNull(piVar5);
  }
  if (apvStack_80[0] != (void *)0x0) {
    Memory_FreeIfNonNull(apvStack_80[0]);
  }
  StreamReader_ReleaseAuxiliary(auStack_154);
  return (undefined1)local_140;
}

