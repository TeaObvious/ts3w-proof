/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: ECX PoolManager plus lowbyte flag, void RET4. Two owned ranges, three nonowned alignment bytes excluded. Actual mode2 rooms excludeUInt16 0/FFFF, firstshape location->ACF820/ACF8E0, oldhelper match by location/object/kind, retained refcount or create, AF8290 point times lottransform, B69280 map publication, footprint/slot resource changes and leftover destruction. Full geometry, pointproducer, virtual resource/error/reentry/thread lifetime not recovered. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 pool room/helper ownership comparison): Physical ECX manager plus one
   low-byte stack flag, RET4, no meaningful result proved. Complete body has owned B6C4D0..B6C74C
   and B6C750..B6D0C5 inclusive; B6C74D..B6C74F is THREE unowned alignment bytes, not instructions.
   If manager+20 requests it, call B68B90. Require lot room service and acquire mode2 collection.
   Snapshot existing24-byte manager entries by signed-byte packed location through B54E10, then
   reset manager vector end to begin. Iterate nonzero/nonFFFF room IDs; first shape location and
   ACF820 admission gate each candidate. Match prior helper by packed location, ObjectRegistry
   lookup and kind comparison; retain accepted object+4 atomically and remove reused entry from
   temporary map. Otherwise create through76D250 then find/retain. Apply placement matrix via
   AF8290/AB1540/958760; publish actual object GUID, packed location and UInt16 room via B69280.
   Selected footprint/setup/event children retain their own contracts; observed calls do not prove
   full child ownership or pixel behavior. Release retained helper at loop bottom with atomic
   decrement and virtual destructor path on last reference. Leftover old entries reach lot
   virtual+3C and76D2A0; do not call that virtual target a recovered delete API. Original
   initialization branch and newly created state choose lot virtual+30 versus location event
   notifications. Gather selected object GUIDs, optionally include ladder GUIDs, dispatch
   event626A0404 only for a nonempty vector, release event object via virtual+8, then free temporary
   map storage. Source saved-grid raw room-needle scanning and largest-candidate sorting do not
   reproduce this room/object reconciliation. No callback/thread-race or current host-helper
   equivalence established. C virtual function-pointer/undefined artifacts remain actual output, not
   speculative ABI repairs. */

void __thiscall PoolManager_ReconcileRoomHelpers(void *this,char param_1)

{
  char *pcVar1;
  ushort uVar2;
  int iVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  bool bVar10;
  bool bVar11;
  bool bVar12;
  byte bVar13;
  bool bVar14;
  char cVar15;
  int iVar16;
  undefined4 uVar17;
  void *pvVar18;
  undefined4 *puVar19;
  int *piVar20;
  undefined4 *puVar21;
  float *pfVar22;
  ulonglong *puVar23;
  uint *puVar24;
  uint uVar25;
  int *piVar26;
  bool bVar27;
  char *pcVar28;
  undefined4 uVar29;
  uint uVar30;
  float fVar31;
  float fVar32;
  float fVar33;
  float fVar34;
  float fVar35;
  float fVar36;
  float fVar37;
  float fVar38;
  float fVar39;
  float fVar40;
  float fVar41;
  float fVar42;
  ulonglong uVar43;
  ulonglong guid;
  wchar_t *pwVar44;
  char cStack_18c;
  char cStack_18b;
  byte bStack_18a;
  char cStack_189;
  uint uStack_184;
  void *pvStack_180;
  int local_17c;
  ushort *puStack_178;
  int *piStack_174;
  void *pvStack_170;
  void *pvStack_16c;
  int *piStack_168;
  void *local_164;
  undefined4 uStack_160;
  undefined4 uStack_15c;
  void *local_154;
  undefined1 auStack_150 [4];
  int *local_14c;
  uint local_148;
  int local_144;
  float local_140;
  undefined4 local_13c;
  undefined4 local_138;
  char *local_134;
  int *piStack_130;
  int *piStack_12c;
  undefined4 uStack_128;
  char *pcStack_124;
  ulonglong uStack_120;
  undefined4 uStack_118;
  float fStack_114;
  int iStack_108;
  int *piStack_104;
  undefined4 uStack_100;
  float fStack_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  undefined4 uStack_f0;
  undefined4 uStack_ec;
  float fStack_e8;
  undefined4 uStack_e4;
  float fStack_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  ushort *puStack_c8;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float fStack_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float fStack_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float fStack_90;
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
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  uint auStack_50 [19];
  
  if (*(char *)((int)this + 0x20) != '\0') {
    FUN_00b68b90(this);
  }
  if ((*(void **)(*(int *)this + 0x298) != (void *)0x0) &&
     (local_154 = (void *)FUN_00b46ea0(*(void **)(*(int *)this + 0x298),2), local_154 != (void *)0x0
     )) {
    iVar16 = thunk_FUN_00835d40();
    local_164 = (void *)0x0;
    local_17c = iVar16;
    if (iVar16 != 0) {
      local_164 = (void *)FUN_008295c0(iVar16);
    }
    pvVar18 = local_164;
    if ((((param_1 == '\0') || (iVar16 == 0)) ||
        (uVar17 = FUN_00944900(iVar16), (char)uVar17 != '\0')) ||
       ((pvVar18 == (void *)0x0 || (*(char *)(iVar16 + 0x97a) != '\0')))) {
      bVar11 = false;
    }
    else {
      iVar3 = *(int *)((int)this + 0xc);
      bVar11 = true;
      for (iVar16 = *(int *)((int)this + 8); iVar16 != iVar3; iVar16 = iVar16 + 0x18) {
        if (*(int *)(iVar16 + 8) != 0 || *(int *)(iVar16 + 0xc) != 0) {
          pvVar18 = ObjectRegistry_GetGlobal();
          pvVar18 = ObjectRegistry_FindBorrowed(pvVar18,*(ulonglong *)(iVar16 + 8));
          if (pvVar18 != (void *)0x0) {
            (**(code **)(**(int **)this + 0x3c))(pvVar18,0);
          }
        }
      }
    }
    local_144 = 0;
    local_138 = 0;
    iVar16 = *(int *)((int)this + 8);
    iVar3 = *(int *)((int)this + 0xc);
    local_140 = 1.0;
    local_13c = 0x40000000;
    local_134 = "Lot/PoolManager/existingPoolObjects";
    local_148 = 1;
    local_14c = &DAT_0114d900;
    if (iVar16 != iVar3) {
      pcVar28 = (char *)(iVar16 + 0x13);
      do {
        pvStack_16c = (void *)(((pcVar28[-1] * 0x100 + (int)*pcVar28) * 0x100 + (int)pcVar28[-2]) *
                               0x100 + (int)pcVar28[-3]);
        puVar19 = (undefined4 *)FUN_00b54e10(auStack_150,(uint *)&pvStack_16c);
        *puVar19 = *(undefined4 *)(pcVar28 + -0xb);
        puVar19[1] = *(undefined4 *)(pcVar28 + -7);
        puVar19[2] = *(undefined4 *)(pcVar28 + -3);
        pcVar1 = pcVar28 + 1;
        iVar16 = iVar16 + 0x18;
        pcVar28 = pcVar28 + 0x18;
        puVar19[3] = *(undefined4 *)pcVar1;
      } while (iVar16 != iVar3);
    }
    *(undefined4 *)((int)this + 0xc) = *(undefined4 *)((int)this + 8);
    pvStack_16c = ObjectRegistry_GetGlobal();
    piVar20 = FloorMessagePool_AcquireStorage();
    if (piVar20 == (int *)0x0) {
      piVar20 = (int *)0x0;
      piStack_168 = (int *)0x0;
    }
    else {
      *piVar20 = (int)&PTR_FUN_01065f8c;
      LOCK();
      piVar20[1] = 0;
      UNLOCK();
      *piVar20 = (int)&PTR_FUN_0106e678;
      piVar20[3] = 0;
      piVar20[4] = 0;
      piVar20[5] = 0;
      piVar20[6] = (int)"Lot/MessageData/tPoolObjectsCreatedData";
      piStack_168 = piVar20;
      (**(code **)(*piVar20 + 4))();
    }
    piVar20[2] = *(int *)this;
    uVar43 = CONCAT44(DAT_011ed254,DAT_011ed250);
    if ((local_17c == 0) || (bVar10 = true, *(char *)(local_17c + 0x97e) == '\0')) {
      bVar10 = false;
    }
    if ((_DAT_011ed260 & 1) == 0) {
      _DAT_011ed260 = _DAT_011ed260 | 1;
      pwVar44 = L"PoolHelper";
      pvVar18 = NameGuidMaps_GetGlobal();
      uVar43 = NameGuidMaps_FindByWideName(pvVar18,(ushort *)pwVar44);
      DAT_011ed258 = 0x319e4f1d;
      DAT_011ed25c = 0;
    }
    piVar20 = *(int **)((int)local_154 + 0x38);
    puStack_178 = (ushort *)*piVar20;
    piStack_174 = piVar20;
    if (puStack_178 == (ushort *)0x0) {
      piStack_174 = piVar20 + 1;
      if (piVar20[1] == 0) {
        do {
          piStack_174 = piStack_174 + 1;
        } while (*piStack_174 == 0);
      }
      puStack_178 = (ushort *)*piStack_174;
    }
    puStack_c8 = (ushort *)piVar20[*(int *)((int)local_154 + 0x3c)];
    if (puStack_178 != puStack_c8) {
      do {
        DAT_011ed254 = (int)(uVar43 >> 0x20);
        DAT_011ed250 = (int)uVar43;
        uVar2 = *puStack_178;
        uStack_184 = (uint)uVar2;
        if ((uVar2 != 0) && (uVar2 != 0xffff)) {
          cStack_18c = -1;
          cStack_18b = -1;
          bStack_18a = 0;
          cStack_189 = -1;
          bVar13 = SpanShape_BeginLocationEnumeration(puStack_178 + 2,&cStack_18c);
          uVar43 = CONCAT44(DAT_011ed254,DAT_011ed250);
          if (bVar13 != 0) {
            uVar17 = Lot_TestCellSupportRegionType
                               (*(void **)this,&cStack_18c,'\x01',(undefined1 *)0x0);
            uVar43 = CONCAT44(DAT_011ed254,DAT_011ed250);
            if ((char)uVar17 != '\0') {
              bVar14 = FUN_00acf8e0(*(void **)this,&cStack_18c);
              pvStack_180 = (void *)((((char)bStack_18a * 0x100 + (int)cStack_189) * 0x100 +
                                     (int)cStack_18b) * 0x100 + (int)cStack_18c);
              FUN_009d6c30(auStack_150,&iStack_108,(uint *)&pvStack_180);
              uVar29 = 0;
              uVar17 = 0;
              puVar19 = (undefined4 *)0x0;
              if (iStack_108 != local_14c[local_148]) {
                uVar17 = *(undefined4 *)(iStack_108 + 0xc);
                uVar29 = *(undefined4 *)(iStack_108 + 8);
                puVar21 = ObjectRegistry_FindBorrowed(pvStack_16c,*(ulonglong *)(iStack_108 + 8));
                if (puVar21 != (undefined4 *)0x0) {
                  LOCK();
                  puVar21[1] = puVar21[1] + 1;
                  UNLOCK();
                  bVar27 = true;
                  if ((((puVar21[6] == DAT_011ed250) && (puVar21[8] == DAT_011ed258)) &&
                      (puVar21[9] == DAT_011ed25c)) && (puVar21[7] == DAT_011ed254)) {
                    bVar27 = false;
                  }
                  if (bVar27 == bVar14) {
                    FUN_00549450(auStack_150,(int *)&piStack_130,iStack_108,piStack_104);
                    puVar19 = puVar21;
                  }
                  else {
                    puVar19 = (undefined4 *)0x0;
                    piVar20 = puVar21 + 1;
                    LOCK();
                    iVar16 = *piVar20;
                    *piVar20 = *piVar20 + -1;
                    UNLOCK();
                    if (iVar16 == 1) {
                      LOCK();
                      puVar21[1] = 1;
                      UNLOCK();
                      (**(code **)*puVar21)(1);
                    }
                  }
                }
              }
              guid = CONCAT44(uVar17,uVar29);
              bVar27 = false;
              bVar12 = false;
              if (puVar19 == (undefined4 *)0x0) {
                if (bVar14) {
                  uVar17 = 0xc73f8269;
                  uVar29 = 0x302af1ea;
                }
                else {
                  uVar17 = 0xe1bf0e2f;
                  uVar29 = 0xa2cf0d8d;
                }
                guid = FUN_0076d250(uVar17,uVar29,0);
                puVar19 = ObjectRegistry_FindBorrowed(pvStack_16c,guid);
                uVar43 = CONCAT44(DAT_011ed254,DAT_011ed250);
                if (puVar19 == (undefined4 *)0x0) goto LAB_00b6ce71;
                LOCK();
                puVar19[1] = puVar19[1] + 1;
                UNLOCK();
                bVar27 = true;
              }
              uVar43 = CONCAT44(DAT_011ed254,DAT_011ed250);
              if ((*(char *)((int)this + 4) != '\0') && (*(int *)((int)this + 0x1c) == 0)) {
                bVar12 = true;
              }
              if (puVar19 != (undefined4 *)0x0) {
                pvStack_180 = Object_GetComponentByMask(puVar19,DAT_011ea158);
                uStack_d4 = 0;
                uStack_d8 = 0;
                uStack_dc = 0;
                fStack_e0 = 1.0;
                uStack_f4 = 0;
                uStack_f8 = 0;
                uStack_100 = 0;
                fStack_c0 = 1.0;
                fStack_bc = 0.0;
                fStack_b8 = 0.0;
                fStack_b4 = 0.0;
                fStack_fc = 1.0;
                uStack_e4 = 0;
                uStack_ec = 0;
                uStack_f0 = 0;
                fStack_e8 = 1.0;
                fStack_b0 = 0.0;
                fStack_ac = 1.0;
                fStack_a8 = 0.0;
                fStack_a4 = 0.0;
                fStack_114 = 1.0;
                uStack_118 = 0;
                uStack_120 = 0;
                fStack_a0 = 0.0;
                fStack_9c = 0.0;
                fStack_98 = 1.0;
                fStack_94 = 0.0;
                fStack_90 = 0.0;
                fStack_8c = 0.0;
                fStack_88 = 0.0;
                fStack_84 = 1.0;
                FUN_00af8290(*(int *)this,&cStack_18c,&fStack_70);
                fStack_80 = fStack_70;
                fStack_7c = fStack_6c;
                fStack_78 = fStack_68;
                fStack_74 = 1.0;
                fStack_90 = fStack_70;
                fStack_8c = fStack_6c;
                fStack_88 = fStack_68;
                fStack_84 = 1.0;
                pfVar22 = (float *)FUN_00ab1540(*(void **)this,auStack_50);
                fVar4 = pfVar22[4];
                fVar5 = pfVar22[5];
                fVar41 = pfVar22[6];
                fVar42 = pfVar22[7];
                fVar6 = *pfVar22;
                fVar37 = pfVar22[1];
                fVar38 = pfVar22[2];
                fVar39 = pfVar22[3];
                fVar7 = pfVar22[8];
                fVar8 = pfVar22[9];
                fVar9 = pfVar22[10];
                fVar40 = pfVar22[0xb];
                fStack_60 = pfVar22[0xc];
                fStack_5c = pfVar22[0xd];
                fStack_58 = pfVar22[0xe];
                fStack_54 = pfVar22[0xf];
                fVar34 = fStack_bc * fVar41;
                fVar35 = fStack_bc * fVar42;
                fVar31 = fStack_c0 * fVar37;
                fVar32 = fStack_c0 * fVar38;
                fVar33 = fStack_c0 * fVar39;
                fVar36 = fStack_b8 * fVar40;
                fStack_c0 = fStack_c0 * fVar6 + fStack_bc * fVar4 + fStack_b8 * fVar7 +
                            fStack_b4 * fStack_60;
                fStack_bc = fVar31 + fStack_bc * fVar5 + fStack_b8 * fVar8 + fStack_b4 * fStack_5c;
                fStack_b8 = fVar32 + fVar34 + fStack_b8 * fVar9 + fStack_b4 * fStack_58;
                fStack_b4 = fVar33 + fVar35 + fVar36 + fStack_b4 * fStack_54;
                fVar34 = fStack_ac * fVar41;
                fVar35 = fStack_ac * fVar42;
                fVar31 = fStack_b0 * fVar37;
                fVar32 = fStack_b0 * fVar38;
                fVar33 = fStack_b0 * fVar39;
                fVar36 = fStack_a8 * fVar40;
                fStack_b0 = fStack_b0 * fVar6 + fStack_ac * fVar4 + fStack_a8 * fVar7 +
                            fStack_a4 * fStack_60;
                fStack_ac = fVar31 + fStack_ac * fVar5 + fStack_a8 * fVar8 + fStack_a4 * fStack_5c;
                fStack_a8 = fVar32 + fVar34 + fStack_a8 * fVar9 + fStack_a4 * fStack_58;
                fStack_a4 = fVar33 + fVar35 + fVar36 + fStack_a4 * fStack_54;
                fVar31 = fStack_a0 * fVar37;
                fVar32 = fStack_a0 * fVar38;
                fVar33 = fStack_a0 * fVar39;
                fVar34 = fStack_9c * fVar41;
                fVar35 = fStack_9c * fVar42;
                fVar36 = fStack_98 * fVar40;
                fStack_a0 = fStack_a0 * fVar6 + fStack_9c * fVar4 + fStack_98 * fVar7 +
                            fStack_94 * fStack_60;
                fStack_9c = fVar31 + fStack_9c * fVar5 + fStack_98 * fVar8 + fStack_94 * fStack_5c;
                fStack_98 = fVar32 + fVar34 + fStack_98 * fVar9 + fStack_94 * fStack_58;
                fStack_94 = fVar33 + fVar35 + fVar36 + fStack_94 * fStack_54;
                fVar37 = fStack_90 * fVar37;
                fVar38 = fStack_90 * fVar38;
                fVar39 = fStack_90 * fVar39;
                fVar41 = fStack_8c * fVar41;
                fVar42 = fStack_8c * fVar42;
                fVar40 = fStack_88 * fVar40;
                fStack_90 = fStack_90 * fVar6 + fStack_8c * fVar4 + fStack_88 * fVar7 +
                            fStack_84 * fStack_60;
                fStack_8c = fVar37 + fStack_8c * fVar5 + fStack_88 * fVar8 + fStack_84 * fStack_5c;
                fStack_88 = fVar38 + fVar41 + fStack_88 * fVar9 + fStack_84 * fStack_58;
                fStack_84 = fVar39 + fVar42 + fVar40 + fStack_84 * fStack_54;
                TransformComponent_SetWorldMatrix(pvStack_180,&fStack_c0);
                puVar23 = (ulonglong *)
                          PoolRoomObjectMap_FindOrInsertSignedRoom
                                    ((void *)((int)this + 8),(short *)&uStack_184);
                *puVar23 = guid;
                *(uint *)(puVar23 + 1) =
                     CONCAT13(cStack_189,CONCAT12(bStack_18a,CONCAT11(cStack_18b,cStack_18c)));
                *(short *)((int)puVar23 + 0xc) = (short)uStack_184;
                pvStack_180 = Object_GetComponentByMask(puVar19,DAT_011ea114);
                if (((bVar27) || (param_1 != '\0')) ||
                   (cVar15 = World_DispatchHandToolAllowUserPickup(), cVar15 != '\0')) {
                  pvStack_170 = Object_GetComponentByMask(puVar19,DAT_011e9fa8);
                  puVar21 = (undefined4 *)
                            FUN_004e4520(0x60,8,0,"Lot/PoolManager/FootprintResource",0);
                  if (puVar21 == (undefined4 *)0x0) {
                    piVar20 = (int *)0x0;
                  }
                  else {
                    piVar20 = FootprintResource_Construct(puVar21);
                    if (piVar20 != (int *)0x0) {
                      (**(code **)*piVar20)();
                    }
                  }
                  puVar24 = (uint *)FootprintResource_GetPrimaryPolygonVector((int)piVar20);
                  FootprintPolygonVector_Clear(puVar24);
                  FUN_00b69d80(this,puVar19,puStack_178 + 2,&fStack_70,(short)uStack_184,bStack_18a,
                               local_154,puVar24);
                  FUN_00b6c040(this,puVar19,(short)uStack_184,puVar24,(int)(char)bStack_18a);
                  FootprintComponent_SetResourceLayers
                            (pvStack_170,piVar20,(undefined4 *)0x0,(undefined4 *)0x0,(void *)0x1);
                  if (piVar20 != (int *)0x0) {
                    (**(code **)(*piVar20 + 4))();
                  }
                }
                FUN_00b689d0(this,puVar19,(int)(char)bStack_18a);
                if ((bVar27) || (bVar11)) {
                  bVar14 = true;
                }
                else {
                  bVar14 = false;
                }
                iVar16 = FUN_0068f130((int)puVar19);
                if ((iVar16 == 0) || (bVar14)) {
                  if (bVar10) {
                    *(undefined1 *)(local_17c + 0x978) = 1;
                  }
                  (**(code **)(**(int **)this + 0x30))(puVar19);
                  if (bVar10) {
                    *(undefined1 *)(local_17c + 0x978) = 0;
                  }
LAB_00b6ce18:
                  puVar21 = (undefined4 *)piStack_168[4];
                  uStack_160 = puVar19[2];
                  uStack_15c = puVar19[3];
                  if (puVar21 < (undefined4 *)piStack_168[5]) {
                    piStack_168[4] = (int)(puVar21 + 2);
                    if (puVar21 != (undefined4 *)0x0) {
                      *puVar21 = uStack_160;
                      puVar21[1] = uStack_15c;
                    }
                  }
                  else {
                    FUN_00572360(piStack_168 + 3,puVar21,&uStack_160);
                  }
                }
                else {
                  if (bVar12) {
                    ObjectEvents_Dispatch(10,puVar19,*(void **)this);
                  }
                  Lot_NotifyObjectLocationChanged(*(void **)this,puVar19);
                  if (bVar12) {
                    ObjectEvents_Dispatch(9,puVar19,*(void **)this);
                    goto LAB_00b6ce18;
                  }
                  if ((local_17c != 0) && (local_164 != (void *)0x0)) {
                    pvStack_170 = (void *)FUN_00630030(local_164,*(int *)this,puVar19[2],puVar19[3])
                    ;
                    if (pvStack_180 == (void *)0x0) {
                      uVar25 = 0;
                    }
                    else {
                      uVar25 = *(uint *)((int)pvStack_180 + 8);
                    }
                    uVar30 = 0;
                    uStack_184 = 0;
                    if (uVar25 != 0) {
                      do {
                        iVar16 = FUN_0094fe50(pvStack_180,uVar30);
                        if ((*(byte *)(iVar16 + 8) & 1) == 0) {
                          uStack_184 = uStack_184 + 1;
                        }
                        uVar30 = uVar30 + 1;
                      } while (uVar30 < uVar25);
                    }
                    if ((void *)(uStack_184 >> 1) != pvStack_170) goto LAB_00b6ce18;
                  }
                }
                piVar20 = puVar19 + 1;
                LOCK();
                iVar16 = *piVar20;
                *piVar20 = *piVar20 + -1;
                uVar43 = CONCAT44(DAT_011ed254,DAT_011ed250);
                UNLOCK();
                if (iVar16 == 1) {
                  LOCK();
                  *piVar20 = 1;
                  UNLOCK();
                  (**(code **)*puVar19)(1);
                  uVar43 = CONCAT44(DAT_011ed254,DAT_011ed250);
                }
              }
            }
          }
        }
LAB_00b6ce71:
        puStack_178 = *(ushort **)(puStack_178 + 0x34);
        if (puStack_178 == (ushort *)0x0) {
          do {
            puStack_178 = (ushort *)piStack_174[1];
            piStack_174 = piStack_174 + 1;
          } while (puStack_178 == (ushort *)0x0);
        }
      } while (puStack_178 != puStack_c8);
    }
    if (local_144 != 0) {
      iVar16 = *local_14c;
      piVar20 = local_14c;
      if (iVar16 == 0) {
        piVar20 = local_14c + 1;
        iVar16 = local_14c[1];
        while (iVar16 == 0) {
          piVar20 = piVar20 + 1;
          iVar16 = *piVar20;
        }
        iVar16 = *piVar20;
      }
      iVar3 = local_14c[local_148];
      while (iVar16 != iVar3) {
        DAT_011ed254 = (int)(uVar43 >> 0x20);
        DAT_011ed250 = (int)uVar43;
        pvVar18 = ObjectRegistry_FindBorrowed(pvStack_16c,*(ulonglong *)(iVar16 + 8));
        if (pvVar18 != (void *)0x0) {
          (**(code **)(**(int **)this + 0x3c))(pvVar18,0);
        }
        FUN_0076d2a0(*(undefined4 *)(iVar16 + 8),*(undefined4 *)(iVar16 + 0xc));
        uVar43 = CONCAT44(DAT_011ed254,DAT_011ed250);
        iVar16 = *(int *)(iVar16 + 0x18);
        while (iVar16 == 0) {
          piVar26 = piVar20 + 1;
          piVar20 = piVar20 + 1;
          iVar16 = *piVar26;
        }
      }
    }
    DAT_011ed254 = (int)(uVar43 >> 0x20);
    DAT_011ed250 = (int)uVar43;
    if ((local_17c != 0) && (local_164 != (void *)0x0)) {
      pwVar44 = L"PoolLadder";
      pvVar18 = NameGuidMaps_GetGlobal();
      uStack_120 = NameGuidMaps_FindByWideName(pvVar18,(ushort *)pwVar44);
      uStack_118 = 0x319e4f1d;
      fStack_114 = 0.0;
      piStack_130 = (int *)0x0;
      piStack_12c = (int *)0x0;
      uStack_128 = 0;
      pcStack_124 = "Lot/PoolLaddersOnLot";
      FUN_00ac56e0(*(void **)this,(int *)&uStack_120,&piStack_130);
      piVar20 = piStack_130;
      if (piStack_130 != piStack_12c) {
        do {
          iVar16 = *piVar20;
          if ((iVar16 != 0) &&
             (uVar25 = FUN_006316b0(local_164,*(int *)this,*(int *)(iVar16 + 8),
                                    *(uint *)(iVar16 + 0xc)), (char)uVar25 == '\0')) {
            uStack_160 = *(undefined4 *)(iVar16 + 8);
            puVar19 = (undefined4 *)piStack_168[4];
            uStack_15c = *(undefined4 *)(iVar16 + 0xc);
            if (puVar19 < (undefined4 *)piStack_168[5]) {
              piStack_168[4] = (int)(puVar19 + 2);
              if (puVar19 != (undefined4 *)0x0) {
                *puVar19 = uStack_160;
                puVar19[1] = uStack_15c;
              }
            }
            else {
              FUN_00572360(piStack_168 + 3,puVar19,&uStack_160);
            }
          }
          piVar20 = piVar20 + 1;
        } while (piVar20 != piStack_12c);
      }
      uVar43 = CONCAT44(DAT_011ed254,DAT_011ed250);
      if (piStack_130 != (int *)0x0) {
        Memory_FreeIfNonNull(piStack_130);
        uVar43 = CONCAT44(DAT_011ed254,DAT_011ed250);
      }
    }
    DAT_011ed254 = (int)(uVar43 >> 0x20);
    DAT_011ed250 = (int)uVar43;
    *(undefined1 *)((int)this + 4) = 0;
    piVar26 = (int *)FUN_007693a0();
    piVar20 = piStack_168;
    if ((piVar26 != (int *)0x0) && (piStack_168[4] - piStack_168[3] >> 3 != 0)) {
      if (bVar10) {
        *(undefined1 *)(local_17c + 0x978) = 1;
      }
      (**(code **)(*piVar26 + 0x18))(0x626a0404,piStack_168,0);
      if (bVar10) {
        *(undefined1 *)(local_17c + 0x978) = 0;
      }
    }
    (**(code **)(*piVar20 + 8))();
    FUN_009d67f0((int)local_14c,local_148);
    local_144 = 0;
    if (1 < local_148) {
      Memory_FreeIfNonNull(local_14c);
    }
  }
  return;
}
