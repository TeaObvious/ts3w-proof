/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 original static instructions. cdecl1objectpointer/plainRET void. Requires object,
   livecatalogproduct primarybit25, Location, managerqueriedIID90566B0E andLocationflagbit11clear.
   Reads actuallocalpose/yaw andC977F0 sixfields, rotates offsets with originalSIMD/trigmath,
   computeshalfextents, registers throughmanagerfloorownerA9A4B0. Not a generaloriginal
   managedpurchasecontroller; hidden/contained/component/lifetime filters remain thisactualproducer.
    */

void __cdecl ObjectPlacement_RegisterFloorCutout(void *param_1)

{
  undefined1 auVar1 [12];
  void *this;
  void *pvVar2;
  int *piVar3;
  int iVar4;
  undefined4 uVar5;
  float10 fVar6;
  float fVar7;
  float fVar10;
  float fVar11;
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  float fStack_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  int iStack_a0;
  float fStack_9c;
  float fStack_98;
  int iStack_94;
  float fStack_90;
  float fStack_8c;
  float fStack_88;
  undefined1 auStack_84 [8];
  undefined8 uStack_7c;
  float fStack_74;
  float fStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  int aiStack_54 [4];
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  
  if (param_1 != (void *)0x0) {
    this = (void *)ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)param_1 + 0x18));
    if ((this != (void *)0x0) && ((*(uint *)((int)this + 0x98) >> 0x19 & 1) != 0)) {
      pvVar2 = Object_GetComponentByMask(param_1,DAT_011edf08);
      if (pvVar2 != (void *)0x0) {
        piVar3 = (int *)FUN_0068f130((int)param_1);
        if (piVar3 != (int *)0x0) {
          iVar4 = (**(code **)(*piVar3 + 0xc))(0x90566b0e);
          if ((iVar4 != 0) && ((*(uint *)((int)pvVar2 + 0x2c) >> 0xb & 1) == 0)) {
            fStack_a8 = -1.0;
            iStack_a0 = 0;
            fStack_a4 = fStack_a8;
            ObjectLocation_CopyXZLevel(pvVar2,&fStack_a8,&fStack_a4,&iStack_a0);
            fStack_90 = PlacementLocation_ReadYawWithRefresh(pvVar2);
            pvVar2 = *(void **)(iVar4 + 0x290);
            fStack_9c = 1.0;
            iStack_94 = 0;
            fStack_ac = 0.0;
            fStack_b0 = 0.0;
            aiStack_54[0] = 0;
            aiStack_54[1] = 0;
            aiStack_54[2] = 0;
            aiStack_54[3] = 0;
            fStack_98 = fStack_9c;
            ObjectProduct_CopyFloorPlacementFields
                      (this,&iStack_94,&fStack_98,&fStack_9c,&fStack_ac,&fStack_b0,aiStack_54);
            fStack_8c = fStack_a8;
            fStack_88 = fStack_a4;
            if ((fStack_ac != 0.0) || (fStack_b0 != 0.0)) {
              uStack_68 = 0;
              uStack_6c = 0;
              auVar8._4_4_ = fStack_90;
              auVar8._0_4_ = fStack_90;
              auVar8._8_4_ = fStack_90;
              auVar8._12_4_ = fStack_90;
              auVar9._8_4_ = 0x40000000;
              auVar9._0_8_ = 0x4000000040000000;
              auVar9._12_4_ = 0x40000000;
              auVar9 = divps(auVar8,auVar9);
              auStack_84._0_4_ = auVar9._0_4_;
              uVar5 = auStack_84._0_4_;
              fVar6 = (float10)fsin((float10)(float)auStack_84._0_4_);
              uStack_7c = auVar9._8_8_;
              auVar1._8_4_ = 0;
              auVar1._0_8_ = uStack_7c;
              _auStack_84 = auVar1 << 0x40;
              fStack_28 = (float)fVar6;
              fVar6 = (float10)fcos((float10)(float)uVar5);
              fStack_24 = fStack_28 * 0.0;
              fStack_20 = fStack_28 * 0.0;
              fStack_1c = fStack_28 * 0.0;
              fStack_18 = fStack_28 * 0.0;
              fStack_44 = fStack_28 * 0.0;
              fStack_40 = fStack_28 * 0.0;
              fStack_3c = fStack_28 * 0.0;
              fStack_38 = fStack_28 * 0.0;
              fStack_34 = fStack_28 * 1.0;
              fStack_30 = fStack_28 * 1.0;
              fStack_2c = fStack_28 * 1.0;
              fStack_28 = fStack_28 * 1.0;
              fVar11 = (float)fVar6;
              uStack_7c._4_4_ = fStack_ac;
              auStack_84._0_4_ = fStack_ac;
              uStack_7c._0_4_ = fStack_b0;
              fVar7 = (fStack_b0 * fStack_30 - fStack_3c * 0.0) + fVar11 * fStack_ac;
              fVar10 = (fStack_ac * fStack_3c - fStack_b0 * fStack_24) + fVar11 * 0.0;
              fVar11 = (fStack_24 * 0.0 - fStack_ac * fStack_30) + fVar11 * fStack_b0;
              fStack_64 = (fVar11 * fStack_30 - fVar10 * fStack_3c) * 2.0 + fStack_ac;
              fStack_60 = (fVar7 * fStack_3c - fVar11 * fStack_24) * 2.0 + 0.0;
              fStack_5c = (fVar10 * fStack_24 - fVar7 * fStack_30) * 2.0 + fStack_b0;
              fStack_58 = (fVar7 * fStack_24 - fVar7 * fStack_24) * 2.0 + fStack_ac;
              fStack_8c = fStack_64 + fStack_a8;
              fStack_88 = fStack_5c + fStack_a4;
            }
            fStack_74 = fStack_98 * 0.5;
            fStack_70 = fStack_9c * 0.5;
            uVar5 = FUN_0054e0a0((int *)((int)this + 0x168),&DAT_011ec8d0);
            FloorManager_RegisterObjectCutout
                      (pvVar2,*(uint *)((int)param_1 + 8),*(uint *)((int)param_1 + 0xc),
                       iStack_a0 + iStack_94,aiStack_54,(int *)&fStack_8c,fStack_90,&fStack_74,uVar5
                      );
          }
        }
      }
    }
  }
  return;
}

