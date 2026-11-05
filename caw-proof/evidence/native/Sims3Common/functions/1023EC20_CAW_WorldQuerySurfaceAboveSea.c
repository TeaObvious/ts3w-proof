/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Surface query accepts optional lot/road/object flags; the
   all-zero flags used by WorldWrap_GetTerrainHeightAboveWater return an absolute eligible surface
   elevation, raised to Sea+0x14 if higher. It never subtracts the Sea level. Positive-lot dispatch
   and sentinel paths remain visible. Analyst-assigned helper names are not recovered original
   symbols. Original instructions govern decompiler ABI/register artifacts. */

float10 __thiscall
CAW_WorldQuerySurfaceAboveSea
          (void *param_1,float param_2,float param_3,int param_4,char param_5,char param_6,
          char *param_7,undefined1 *param_8,char *param_9,char *param_10,undefined1 *param_11,
          char param_12)

{
  void *this;
  bool bVar1;
  bool bVar2;
  bool bVar3;
  float *pfVar4;
  undefined4 uVar5;
  uint uVar6;
  int extraout_ECX;
  int extraout_ECX_00;
  undefined4 extraout_ECX_01;
  int iVar7;
  int extraout_ECX_02;
  int extraout_ECX_03;
  undefined4 extraout_ECX_04;
  int extraout_ECX_05;
  int extraout_ECX_06;
  int extraout_ECX_07;
  int extraout_ECX_08;
  undefined4 extraout_EDX;
  undefined4 extraout_EDX_00;
  char cVar8;
  undefined4 *puVar9;
  float10 fVar10;
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  undefined1 auVar17 [16];
  undefined4 *puVar18;
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  char local_77;
  undefined1 local_75;
  char local_74;
  char local_71;
  undefined4 *local_70;
  int local_68;
  int local_64;
  undefined4 *local_60;
  int local_5c;
  float local_58;
  undefined4 *local_54;
  undefined4 *local_50;
  undefined4 *puStack_4c;
  undefined4 *puStack_48;
  undefined4 *puStack_44;
  undefined4 *local_40;
  undefined4 *puStack_3c;
  undefined4 *puStack_38;
  undefined4 *puStack_34;
  float local_30;
  undefined4 *puStack_2c;
  float fStack_28;
  float fStack_24;
  undefined4 *local_20;
  undefined4 *puStack_1c;
  undefined4 *puStack_18;
  undefined4 *puStack_14;
  
  cVar8 = '\0';
  local_70 = DAT_10ac8dcc;
  bVar1 = true;
  local_71 = '\0';
  local_75 = 0;
  local_74 = '\0';
  local_77 = '\0';
  bVar2 = false;
  bVar3 = false;
  if ((((*(float *)((int)param_1 + 0xb4) <= param_2) && (*(float *)((int)param_1 + 0xb8) <= param_3)
       ) && (param_2 < *(float *)((int)param_1 + 0xbc))) &&
     (param_3 < *(float *)((int)param_1 + 0xc4) + *(float *)((int)param_1 + 0xc0))) {
    pfVar4 = (float *)FUN_1023cf80(param_1,param_2,param_3);
    iVar7 = extraout_ECX;
    if (pfVar4 != (float *)0x0) {
      puVar9 = (undefined4 *)*pfVar4;
      local_54 = (undefined4 *)pfVar4[1];
      if (puVar9 != local_54) {
        do {
          this = (void *)*puVar9;
          if ((this != (void *)0x0) &&
             ((param_12 == '\0' ||
              (uVar5 = FUN_100c4a50(this,param_2,param_3), iVar7 = extraout_ECX_00,
              (char)uVar5 != '\0')))) {
            fVar10 = FUN_1007cd00(this,param_2,param_3,param_4);
            puVar18 = (undefined4 *)(float)fVar10;
            local_58 = (float)(fVar10 - (float10)(float)DAT_10ac8dcc);
            auVar19._4_4_ = local_58;
            auVar19._0_4_ = local_58;
            auVar19._8_4_ = local_58;
            auVar19._12_4_ = local_58;
            auVar11._0_4_ = (float)DAT_10aae184 * local_58;
            auVar11._4_4_ = (float)DAT_10aae184 * local_58;
            auVar11._8_4_ = (float)DAT_10aae184 * local_58;
            auVar11._12_4_ = (float)DAT_10aae184 * local_58;
            auVar11 = maxps(auVar11,auVar19);
            auVar12._4_4_ = -(uint)(auVar11._4_4_ <= (float)DAT_10ac8e80);
            auVar12._0_4_ = -(uint)(auVar11._0_4_ <= (float)DAT_10ac8e80);
            auVar12._8_4_ = -(uint)(auVar11._8_4_ <= (float)DAT_10ac8e80);
            auVar12._12_4_ = -(uint)(auVar11._12_4_ <= (float)DAT_10ac8e80);
            iVar7 = movmskps(extraout_ECX_01,auVar12);
            if (iVar7 != 0xf) {
              if (DAT_10c0fc39 == '\0') {
LAB_1023f19d:
                uVar6 = FUN_100cc400(this,param_2,param_3,param_4);
                iVar7 = extraout_ECX_07;
                if ((char)uVar6 == '\0') {
                  if (param_4 == 0) {
                    fVar10 = FUN_1007d2e0(this,param_2,param_3);
                    local_54 = (undefined4 *)(float)fVar10;
                    iVar7 = extraout_ECX_08;
                    if ((float10)(float)puVar18 < fVar10) {
                      bVar3 = true;
                      puVar18 = local_54;
                    }
                  }
                }
                else {
                  puVar18 = (undefined4 *)((float)puVar18 + _DAT_10ac8dc0);
                }
              }
              else {
                puStack_48 = (undefined4 *)param_3;
                puStack_44 = (undefined4 *)param_2;
                local_50 = (undefined4 *)param_2;
                local_40 = (undefined4 *)param_2;
                puStack_38 = (undefined4 *)param_3;
                puStack_34 = (undefined4 *)param_2;
                local_30 = param_2;
                fStack_28 = param_3;
                fStack_24 = param_2;
                puStack_4c = puVar18;
                puStack_3c = puVar18;
                puStack_2c = puVar18;
                uVar6 = FUN_100c6bc0(this,&local_30,(undefined4 *)0x0,1);
                if ((char)uVar6 == '\0') {
                  if (DAT_10c0fc39 != '\0') {
                    local_20 = local_40;
                    puStack_1c = puStack_3c;
                    puStack_18 = puStack_38;
                    puStack_14 = puStack_34;
                    uVar6 = FUN_100cc7f0(this,(float *)&local_20,(undefined4 *)0x0);
                    if ((char)uVar6 != '\0') {
                      bVar2 = true;
                      bVar1 = false;
                      iVar7 = extraout_ECX_06;
                      puVar18 = (undefined4 *)((float)puVar18 + _DAT_10ac8dc4);
                      goto LAB_1023f20f;
                    }
                  }
                  goto LAB_1023f19d;
                }
                bVar2 = true;
                bVar1 = false;
                iVar7 = extraout_ECX_05;
                puVar18 = (undefined4 *)((float)puVar18 + _DAT_10ac8dc8);
              }
LAB_1023f20f:
              local_71 = '\x01';
              local_70 = puVar18;
              if (((*(int *)((int)param_1 + 0x60) != 0) && (bVar1)) &&
                 (puVar9 = *(undefined4 **)(*(int *)((int)param_1 + 0x60) + 0x14),
                 (float)puVar18 < (float)puVar9)) {
                local_77 = '\x01';
                local_70 = puVar9;
              }
              goto LAB_1023ee57;
            }
          }
          puVar9 = puVar9 + 1;
        } while (puVar9 != local_54);
      }
    }
    if (param_5 != '\0') {
      local_5c = 0;
      local_60 = DAT_10aae184;
      iVar7 = 0;
      if ((*(void **)((int)param_1 + 0x5c) != (void *)0x0) &&
         (uVar5 = FUN_10142dc0(*(void **)((int)param_1 + 0x5c),param_2,param_3,'\x01','\0',&local_5c
                               ,(float *)&local_60,'\0'), iVar7 = extraout_ECX_02,
         (char)uVar5 != '\0')) {
        fVar10 = FUN_1013d670(local_5c,param_2,param_3);
        local_70 = (undefined4 *)(float)fVar10;
        local_75 = 1;
        iVar7 = 0;
        if (*(int *)((int)param_1 + 0x54) != 0) {
          fVar10 = CAW_TerrainCollisionHeight(*(int *)((int)param_1 + 0x54),param_2,param_3);
          local_54 = (undefined4 *)(float)fVar10;
          iVar7 = extraout_ECX_03;
          if ((float10)(float)local_70 < fVar10) {
            local_75 = 0;
            local_70 = local_54;
          }
        }
        if ((*(int *)((int)param_1 + 0x60) != 0) &&
           (puVar9 = *(undefined4 **)(*(int *)((int)param_1 + 0x60) + 0x14),
           (float)local_70 < (float)puVar9)) {
          local_75 = 0;
          local_77 = '\x01';
          local_70 = puVar9;
        }
      }
      bVar3 = false;
    }
LAB_1023ee57:
    if ((((*(float *)((int)param_1 + 0xb4) <= param_2) &&
         (*(float *)((int)param_1 + 0xb8) <= param_3)) &&
        (param_2 < *(float *)((int)param_1 + 0xbc))) && (param_3 < *(float *)((int)param_1 + 0xc0)))
    {
      auVar13._0_4_ = (float)local_70 - (float)DAT_10ac8dcc;
      local_50 = DAT_10aae184;
      puStack_4c = DAT_10aae184;
      puStack_48 = DAT_10aae184;
      puStack_44 = DAT_10aae184;
      auVar13._4_4_ = auVar13._0_4_;
      auVar13._8_4_ = auVar13._0_4_;
      auVar13._12_4_ = auVar13._0_4_;
      auVar20._0_4_ = (float)DAT_10aae184 * auVar13._0_4_;
      auVar20._4_4_ = (float)DAT_10aae184 * auVar13._0_4_;
      auVar20._8_4_ = (float)DAT_10aae184 * auVar13._0_4_;
      auVar20._12_4_ = (float)DAT_10aae184 * auVar13._0_4_;
      auVar11 = maxps(auVar20,auVar13);
      auVar21._4_4_ = -(uint)(auVar11._4_4_ <= (float)DAT_10ac8e80);
      auVar21._0_4_ = -(uint)(auVar11._0_4_ <= (float)DAT_10ac8e80);
      auVar21._8_4_ = -(uint)(auVar11._8_4_ <= (float)DAT_10ac8e80);
      auVar21._12_4_ = -(uint)(auVar11._12_4_ <= (float)DAT_10ac8e80);
      iVar7 = movmskps(iVar7,auVar21);
      local_40 = DAT_10ac8e80;
      puStack_3c = DAT_10ac8e80;
      puStack_38 = DAT_10ac8e80;
      puStack_34 = DAT_10ac8e80;
      if (iVar7 == 0xf) {
        fVar10 = CAW_TerrainCollisionHeight(*(int *)((int)param_1 + 0x54),param_2,param_3);
        local_68 = 0;
        local_64 = 0;
        local_54 = (undefined4 *)(float)(fVar10 - (float10)(float)DAT_10ac8dcc);
        auVar14._4_4_ = local_54;
        auVar14._0_4_ = local_54;
        auVar14._8_4_ = local_54;
        auVar14._12_4_ = local_54;
        auVar22._0_4_ = (float)local_50 * (float)local_54;
        auVar22._4_4_ = (float)puStack_4c * (float)local_54;
        auVar22._8_4_ = (float)puStack_48 * (float)local_54;
        auVar22._12_4_ = (float)puStack_44 * (float)local_54;
        auVar11 = maxps(auVar22,auVar14);
        auVar23._4_4_ = -(uint)(auVar11._4_4_ <= (float)puStack_3c);
        auVar23._0_4_ = -(uint)(auVar11._0_4_ <= (float)local_40);
        auVar23._8_4_ = -(uint)(auVar11._8_4_ <= (float)puStack_38);
        auVar23._12_4_ = -(uint)(auVar11._12_4_ <= (float)puStack_34);
        iVar7 = movmskps(extraout_EDX,auVar23);
        while (((local_70 = (undefined4 *)(float)fVar10, iVar7 == 0xf && (local_68 < 4)) &&
               (local_64 < 4))) {
          FUN_100c3990(&local_68,&local_64,0,1);
          fVar10 = CAW_TerrainCollisionHeight
                             (*(int *)((int)param_1 + 0x54),(float)local_68 * DAT_10ab2930 + param_2
                              ,(float)local_64 * DAT_10ab2930 + param_3);
          local_54 = (undefined4 *)(float)(fVar10 - (float10)(float)DAT_10ac8dcc);
          auVar15._4_4_ = local_54;
          auVar15._0_4_ = local_54;
          auVar15._8_4_ = local_54;
          auVar15._12_4_ = local_54;
          auVar24._0_4_ = (float)local_50 * (float)local_54;
          auVar24._4_4_ = (float)puStack_4c * (float)local_54;
          auVar24._8_4_ = (float)puStack_48 * (float)local_54;
          auVar24._12_4_ = (float)puStack_44 * (float)local_54;
          auVar11 = maxps(auVar24,auVar15);
          auVar25._4_4_ = -(uint)(auVar11._4_4_ <= (float)puStack_3c);
          auVar25._0_4_ = -(uint)(auVar11._0_4_ <= (float)local_40);
          auVar25._8_4_ = -(uint)(auVar11._8_4_ <= (float)puStack_38);
          auVar25._12_4_ = -(uint)(auVar11._12_4_ <= (float)puStack_34);
          iVar7 = movmskps(extraout_EDX_00,auVar25);
        }
      }
    }
    cVar8 = local_71;
    if ((local_71 != '\0') || (!bVar1)) goto LAB_1023efec;
  }
  if ((*(int *)((int)param_1 + 0x60) != 0) &&
     (puVar9 = *(undefined4 **)(*(int *)((int)param_1 + 0x60) + 0x14),
     (float)local_70 < (float)puVar9)) {
    local_77 = '\x01';
    local_70 = puVar9;
  }
LAB_1023efec:
  if (param_6 != '\0') {
    fVar10 = FUN_102352d0((int)param_1,param_2,param_3,param_5);
    if ((float10)(float)local_70 < fVar10) {
      auVar26._0_4_ = (float)fVar10 - (float)DAT_10ac8dcc;
      auVar26._4_4_ = auVar26._0_4_;
      auVar26._8_4_ = auVar26._0_4_;
      auVar26._12_4_ = auVar26._0_4_;
      auVar16._0_4_ = (float)DAT_10aae184 * auVar26._0_4_;
      auVar16._4_4_ = (float)DAT_10aae184 * auVar26._0_4_;
      auVar16._8_4_ = (float)DAT_10aae184 * auVar26._0_4_;
      auVar16._12_4_ = (float)DAT_10aae184 * auVar26._0_4_;
      auVar11 = maxps(auVar16,auVar26);
      auVar17._4_4_ = -(uint)(auVar11._4_4_ <= (float)DAT_10ac8e80);
      auVar17._0_4_ = -(uint)(auVar11._0_4_ <= (float)DAT_10ac8e80);
      auVar17._8_4_ = -(uint)(auVar11._8_4_ <= (float)DAT_10ac8e80);
      auVar17._12_4_ = -(uint)(auVar11._12_4_ <= (float)DAT_10ac8e80);
      iVar7 = movmskps(extraout_ECX_04,auVar17);
      if (iVar7 != 0xf) {
        local_74 = '\x01';
        local_70 = (undefined4 *)(float)fVar10;
      }
    }
  }
  if (param_7 != (char *)0x0) {
    *param_7 = cVar8;
  }
  if (param_8 != (undefined1 *)0x0) {
    *param_8 = local_75;
  }
  if (param_9 != (char *)0x0) {
    *param_9 = local_77;
  }
  if (param_10 != (char *)0x0) {
    *param_10 = local_74;
  }
  if (param_11 != (undefined1 *)0x0) {
    if ((((local_74 == '\0') && (local_77 == '\0')) && (!bVar2)) && (!bVar3)) {
      *param_11 = 0;
      return (float10)(float)local_70;
    }
    *param_11 = 1;
  }
  return (float10)(float)local_70;
}

