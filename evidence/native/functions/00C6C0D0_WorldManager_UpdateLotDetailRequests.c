/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst: PC 1.67 map/lot detail contract. x86 thiscall consumes four stack slots (RET10),
   including unused cameraContext at+14; old inferred C omitted that parameter. Copies 16-byte
   viewPosition into+3a0 before freeze+d9 early return; imposter+d8 then delegates active-only pass.
   allowProximity is separate from world map-active+da: caller supplies logical-not camera+6df; the
   exact camera-byte state meaning is not established here. Normal mode keeps a ten-sample speed
   average, suppressing arbitration when ordered average>+ec. Active GUID type1 gains priority4 only
   for modes201/202/204, map-active+da, or lot+4bc; camera-XZ containing lot gets3 when
   allowProximity||+da. Other priorities are signed lot+c4. Zero-filled16-byte score vector is
   resized to the total list length; skipped null/destroying lots leave zero tail records.
   Priorities are signed; counts/budget comparisons unsigned. Priority<=0 requires strictly
   distanceSquared<radiusSquared; COMISS/JBE also rejects unordered NaN, unlike simplified displayed
   C. Requested detail+c1 is immediate, queued resource work completes separately. Throttling can
   defer selected promotions while still processing demotions. Debug lot-outline call00c640b0 uses
   manager ECX plus a lot pointer; it does not mutate LOD. */

void __thiscall
WorldManager_UpdateLotDetailRequests
          (void *this,float deltaSeconds,float *viewPosition,bool allowProximity,void *cameraContext
          )

{
  float *pfVar1;
  int *piVar2;
  undefined4 **ppuVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  undefined1 auVar7 [16];
  bool bVar8;
  uchar uVar9;
  bool bVar10;
  int iVar11;
  int *piVar12;
  void *pvVar13;
  undefined4 **ppuVar14;
  undefined4 uVar15;
  undefined4 *puVar16;
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  float fVar21;
  undefined4 *puVar22;
  float fVar23;
  float fVar24;
  undefined4 *local_884;
  char cStack_87e;
  undefined1 uStack_87d;
  undefined4 *local_87c;
  undefined4 *local_878;
  undefined4 *local_874;
  int *local_870;
  int iStack_86c;
  int local_868;
  int *local_864;
  undefined1 local_860 [28];
  float local_844;
  float local_840;
  float fStack_83c;
  float fStack_838;
  float fStack_834;
  undefined4 *local_824;
  undefined4 *local_820;
  undefined1 *local_81c;
  char *local_818;
  undefined4 *local_814;
  undefined4 local_810 [512];
  undefined1 local_10 [12];
  
  local_884 = DAT_011ede58;
  fVar21 = *(float *)((int)this + 0x3a0);
  fVar23 = *(float *)((int)this + 0x3a4);
  fVar24 = *(float *)((int)this + 0x3a8);
  fVar4 = viewPosition[1];
  fVar5 = viewPosition[2];
  fVar6 = viewPosition[3];
  *(float *)((int)this + 0x3a0) = *viewPosition;
  *(float *)((int)this + 0x3a4) = fVar4;
  *(float *)((int)this + 0x3a8) = fVar5;
  *(float *)((int)this + 0x3ac) = fVar6;
  if (*(char *)((int)this + 0xd9) != '\0') {
    return;
  }
  if (*(char *)((int)this + 0xd8) != '\0') {
    WorldManager_ApplyImposterLotDetailRequests(this);
    return;
  }
  local_844 = *(float *)((int)this + 0xdc) * *(float *)((int)this + 0xdc);
  local_868 = DAT_0118532c;
  if (allowProximity) {
    fVar21 = fVar21 - *(float *)((int)this + 0x3a0);
    fVar23 = fVar23 - *(float *)((int)this + 0x3a4);
    fVar24 = fVar24 - *(float *)((int)this + 0x3a8);
    auVar17._0_4_ = fVar24 * fVar24 + fVar23 * fVar23 + fVar21 * fVar21;
    auVar17._4_4_ = auVar17._0_4_;
    auVar17._8_4_ = auVar17._0_4_;
    auVar17._12_4_ = auVar17._0_4_;
    local_860._0_16_ = sqrtps(auVar17,auVar17);
    auVar18._0_4_ = deltaSeconds * -1.0;
    auVar18._4_4_ = deltaSeconds * -1.0;
    auVar18._8_4_ = deltaSeconds * -1.0;
    auVar18._12_4_ = deltaSeconds * -1.0;
    auVar19._4_4_ = deltaSeconds;
    auVar19._0_4_ = deltaSeconds;
    auVar19._8_4_ = deltaSeconds;
    auVar19._12_4_ = deltaSeconds;
    auVar19 = maxps(auVar18,auVar19);
    auVar20._4_4_ = -(uint)(auVar19._4_4_ <= 1.1920929e-07);
    auVar20._0_4_ = -(uint)(auVar19._0_4_ <= 1.1920929e-07);
    auVar20._8_4_ = -(uint)(auVar19._8_4_ <= 1.1920929e-07);
    auVar20._12_4_ = -(uint)(auVar19._12_4_ <= 1.1920929e-07);
    iVar11 = movmskps(local_884,auVar20);
    if (iVar11 == 0xf) {
      local_87c = (undefined4 *)0x0;
    }
    else {
      local_87c = (undefined4 *)((float)local_860._0_4_ / deltaSeconds);
    }
    piVar12 = *(int **)((int)this + 0x310);
    piVar2 = (int *)((int)this + 0x310);
    iVar11 = 0;
    if (piVar12 != piVar2) {
      do {
        piVar12 = (int *)*piVar12;
        iVar11 = iVar11 + 1;
      } while (piVar12 != piVar2);
      if (iVar11 == 10) {
        piVar12 = (int *)*piVar2;
        *(int *)piVar12[1] = *piVar12;
        *(int *)(*piVar12 + 4) = piVar12[1];
        *piVar12 = *(int *)((int)this + 0x318);
        *(int **)((int)this + 0x318) = piVar12;
      }
    }
    FUN_00c65a90(piVar2,&local_87c);
    piVar12 = (int *)*piVar2;
    puVar22 = (undefined4 *)0x0;
    puVar16 = (undefined4 *)0x0;
    if (piVar12 != piVar2) {
      do {
        pfVar1 = (float *)(piVar12 + 2);
        piVar12 = (int *)*piVar12;
        puVar16 = (undefined4 *)((int)puVar16 + 1);
        puVar22 = (undefined4 *)(*pfVar1 + (float)puVar22);
      } while (piVar12 != piVar2);
      local_878 = puVar22;
      if (puVar16 != (undefined4 *)0x0) {
        fVar21 = (float)(int)puVar16;
        if ((int)puVar16 < 0) {
          fVar21 = fVar21 + 4.2949673e+09;
        }
        puVar22 = (undefined4 *)((float)puVar22 / fVar21);
        local_878 = puVar22;
        local_874 = puVar16;
      }
    }
    if (*(float *)((int)this + 0xec) <= (float)puVar22 &&
        (float)puVar22 != *(float *)((int)this + 0xec)) {
      return;
    }
  }
  if (*(char *)((int)this + 0x1cc) != '\0') {
    LotSpatialIndex_RebuildBuckets((int)this);
  }
  local_824 = local_810;
  local_81c = local_10;
  local_818 = "World/WorldManager/LotScores";
  local_820 = local_824;
  local_814 = local_824;
  LotDetailScores_Resize(&local_824,*(int *)((int)this + 0x208) - *(int *)((int)this + 0x204) >> 2);
  local_864 = (int *)0x0;
  local_870 = WorldObjects_FindByGuid
                        (this,*(uint *)((int)this + 0x170),*(uint *)((int)this + 0x174),(uint *)0x0)
  ;
  if ((local_870 == (int *)0x0) || (iVar11 = (**(code **)(*local_870 + 0x40))(), iVar11 != 1)) {
LAB_00c6c325:
    local_870 = (int *)0x0;
  }
  else {
    iVar11 = *(int *)((int)this + 0x154);
    if ((iVar11 != 0xc9) &&
       ((((iVar11 != 0xca && (iVar11 != 0xcc)) && (*(char *)((int)this + 0xda) == '\0')) &&
        ((char)local_870[0x12f] == '\0')))) goto LAB_00c6c325;
  }
  if ((!allowProximity) && (*(char *)((int)this + 0xda) == '\0')) goto LAB_00c6c378;
  if (local_884 == (undefined4 *)0x0) {
LAB_00c6c372:
    local_864 = (int *)0x0;
  }
  else {
    local_840 = *viewPosition;
    fStack_83c = viewPosition[1];
    fStack_838 = viewPosition[2];
    fStack_834 = viewPosition[3];
    local_860._0_16_ = *(undefined1 (*) [16])viewPosition;
    pvVar13 = FUN_00c7e0c0(local_884,local_840,(float)local_860._8_4_);
    if (pvVar13 == (void *)0x0) goto LAB_00c6c372;
    local_864 = *(int **)((int)pvVar13 + 0x18);
  }
LAB_00c6c378:
  local_87c = *(undefined4 **)((int)this + 0x204);
  local_878 = (undefined4 *)0x0;
  local_884 = (undefined4 *)0x0;
  local_874 = *(undefined4 **)((int)this + 0x208);
  if (local_87c != *(undefined4 **)((int)this + 0x208)) {
    iStack_86c = 0;
    do {
      piVar2 = (int *)*local_87c;
      if ((piVar2 != (int *)0x0) && (*(char *)((int)piVar2 + 0xc9) == '\0')) {
        if (piVar2 == local_870) {
          iVar11 = 4;
        }
        else if (piVar2 == local_864) {
          iVar11 = 3;
        }
        else {
          iVar11 = Lot_GetDetailPriority(piVar2);
        }
        if (allowProximity) {
          if (iVar11 < local_868) {
            iVar11 = 0;
          }
        }
        else if ((local_868 <= iVar11) &&
                (local_884 = (undefined4 *)((int)local_884 + 1), iVar11 == 4)) {
          local_878 = (undefined4 *)((int)local_878 + 1);
        }
        auVar7._12_4_ = 0;
        auVar7._0_12_ = local_860._4_12_;
        local_860._0_16_ = auVar7 << 0x20;
        fVar21 = WorldManager_ComputeLotDetailScore(this,viewPosition,piVar2,(float *)local_860);
        *(float *)((int)local_824 + iStack_86c + 0xc) = fVar21;
        puVar22 = (undefined4 *)((int)local_824 + iStack_86c);
        *puVar22 = piVar2;
        puVar22[2] = iVar11;
        puVar22[1] = local_860._0_4_;
        iStack_86c = iStack_86c + 0x10;
      }
      local_87c = local_87c + 1;
    } while (local_87c != local_874);
  }
  ppuVar3 = (undefined4 **)((int)this + 0xe4);
  ppuVar14 = ppuVar3;
  if (local_884 <= *(undefined4 **)((int)this + 0xe4)) {
    ppuVar14 = &local_884;
  }
  if (*ppuVar14 <= local_878) {
    ppuVar14 = &local_878;
  }
  local_884 = *ppuVar14;
  if (allowProximity) {
    ppuVar14 = &local_884;
    if (local_884 <= *ppuVar3) {
      ppuVar14 = ppuVar3;
    }
    local_884 = *ppuVar14;
  }
  local_874 = (undefined4 *)((int)local_820 - (int)local_824 >> 4);
  ppuVar14 = &local_884;
  if (local_874 <= local_884) {
    ppuVar14 = &local_874;
  }
  local_884 = *ppuVar14;
  puVar22 = local_874;
  if (local_884 < local_874) {
    puVar22 = local_884;
  }
  LotDetailScores_PartialSort(local_824,local_824 + (int)puVar22 * 4,local_820);
  local_87c = (undefined4 *)0x0;
  bVar10 = true;
  cStack_87e = '\0';
  uStack_87d = 0;
  if ((DAT_011edbc0 == '\0') || (bVar8 = true, DAT_01185328 < *ppuVar3)) {
    bVar8 = false;
  }
  local_874 = local_820;
  puVar22 = local_824;
  if (local_824 != local_820) {
    do {
      pvVar13 = (void *)*puVar22;
      if (pvVar13 != (void *)0x0) {
        if ((local_884 <= local_87c) ||
           (((int)puVar22[2] < 1 &&
            (local_844 < (float)puVar22[1] || local_844 == (float)puVar22[1])))) {
          Lot_SetDetailRequested(pvVar13,'\0');
        }
        else {
          local_87c = (undefined4 *)((int)local_87c + 1);
          uVar9 = Lot_GetDetailRequested(pvVar13);
          if (uVar9 == '\0') {
            if (cStack_87e == '\0') {
              cStack_87e = '\x01';
              if ((!bVar8) || (bVar10 = WorldManager_HasPendingLotDetail(this), !bVar10)) {
LAB_00c6c5fa:
                bVar10 = !bVar8;
                Lot_SetDetailRequested(pvVar13,'\x01');
                goto LAB_00c6c58e;
              }
              bVar10 = false;
            }
            else if (bVar10) goto LAB_00c6c5fa;
            uStack_87d = 1;
          }
LAB_00c6c58e:
          if ((*(int *)((int)this + 0x1b4) == 2) &&
             (uVar15 = FUN_0096fe00((int)this), (char)uVar15 != '\0')) {
            local_860._0_8_ = *(undefined8 *)((int)pvVar13 + 0x48);
            uVar15 = FUN_00c63720(this,(uint *)local_860);
            if ((char)uVar15 != '\0') {
              FUN_00c640b0(pvVar13,'\0');
            }
          }
        }
      }
      puVar22 = puVar22 + 4;
    } while (puVar22 != local_874);
  }
  if (bVar8) {
    *(undefined1 *)((int)this + 0xdb) = uStack_87d;
  }
  else {
    bVar10 = WorldManager_HasPendingLotDetail(this);
    *(bool *)((int)this + 0xdb) = bVar10;
  }
  if ((local_824 != (undefined4 *)0x0) && (local_824 != local_814)) {
    Memory_FreeIfNonNull(local_824);
  }
  return;
}

