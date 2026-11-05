/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 cdecl lot/packedcell/ignoredObject, ALbool only. Thirdword Object* excluded both against
   shell+2E8 and by inserting pointer into sorted visited-object set AD2260; not flags or an object
   GUID. Positivelevels only. Shell shortcut also requires inclusive A76B20 bounds and A8CF20
   selected floor-mask test. Otherwise query lowerlevel tiles X/Z +-2 inclusive with per-tile object
   collection flags0/0/0/maskF/0/mode5. Retain each candidate during inspection; alreadyseen
   pointers skipped. Component-specific branches test cell-centre distance2.1 and object height
   versus sampled target with inclusive .05f SIMD comparison. All candidate/temp references released
   on exit. Labels B04580/B04B90 are not assigned speculative semantic meanings here; complete
   special-object admission still requires their own contracts. */

bool __cdecl Lot_HasObjectSupport(undefined *lot,char *cell,undefined *ignoredObject)

{
  int *piVar1;
  float fVar2;
  undefined1 auVar3 [16];
  int iVar4;
  uint *puVar5;
  undefined *puVar6;
  uint *puVar7;
  bool bVar8;
  uint uVar9;
  int iVar10;
  void *pvVar11;
  undefined4 extraout_EAX;
  undefined4 uVar12;
  undefined4 extraout_ECX;
  undefined4 *this;
  int iVar13;
  float10 fVar14;
  float10 fVar15;
  float10 fVar16;
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  undefined1 auVar21 [16];
  char local_9c;
  undefined1 local_9b;
  undefined1 local_9a;
  undefined4 *local_98;
  int local_94;
  uint *local_90;
  uint *local_8c;
  uint *local_88;
  char *local_84;
  int local_7c;
  LotXZLevel local_78;
  float local_6c;
  void *local_68;
  void *local_64;
  undefined4 local_60;
  char *local_5c;
  int local_58;
  LotXZLevel local_54;
  undefined4 *local_48;
  int local_44;
  int local_40;
  LotXZLevel local_3c;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  int local_18 [5];
  
  puVar6 = ignoredObject;
  if ('\0' < cell[2]) {
    if ((((*(undefined **)(lot + 0x2e8) != (undefined *)0x0) &&
         (*(undefined **)(lot + 0x2e8) != ignoredObject)) &&
        (uVar9 = Lot_ContainsGridVertexXZ(lot,(int)*cell,(int)cell[1]), (char)uVar9 != '\0')) &&
       (bVar8 = FloorManager_HasShellSupportAtCell(*(void **)(lot + 0x290),cell), bVar8)) {
      return true;
    }
    local_44 = cell[2] + -1;
    local_3c.x = -1.0;
    local_3c.z = -1.0;
    local_3c.level = 0;
    TilePart_GetLocalSamplePoint(cell,&local_3c);
    fVar14 = LotLevelHeight_SampleLocalPosition(*(void **)(lot + 0x290),&local_3c);
    local_6c = (float)fVar14;
    local_90 = (uint *)0x0;
    local_8c = (uint *)0x0;
    local_88 = (uint *)0x0;
    local_84 = "World/Lot/HasObjectSupport/ObjectSet";
    if (puVar6 != (undefined *)0x0) {
      FUN_00ad2260(&local_90,local_18,(uint *)&ignoredObject);
    }
    pvVar11 = (void *)0x0;
    iVar10 = *cell + -2;
    local_68 = (void *)0x0;
    local_64 = (void *)0x0;
    local_60 = 0;
    local_5c = "UserTool/HasObjectSupport/objectsOnTile";
    local_94 = iVar10;
    if (iVar10 <= *cell + 2) {
      do {
        iVar13 = cell[1] + -2;
        local_94 = iVar10;
        local_7c = iVar13;
        if (iVar13 <= cell[1] + 2) {
          do {
            if (((-1 < iVar10) && (iVar10 <= *(int *)(lot + 0x174))) &&
               ((-1 < iVar13 && (iVar13 <= *(int *)(lot + 0x178))))) {
              local_9c = (char)iVar10;
              local_9b = (undefined1)iVar13;
              local_9a = (undefined1)local_44;
              local_7c = iVar13;
              local_64 = pvVar11;
              LotQuery_CollectObjectsOnTile(lot,&local_9c,&local_68,'\0','\0','\0',0xf,0,5);
              local_40 = (int)local_64 - (int)local_68 >> 2;
              local_58 = 0;
              iVar10 = local_94;
              pvVar11 = local_68;
              if (0 < local_40) {
                do {
                  this = *(undefined4 **)((int)local_68 + local_58 * 4);
                  local_98 = this;
                  if (this != (undefined4 *)0x0) {
                    piVar1 = this + 1;
                    LOCK();
                    *piVar1 = *piVar1 + 1;
                    UNLOCK();
                    iVar13 = (int)local_8c - (int)local_90 >> 2;
                    iVar10 = iVar13;
                    puVar5 = local_90;
                    while (iVar4 = iVar10, 0 < iVar4) {
                      iVar10 = iVar4 >> 1;
                      if ((undefined4 *)puVar5[iVar10] < this) {
                        puVar5 = puVar5 + iVar10 + 1;
                        iVar10 = iVar4 + (-1 - iVar10);
                      }
                    }
                    if (((puVar5 == local_8c) || (this < (undefined4 *)*puVar5)) ||
                       (puVar7 = local_8c, puVar5 == puVar5 + 1)) {
                      uVar9 = FUN_00b04580((int)this);
                      if ((char)uVar9 == '\0') {
                        uVar12 = FUN_00b04b90((int)this);
                        puVar5 = local_90;
                        if ((char)uVar12 != '\0') {
                          Object_GetComponentByMask(this,DAT_011edf08);
                          local_54.x = -1.0;
                          local_54.z = -1.0;
                          local_54.level = 0;
                          uVar12 = FUN_00afe4f0(this,&local_54.x);
                          if ((char)uVar12 == '\0') goto LAB_00ad2651;
                          puVar7 = local_8c;
                          if ((2.1 < ABS(((float)(int)*cell + 0.5) - local_54.x)) ||
                             (2.1 < ABS(((float)(int)cell[1] + 0.5) - local_54.z)))
                          goto LAB_00ad280e;
                          iVar10 = FUN_00afe390(this);
                          fVar14 = LotLevelHeight_SampleLocalPosition
                                             (*(void **)(lot + 0x290),&local_54);
                          local_30 = 0.05;
                          fStack_2c = 0.05;
                          fStack_28 = 0.05;
                          fStack_24 = 0.05;
                          fVar15 = FUN_00ab02d0();
                          fVar16 = (float10)iVar10;
                          if (iVar10 < 0) {
                            fVar16 = fVar16 + (float10)4.2949673e+09;
                          }
                          fVar2 = (float)((fVar16 * fVar15 + (float10)(float)fVar14) -
                                         (float10)local_6c);
                          auVar20._0_4_ = fVar2 * -1.0;
                          auVar20._4_4_ = fVar2 * -1.0;
                          auVar20._8_4_ = fVar2 * -1.0;
                          auVar20._12_4_ = fVar2 * -1.0;
                          auVar18._4_4_ = fVar2;
                          auVar18._0_4_ = fVar2;
                          auVar18._8_4_ = fVar2;
                          auVar18._12_4_ = fVar2;
                          auVar18 = maxps(auVar20,auVar18);
                          auVar21._4_4_ = -(uint)(auVar18._4_4_ <= fStack_2c);
                          auVar21._0_4_ = -(uint)(auVar18._0_4_ <= local_30);
                          auVar21._8_4_ = -(uint)(auVar18._8_4_ <= fStack_28);
                          auVar21._12_4_ = -(uint)(auVar18._12_4_ <= fStack_24);
                          iVar10 = movmskps(extraout_ECX,auVar21);
                          puVar5 = local_90;
                          this = local_98;
                          if (iVar10 == 0xf) {
                            FUN_007462e0((int *)&local_98);
                            if (local_68 != (void *)0x0) {
                              Memory_FreeIfNonNull(local_68);
                            }
                            if (local_90 == (uint *)0x0) {
                              return true;
                            }
                            Memory_FreeIfNonNull(local_90);
                            return true;
                          }
                        }
joined_r0x00ad2628:
                        while (iVar10 = iVar13, 0 < iVar10) {
                          iVar13 = iVar10 >> 1;
                          if ((undefined4 *)puVar5[iVar13] < this) {
                            puVar5 = puVar5 + iVar13 + 1;
                            iVar13 = iVar10 + (-1 - iVar13);
                          }
                        }
                        local_48 = this;
                        if ((puVar5 == local_8c) ||
                           (puVar7 = local_8c, this < (undefined4 *)*puVar5)) {
                          if ((local_8c == local_88) || (puVar5 != local_8c)) {
                            FUN_00982420(&local_90,puVar5,&local_48);
                            puVar7 = local_8c;
                          }
                          else {
                            puVar7 = local_8c + 1;
                            if (local_8c != (uint *)0x0) {
                              *local_8c = (uint)this;
                            }
                          }
                        }
                        goto LAB_00ad280e;
                      }
                      pvVar11 = Object_GetComponentByMask(this,DAT_011edf08);
                      local_78.x = -1.0;
                      local_78.z = -1.0;
                      local_78.level = 0;
                      if ((pvVar11 == (void *)0x0) ||
                         ((ObjectLocation_CopyXZLevel
                                     (pvVar11,&local_78.x,&local_78.z,&local_78.level),
                          ABS(((float)(int)*cell + 0.5) - local_78.x) <= 2.1 &&
                          (ABS(((float)(int)cell[1] + 0.5) - local_78.z) <= 2.1)))) {
                        iVar10 = FUN_00afe390(this);
                        fVar14 = LotLevelHeight_SampleLocalPosition
                                           (*(void **)(lot + 0x290),&local_78);
                        local_30 = 0.05;
                        fStack_2c = 0.05;
                        fStack_28 = 0.05;
                        fStack_24 = 0.05;
                        fVar15 = FUN_00ab02d0();
                        fVar16 = (float10)iVar10;
                        if (iVar10 < 0) {
                          fVar16 = fVar16 + (float10)4.2949673e+09;
                        }
                        fVar2 = (float)((fVar16 * fVar15 + (float10)(float)fVar14) -
                                       (float10)local_6c);
                        auVar17._0_4_ = fVar2 * -1.0;
                        auVar17._4_4_ = fVar2 * -1.0;
                        auVar17._8_4_ = fVar2 * -1.0;
                        auVar17._12_4_ = fVar2 * -1.0;
                        auVar3._4_4_ = fVar2;
                        auVar3._0_4_ = fVar2;
                        auVar3._8_4_ = fVar2;
                        auVar3._12_4_ = fVar2;
                        auVar18 = maxps(auVar17,auVar3);
                        auVar19._4_4_ = -(uint)(auVar18._4_4_ <= fStack_2c);
                        auVar19._0_4_ = -(uint)(auVar18._0_4_ <= local_30);
                        auVar19._8_4_ = -(uint)(auVar18._8_4_ <= fStack_28);
                        auVar19._12_4_ = -(uint)(auVar18._12_4_ <= fStack_24);
                        iVar10 = movmskps(extraout_EAX,auVar19);
                        puVar5 = local_90;
                        this = local_98;
                        if (iVar10 == 0xf) {
                          piVar1 = local_98 + 1;
                          LOCK();
                          iVar10 = *piVar1;
                          *piVar1 = *piVar1 + -1;
                          UNLOCK();
                          if (iVar10 == 1) {
                            LOCK();
                            *piVar1 = 1;
                            UNLOCK();
                            (**(code **)*local_98)(1);
                          }
                          if (local_68 != (void *)0x0) {
                            Memory_FreeIfNonNull(local_68);
                          }
                          if (local_90 == (uint *)0x0) {
                            return true;
                          }
                          Memory_FreeIfNonNull(local_90);
                          return true;
                        }
                        goto joined_r0x00ad2628;
                      }
LAB_00ad2651:
                      LOCK();
                      iVar10 = *piVar1;
                      *piVar1 = *piVar1 + -1;
                      UNLOCK();
                      if (iVar10 != 1) goto LAB_00ad282b;
                      LOCK();
                      *piVar1 = 1;
                      UNLOCK();
                    }
                    else {
LAB_00ad280e:
                      local_8c = puVar7;
                      LOCK();
                      iVar10 = *piVar1;
                      *piVar1 = *piVar1 + -1;
                      UNLOCK();
                      if (iVar10 != 1) goto LAB_00ad282b;
                      LOCK();
                      *piVar1 = 1;
                      UNLOCK();
                    }
                    (**(code **)*this)(1);
                  }
LAB_00ad282b:
                  local_58 = local_58 + 1;
                  iVar10 = local_94;
                  pvVar11 = local_68;
                  iVar13 = local_7c;
                } while (local_58 < local_40);
              }
            }
            iVar13 = iVar13 + 1;
            local_7c = iVar13;
          } while (iVar13 <= cell[1] + 2);
        }
        iVar10 = iVar10 + 1;
        local_94 = iVar10;
      } while (iVar10 <= *cell + 2);
    }
    if (pvVar11 != (void *)0x0) {
      Memory_FreeIfNonNull(pvVar11);
    }
    if (local_90 != (uint *)0x0) {
      Memory_FreeIfNonNull(local_90);
    }
  }
  return false;
}

