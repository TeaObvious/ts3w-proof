/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note. Physical cdecl five words; requires actor/path/component14CFD2F8/field+10C. Finalflag nonzero calls85D030 to prepare own field using selected scale/default1 and85C240 afterward. Resets/reserves output and seeds through85F3C0 before component iteration. Selected instructions keep kind1/4 or component+DC, own/parent membership gates, inclusive vertical1.5 and954980 field admission, route-bit and vessel/boat-kind branches. Empty/nonempty other-field list chooses85A770/85A6B0; separate near-destination branch uses rawclass hashes C6600B67/E99B65D5, distance constants and overrideappend. Do not infer semantic enum/class names from raw hashes. Generated C has uninitialized stack aliases/unique variables from decompiler recovery; original Listing governs actual registers/branches. Seed-list semantics, field-build/numerical leaves and concurrency/retirement remain open. Display alias Avoidance_ScanPathObstacles is a reference-file annotation; database symbols are unchanged. */

void __cdecl
FUN_0085f690(int *param_1,int *****param_2,undefined4 *param_3,undefined4 param_4,char param_5)

{
  undefined1 auVar1 [16];
  bool bVar2;
  undefined1 auVar3 [8];
  bool bVar4;
  char cVar5;
  int *piVar6;
  int iVar7;
  void *pvVar8;
  int *piVar9;
  float *pfVar10;
  undefined4 uVar11;
  int iVar12;
  uint uVar13;
  int *this;
  undefined1 auVar14 [16];
  undefined8 uVar15;
  longlong lVar16;
  int iStack_8c;
  void *pvStack_88;
  void *pvStack_84;
  void *pvStack_80;
  int iStack_7c;
  undefined4 uStack_78;
  undefined1 auStack_74 [8];
  undefined4 uStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  undefined1 auStack_48 [16];
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  
  if (param_1 == (int *)0x0) {
    return;
  }
  if (param_2 == (int *****)0x0) {
    return;
  }
  LOCK();
  param_2[1] = (int ****)((int)param_2[1] + 1);
  UNLOCK();
  piVar6 = FUN_00839d00(param_1);
  if (piVar6 == (int *)0x0) {
    return;
  }
  iStack_7c = (**(code **)(*piVar6 + 4))(0x14cfd2f8);
  if (iStack_7c == 0) {
    return;
  }
  pvStack_84 = *(void **)(iStack_7c + 0x10c);
  if (pvStack_84 == (void *)0x0) {
    return;
  }
  if (param_5 == '\0') goto LAB_0085f752;
  iVar7 = AnimationRenderState_GetWorldMatrices((int)param_1);
  if (iVar7 == 0) {
LAB_0085f72d:
    pvStack_80 = (void *)0x3f800000;
  }
  else {
    iVar7 = AnimationRenderState_GetWorldMatrices((int)param_1);
    iVar7 = FUN_00845f30(iVar7);
    if (iVar7 == 0) goto LAB_0085f72d;
    pvStack_80 = *(void **)(iVar7 + 0xc);
  }
  FUN_0085d030(piVar6,param_2,pvStack_84,(float)pvStack_80);
LAB_0085f752:
  pvVar8 = (void *)(*(code *)(*param_2)[3])();
  pvStack_80 = pvVar8;
  auStack_74 = (undefined1  [8])(**(code **)(*param_1 + 0x10))();
  (**(code **)(*param_1 + 0x3c))(&fStack_54);
  this = (int *)(DAT_011da140 + 0x40);
  param_3[1] = *param_3;
  uVar13 = 0xffffffff;
  piVar6 = this;
  do {
    piVar6 = (int *)*piVar6;
    uVar13 = uVar13 + 1;
  } while (piVar6 != this);
  FUN_0059ef20(param_3,uVar13);
  piVar6 = (int *)FUN_0081c520((int)pvVar8);
  piVar9 = (int *)FUN_0081c510((int)pvStack_84);
  FUN_0085f3c0(pvStack_88,param_3,*piVar6,piVar6[1] - *piVar6 >> 3,*piVar9,piVar9[1] - *piVar9 >> 3)
  ;
  bVar2 = false;
  bVar4 = FUN_00952120(pvStack_80,2);
  if (bVar4) {
    piVar6 = (int *)(*(code *)(*param_2)[0x23])();
    if (piVar6 != (int *)0x0) {
      piVar9 = (int *)(*(code *)(*param_2)[0xc])();
      iStack_7c = *piVar9;
      piVar6 = (int *)(**(code **)(*piVar6 + 0x30))();
      if ((iStack_7c == -0x399ff499) && (*piVar6 == -0x16649a2b)) {
        pfVar10 = (float *)(*(code *)(*param_2)[0x4d])(&fStack_28);
        fStack_38 = *pfVar10;
        fStack_34 = pfVar10[1];
        fStack_30 = pfVar10[2];
        fStack_2c = pfVar10[3];
        fStack_68 = (fStack_50 - fStack_30) * (fStack_50 - fStack_30) +
                    (fStack_54 - fStack_34) * (fStack_54 - fStack_34) +
                    (fStack_58 - fStack_38) * (fStack_58 - fStack_38);
        fStack_64 = fStack_68;
        fStack_60 = fStack_68;
        fStack_5c = fStack_68;
        if (fStack_68 < 5.0) {
          bVar2 = true;
        }
      }
    }
  }
  FUN_00845ef0(this,&iStack_8c);
  FUN_00845f10(this,&iStack_7c);
  auVar3 = auStack_74;
  if (iStack_8c != iStack_7c) {
    do {
      iVar7 = iStack_8c;
      auStack_74._4_4_ = SUB84((ulonglong)auVar3 >> 0x20,0);
      auStack_74._0_4_ = SUB84(auVar3,0);
      if (iStack_8c == 0) {
        piVar6 = (int *)0x0;
      }
      else {
        piVar6 = (int *)(iStack_8c + 8);
      }
      uVar15 = CONCAT44(uStack_6c,auStack_74._4_4_);
      if ((piVar6 != param_1) && (uVar15 = CONCAT44(uStack_6c,auStack_74._4_4_), iStack_8c != 0)) {
        piVar6 = (int *)(iStack_8c + 8);
        auStack_74 = auVar3;
        uVar15 = (**(code **)(*(int *)(iStack_8c + 8) + 0x10))();
        uVar11 = FUN_0081c5c0(pvStack_84,(int)uVar15,(int)((ulonglong)uVar15 >> 0x20));
        uVar15 = CONCAT44(uStack_6c,auStack_74._4_4_);
        if ((char)uVar11 == '\0') {
          iVar12 = (**(code **)(*piVar6 + 0x18))();
          if (iVar12 != 1) {
            iVar12 = (**(code **)(*piVar6 + 0x18))();
            if ((iVar12 != 4) &&
               (uVar15 = CONCAT44(uStack_6c,auStack_74._4_4_), *(char *)(iVar7 + 0xdc) == '\0'))
            goto LAB_0085fac5;
          }
          lVar16 = (**(code **)(*piVar6 + 0x14))();
          iVar7 = (int)((ulonglong)lVar16 >> 0x20);
          if (lVar16 != CONCAT44(auStack_74._0_4_,uStack_78)) {
            uVar11 = FUN_0081c5c0(pvStack_84,(int)lVar16,iVar7);
            unique0x1000065d = CONCAT44(uStack_6c,auStack_74._4_4_);
            if ((char)uVar11 == '\0') {
              uVar11 = FUN_0081c580(pvStack_84,(int)lVar16,iVar7);
              unique0x10000665 = CONCAT44(uStack_6c,auStack_74._4_4_);
              if ((char)uVar11 == '\0') {
                (**(code **)(*piVar6 + 0x3c))(&fStack_68);
                iVar7 = iStack_8c;
                auVar14._0_4_ = (fStack_64 - fStack_54) * -1.0;
                auVar14._4_4_ = (fStack_64 - fStack_54) * -1.0;
                auVar14._8_4_ = (fStack_64 - fStack_54) * -1.0;
                auVar14._12_4_ = (fStack_64 - fStack_54) * -1.0;
                auVar1._4_4_ = fStack_64 - fStack_54;
                auVar1._0_4_ = fStack_64 - fStack_54;
                auVar1._8_4_ = fStack_64 - fStack_54;
                auVar1._12_4_ = fStack_64 - fStack_54;
                auStack_48 = maxps(auVar14,auVar1);
                unique0x1000066d = CONCAT44(uStack_6c,auStack_74._4_4_);
                if ((float)auStack_48._0_4_ <= 1.5) {
                  iVar12 = FUN_00954980(iStack_8c);
                  unique0x10000675 = CONCAT44(uStack_6c,auStack_74._4_4_);
                  if (iVar12 != 0) {
                    bVar4 = FUN_00952120(pvStack_80,1);
                    if ((bVar4) && (*(void **)(iVar7 + 4) != (void *)0x0)) {
                      iVar7 = FUN_00582ac0(*(void **)(iVar7 + 4));
                      if ((iVar7 != 0) &&
                         (unique0x1000067d = CONCAT44(uStack_6c,auStack_74._4_4_),
                         (*(byte *)(iVar7 + 10) & 1) != 0)) goto LAB_0085fac1;
                    }
                    pvVar8 = pvStack_88;
                    bVar4 = Routing_IsBoatSpeciesForPortalPermission
                                      (*(uint *)((int)pvStack_88 + 0xb8) & 0xcf00);
                    if ((!bVar4) && (*(int **)(iVar12 + 8) == (int *)(iVar12 + 8))) {
                      uVar11 = FUN_00624940(*(uint *)(iVar12 + 0xb8) & 0xcf00);
                      unique0x10000685 = CONCAT44(uStack_6c,auStack_74._4_4_);
                      if ((char)uVar11 != '\0') goto LAB_0085fac1;
                    }
                    if (*(int **)(iVar12 + 8) == (int *)(iVar12 + 8)) {
                      uVar13 = FUN_0085a770(pvVar8,&fStack_68,*(float *)(iVar12 + 0x40),'\0','\x01')
                      ;
                      cVar5 = (char)uVar13;
                    }
                    else {
                      uVar13 = FUN_0085a6b0(pvVar8,iVar12);
                      cVar5 = (char)uVar13;
                    }
                    if ((cVar5 != '\0') ||
                       ((unique0x1000068d = CONCAT44(uStack_6c,auStack_74._4_4_), bVar2 &&
                        (fStack_28 = (fStack_60 - fStack_30) * (fStack_60 - fStack_30) +
                                     (fStack_64 - fStack_34) * (fStack_64 - fStack_34) +
                                     (fStack_68 - fStack_38) * (fStack_68 - fStack_38),
                        fStack_24 = fStack_28, fStack_20 = fStack_28, fStack_1c = fStack_28,
                        unique0x10000695 = CONCAT44(uStack_6c,auStack_74._4_4_), fStack_28 < 0.25)))
                       ) {
                      join_0x00000008_0x00000000_ = (**(code **)(*piVar6 + 0x10))();
                      FUN_00572500(param_3,(undefined4 *)(auStack_74 + 4));
                    }
                  }
                }
              }
            }
          }
LAB_0085fac1:
          iVar7 = iStack_8c;
          uVar15 = unique0x100004fd;
        }
      }
LAB_0085fac5:
      uStack_6c = (undefined4)((ulonglong)uVar15 >> 0x20);
      auStack_74._4_4_ = SUB84(uVar15,0);
      if (*(int *)(iVar7 + 0x40) == 0) {
        iStack_8c = 0;
      }
      else {
        iStack_8c = *(int *)(iVar7 + 0x40) + -0x40;
      }
      auVar3 = auStack_74;
    } while (iStack_8c != iStack_7c);
  }
  if (param_5 != '\0') {
    FUN_0085c240((int)pvStack_88);
  }
  return;
}

