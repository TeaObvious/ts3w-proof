/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified original PC1.67 hand-tool ownership/physical ABI closure. Existing-object attach obtains
   actual native command/held state, invokes original pickup children and finishes with validity
   reporting. */

undefined4 __thiscall ObjectTool_AttachExistingObject(void *this,undefined4 *param_1,char param_2)

{
  uint *puVar1;
  bool bVar2;
  undefined1 uVar3;
  byte bVar4;
  char cVar5;
  uint in_EAX;
  void *pvVar6;
  uint uVar7;
  undefined4 uVar8;
  undefined4 *puVar9;
  int iVar10;
  float10 fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  int *piVar15;
  void *pvStack_120;
  char *pcStack_11c;
  int iStack_118;
  float fStack_114;
  float fStack_110;
  float fStack_10c;
  float fStack_108;
  void *pvStack_100;
  uint uStack_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  undefined4 uStack_f0;
  int iStack_ec;
  void *pvStack_e8;
  float fStack_e4;
  float fStack_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float fStack_d0;
  float fStack_c4;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
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
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  
  *(undefined1 *)((int)this + 0x100) = 0;
  *(undefined4 *)((int)this + 0x344) = 0xffffffff;
  if (param_1 == (undefined4 *)0x0) goto LAB_00d036f8;
  in_EAX = (**(code **)(*(int *)this + 0x8c))(param_1);
  if ((char)in_EAX == '\0') goto LAB_00d036f8;
  pvVar6 = (void *)ObjectCatalog_FindByTypedKey(DAT_011ee034,param_1 + 6);
  uStack_fc = 0;
  uStack_f8 = 0;
  uStack_f4 = 0;
  uStack_f0 = 0;
  pvStack_120 = pvVar6;
  FUN_00c978a0(pvVar6,&uStack_fc);
  iStack_118 = ObjectCatalog_FindByTypedKey(DAT_011ee034,&uStack_fc);
  uVar7 = FUN_00c97890((int)pvVar6);
  *(char *)((int)this + 0x2f7) = (char)uVar7;
  *(undefined1 *)((int)this + 0x2f6) = 1;
  iStack_ec = FUN_00b01f30(param_1,(undefined4 *)0x0);
  if (*(char *)((int)this + 0x2f7) == '\0') {
    pvVar6 = *(void **)((int)this + 0x5c);
  }
  else {
    pvVar6 = *(void **)((int)this + 0x60);
  }
  in_EAX = ObjectUndoable_SetHeldObject(pvVar6,param_1);
  if ((char)in_EAX == '\0') goto LAB_00d036f8;
  *(undefined1 *)((int)this + 0x104) = 0;
  if (*(char *)((int)this + 0x2f7) == '\0') {
    uVar8 = *(undefined4 *)((int)this + 0x5c);
  }
  else {
    uVar8 = *(undefined4 *)((int)this + 0x60);
  }
  *(undefined4 *)((int)this + 0x6c) = uVar8;
  FUN_00874fb0((void *)((int)this + 0xfc),param_1);
  uVar7 = FUN_00b00560((int)param_1);
  if ((char)uVar7 == '\0') {
    if (*(char *)((int)this + 0x1df) != '\0') {
      bVar2 = Object_IsSpiralStaircaseWithoutFloorCutout(param_1);
      if (bVar2) goto LAB_00d03176;
    }
    uVar3 = 0;
  }
  else {
LAB_00d03176:
    uVar3 = 1;
  }
  FUN_00ced6d0(this,uVar3);
  FUN_00cfb580(this,param_1);
  pvVar6 = Object_GetComponentByMask(param_1,DAT_011edf08);
  pvStack_e8 = pvVar6;
  ObjectLocation_CopyXZLevel
            (pvVar6,(undefined4 *)((int)this + 0xb8),(undefined4 *)((int)this + 0xbc),
             (undefined4 *)((int)this + 0xc0));
  fVar14 = PlacementLocation_ReadYawWithRefresh(pvVar6);
  *(float *)((int)this + 0xe0) = fVar14;
  if (iStack_ec != 0) {
    uVar8 = FUN_00b032e0(param_1,(int)pvStack_120);
    if ((char)uVar8 != '\0') {
      FUN_00c8a050(pvVar6,*(undefined4 *)((int)this + 0xc),*(float *)((int)this + 0xb8),
                   *(float *)((int)this + 0xbc),*(int *)((int)this + 0xc0),0,
                   *(undefined4 *)((int)this + 0xe0));
    }
  }
  if (*(int *)((int)this + 0xc0) == 0) {
    uVar8 = FUN_00b032e0(param_1,(int)pvStack_120);
    if ((char)uVar8 == '\0') goto LAB_00d03279;
    fVar11 = FUN_00b084e0(param_1,*(int *)((int)this + 0xc),(undefined1 (*) [12])((int)this + 0xb8),
                          '\0');
    pcStack_11c = (char *)(float)fVar11;
    fVar11 = LotLevelHeight_SampleLocalPosition
                       (*(void **)(*(int *)((int)this + 0xc) + 0x290),
                        (LotXZLevel *)((int)this + 0xb8));
    pvStack_100 = (void *)(float)fVar11;
    fVar11 = FUN_00cfa720(param_1,*(void **)((int)this + 0xc));
    fVar11 = (fVar11 - (float10)(float)pvStack_100) - (float10)(float)pcStack_11c;
  }
  else {
LAB_00d03279:
    fVar11 = (float10)*(float *)((int)pvVar6 + 0x24);
  }
  *(float *)((int)this + 0xe8) = (float)fVar11;
  uVar8 = FUN_00b01240(param_1,&uStack_b4);
  if ((char)uVar8 != '\0') {
    *(undefined4 *)((int)this + 0xf0) = uStack_b0;
    fStack_114 = fStack_a4;
    fStack_110 = fStack_a0;
    fStack_10c = fStack_9c;
    fStack_108 = fStack_98;
    *(float *)((int)this + 0xf4) = fStack_a0;
  }
  pvStack_100 = Object_GetComponentByMask(param_1,DAT_011ea158);
  puVar1 = (uint *)((int)this + 0x138);
  *puVar1 = *(uint *)((int)pvStack_120 + 0x168);
  *(undefined4 *)((int)this + 0x13c) = *(undefined4 *)((int)pvStack_120 + 0x16c);
  *(undefined4 *)((int)this + 0x140) = *(undefined4 *)((int)pvStack_120 + 0x170);
  *(undefined4 *)((int)this + 0x144) = *(undefined4 *)((int)pvStack_120 + 0x174);
  uVar8 = FUN_0054e0a0((int *)puVar1,(int *)&DAT_011ec8d0);
  if ((char)uVar8 != '\0') {
    pcStack_11c = (char *)FUN_00b09220(*(void **)((int)this + 0xc),(float *)((int)this + 0xb8),
                                       (int *)puVar1);
    if (pcStack_11c == (char *)0x0) {
      puVar9 = (undefined4 *)FUN_00ca0120(&fStack_54);
      FUN_00d00c40((void *)((int)this + 0x180),puVar9);
      FUN_00ca0260((int)&fStack_54);
      iVar10 = FUN_00d28280(*(void **)((int)this + 100),puVar1,(int)this + 0x180,0);
      if ((char)iVar10 == '\0') {
        *puVar1 = DAT_011ec8d0;
        *(undefined4 *)((int)this + 0x13c) = DAT_011ec8d4;
        *(undefined4 *)((int)this + 0x140) = DAT_011ec8d8;
        *(undefined4 *)((int)this + 0x144) = DAT_011ec8dc;
        pcStack_11c = "World/UserToolObject";
        FUN_0040b880(&fStack_114,(short *)&DAT_01021238,&pcStack_11c);
        FUN_00c93370(pvStack_120,(int *)&fStack_114);
        FUN_004ef8f0((int *)&fStack_114);
      }
    }
    else {
      uVar8 = ObjectUndoable_SetHeldObject(*(void **)((int)this + 100),(undefined4 *)pcStack_11c);
      if ((char)uVar8 == '\0') {
        *puVar1 = DAT_011ec8d0;
        *(undefined4 *)((int)this + 0x13c) = DAT_011ec8d4;
        *(undefined4 *)((int)this + 0x140) = DAT_011ec8d8;
        *(undefined4 *)((int)this + 0x144) = DAT_011ec8dc;
        pcStack_11c = "World/UserToolObject";
        FUN_0040b880(&fStack_114,(short *)&DAT_01021238,&pcStack_11c);
        FUN_00c93370(pvStack_120,(int *)&fStack_114);
        in_EAX = FUN_004ef8f0((int *)&fStack_114);
LAB_00d036f8:
        return in_EAX & 0xffffff00;
      }
      FUN_00cfa7a0(pcStack_11c,(undefined4 *)((int)this + 0x180));
    }
  }
  if ((*(uint *)((int)pvStack_120 + 0xd0) >> 0x1e & 1) != 0) {
    FUN_00cfd6e0(this,param_1,'\0');
  }
  pcStack_11c = (char *)FUN_00cceb20();
  pvVar6 = pvStack_e8;
  if ((pcStack_11c != (char *)0x0) && (param_2 == '\0')) {
    if ((*(int *)((int)pvStack_e8 + 8) == *(int *)(*(int *)((int)this + 0xc) + 0x48)) &&
       ((*(int *)((int)pvStack_e8 + 0xc) == *(int *)(*(int *)((int)this + 0xc) + 0x4c) &&
        (iStack_ec == 0)))) {
      TransformComponent_GetWorldPosition(pvStack_100,&fStack_114);
      if ((*(uint *)((int)pvVar6 + 0x2c) >> 5 & 1) != 0) {
        uVar7 = FUN_00b00720(*(int *)((int)this + 0xc),param_1);
        *(uint *)((int)this + 0x344) = uVar7;
        *(undefined4 *)((int)this + 0x348) = *(undefined4 *)((int)this + 0xb8);
        *(undefined4 *)((int)this + 0x34c) = *(undefined4 *)((int)this + 0xbc);
        *(undefined4 *)((int)this + 0x350) = *(undefined4 *)((int)this + 0xc0);
        *(undefined4 *)((int)this + 0x324) = *(undefined4 *)((int)this + 0x344);
        *(undefined4 *)((int)this + 0x328) = *(undefined4 *)((int)this + 0x348);
        *(undefined4 *)((int)this + 0x32c) = *(undefined4 *)((int)this + 0x34c);
        *(undefined4 *)((int)this + 0x334) = *(undefined4 *)((int)this + 0x344);
        *(undefined4 *)((int)this + 0x330) = *(undefined4 *)((int)this + 0x350);
        *(undefined4 *)((int)this + 0x338) = *(undefined4 *)((int)this + 0x348);
        *(undefined4 *)((int)this + 0x33c) = *(undefined4 *)((int)this + 0x34c);
        *(undefined4 *)((int)this + 0x340) = *(undefined4 *)((int)this + 0x350);
      }
      uVar8 = FUN_00b00810((int)param_1);
      if ((char)uVar8 == '\0') {
        uVar8 = FUN_00b032e0(param_1,(int)pvStack_120);
        if ((char)uVar8 != '\0') goto LAB_00d03505;
      }
      else {
LAB_00d03505:
        fStack_110 = fStack_110 - *(float *)((int)pvVar6 + 0x24);
      }
      pvVar6 = (void *)FUN_007cef40();
      Lot_GetLocalToWorldMatrix(*(void **)((int)this + 0xc),(uint *)&fStack_94);
      fStack_c4 = fStack_114 * fStack_94 + fStack_64 + fStack_110 * fStack_84 +
                  fStack_10c * fStack_74;
      fStack_c0 = fStack_114 * fStack_90 + fStack_60 + fStack_110 * fStack_80 +
                  fStack_10c * fStack_70;
      fStack_bc = fStack_114 * fStack_8c + fStack_5c + fStack_110 * fStack_7c +
                  fStack_10c * fStack_6c;
      fStack_b8 = fStack_114 * fStack_88 + fStack_58 + fStack_110 * fStack_78 +
                  fStack_10c * fStack_68;
      uVar8 = FUN_007cf510(pvVar6,&fStack_c4,&fStack_d4);
      if ((char)uVar8 == '\0') {
        fStack_108 = 0.0;
        fStack_10c = 0.0;
        fStack_110 = 0.0;
        fStack_114 = 0.0;
        *(undefined4 *)((int)this + 0x31c) = 0;
        *(undefined4 *)((int)this + 800) = 0;
        *(undefined4 *)((int)this + 0xd0) = 0;
        *(undefined4 *)((int)this + 0xd4) = 0;
        *(undefined4 *)((int)this + 0xd8) = 0;
        *(undefined4 *)((int)this + 0xdc) = 0;
      }
      else {
        *(int *)((int)this + 0x31c) = (int)fStack_d4 - *(int *)(pcStack_11c + 0x29c);
        *(int *)((int)this + 800) = (int)fStack_d0 - *(int *)(pcStack_11c + 0x2a0);
        fStack_e4 = *(float *)(pcStack_11c + 0x280) - fStack_114;
        fStack_e0 = *(float *)(pcStack_11c + 0x284) - fStack_110;
        fStack_dc = *(float *)(pcStack_11c + 0x288) - fStack_10c;
        fStack_d8 = *(float *)(pcStack_11c + 0x28c) - fStack_108;
        Lot_GetWorldToLocalPose(*(void **)((int)this + 0xc),&fStack_54);
        fVar14 = (fStack_dc * fStack_50 - fStack_e0 * fStack_4c) + fStack_48 * fStack_e4;
        fVar12 = (fStack_e4 * fStack_4c - fStack_dc * fStack_54) + fStack_48 * fStack_e0;
        fVar13 = (fStack_e0 * fStack_54 - fStack_e4 * fStack_50) + fStack_48 * fStack_dc;
        *(float *)((int)this + 0xd0) = (fVar13 * fStack_50 - fVar12 * fStack_4c) * 2.0 + fStack_e4;
        *(float *)((int)this + 0xd4) = (fVar14 * fStack_4c - fVar13 * fStack_54) * 2.0 + fStack_e0;
        *(float *)((int)this + 0xd8) = (fVar12 * fStack_54 - fVar14 * fStack_50) * 2.0 + fStack_dc;
        *(float *)((int)this + 0xdc) = (fVar14 * fStack_54 - fVar14 * fStack_54) * 2.0 + fStack_d8;
      }
      goto LAB_00d03743;
    }
  }
  FUN_00cfc5a0(this,0);
LAB_00d03743:
  FUN_00cfa7a0(param_1,(undefined4 *)((int)this + 0x148));
  *(undefined1 *)((int)this + 0x1d0) = 0;
  FUN_00ccea10();
  PayloadCleanup_NoOperation((byte *)0x1);
  *(undefined1 *)((int)this + 0x1d9) = 0;
  *(undefined1 *)((int)this + 0x1da) = 0;
  iVar10 = ObjectCatalog_FindByTypedKey(DAT_011ee034,param_1 + 6);
  if (iVar10 == 0) {
    bVar4 = 0;
  }
  else {
    bVar4 = (byte)(*(uint *)(iVar10 + 0x98) >> 9) & 1;
  }
  *(byte *)((int)this + 0x1db) = bVar4;
  if (*(char *)((int)this + 0x2f7) == '\0') {
    *(undefined4 *)((int)this + 0x118) = param_1[6];
    *(undefined4 *)((int)this + 0x11c) = param_1[7];
    *(undefined4 *)((int)this + 0x120) = param_1[8];
    *(undefined4 *)((int)this + 0x124) = param_1[9];
    *(void **)((int)this + 0x1b8) = pvStack_120;
    *(uint *)((int)this + 0x128) = uStack_fc;
    *(undefined4 *)((int)this + 300) = uStack_f8;
    *(undefined4 *)((int)this + 0x130) = uStack_f4;
    *(undefined4 *)((int)this + 0x134) = uStack_f0;
    uVar8 = FUN_0054e0a0((int *)((int)this + 0x128),(int *)&DAT_011ec8d0);
    if (((char)uVar8 == '\0') || (iStack_118 == 0)) {
      cVar5 = '\0';
    }
    else {
      cVar5 = '\x01';
    }
    *(char *)((int)this + 0x2f5) = cVar5;
    if (cVar5 != '\0') {
      FUN_00d28280(*(void **)((int)this + 0x60),(uint *)((int)this + 0x128),(int)this + 0x148,0);
      *(int *)((int)this + 0x1bc) = iStack_118;
    }
  }
  else {
    FUN_00d28280(*(void **)((int)this + 0x5c),&uStack_fc,(int)this + 0x148,0);
    *(undefined4 *)((int)this + 0x128) = param_1[6];
    *(undefined4 *)((int)this + 300) = param_1[7];
    *(undefined4 *)((int)this + 0x130) = param_1[8];
    uVar8 = param_1[9];
    *(uint *)((int)this + 0x118) = uStack_fc;
    *(undefined4 *)((int)this + 0x134) = uVar8;
    *(undefined4 *)((int)this + 0x11c) = uStack_f8;
    *(undefined4 *)((int)this + 0x120) = uStack_f4;
    *(undefined4 *)((int)this + 0x124) = uStack_f0;
    *(int *)((int)this + 0x1b8) = iStack_118;
    *(void **)((int)this + 0x1bc) = pvStack_120;
    *(undefined1 *)((int)this + 0x2f5) = 1;
  }
  if (*(char *)((int)this + 0x2f5) != '\0') {
    FUN_00cfde40((int)this);
  }
  FUN_00cfad00((int)this);
  if (*(int *)((int)pvStack_120 + 0xd4) != *(int *)((int)pvStack_120 + 0xd8)) {
    FUN_00cfb470(this,'\x01');
  }
  if (*(int *)((int)this + 0x108) != 2) {
    FUN_007901b0(param_1[2],param_1[3],0,(undefined4 *)((int)this + 0x118));
  }
  FUN_00cfcb30((int)this);
  FUN_00d01d70(this,(float *)((int)this + 0xb8));
  HandTool_ReportPlacementValidity(this,1.4013e-45,'\x01');
  uVar8 = FUN_00cfe4f0(this);
  if ((char)uVar8 != '\0') {
    pvStack_120 = (void *)0x0;
    iStack_118 = 0;
    if (*(char *)((int)this + 0x2f7) == '\0') {
      FUN_00854d50(&pvStack_120,(int *)((int)this + 0x5c));
      piVar15 = (int *)((int)this + 0x60);
    }
    else {
      FUN_00854d50(&pvStack_120,(int *)((int)this + 0x60));
      piVar15 = (int *)((int)this + 0x5c);
    }
    FUN_00854d50(&iStack_118,piVar15);
    piVar15 = (int *)((int)this + 0x26c);
    FUN_00d1b190(pvStack_120,*(undefined4 **)((int)this + 0x26c));
    puVar9 = (undefined4 *)*piVar15;
    if (puVar9 != (undefined4 *)0x0) {
      *piVar15 = 0;
      iVar10 = puVar9[1];
      puVar9[1] = iVar10 + -1;
      if (iVar10 + -1 == 0) {
        puVar9[1] = 1;
        (**(code **)*puVar9)(1);
      }
    }
    puVar9 = (undefined4 *)
             FUN_004e4500(100,"UserTool/Object/ObjectUndoable/FloorVisibilityUndoable",0);
    if (puVar9 == (undefined4 *)0x0) {
      puVar9 = (undefined4 *)0x0;
    }
    else {
      puVar9 = FUN_00d23be0(puVar9);
    }
    FUN_00566590(piVar15,puVar9);
    (**(code **)(*(int *)*piVar15 + 4))();
    FUN_00d22a90((void *)*piVar15,*(undefined4 *)((int)this + 0xc));
    FUN_00cfe4f0(this);
    FUN_00565d20(&iStack_118);
    FUN_00565d20((int *)&pvStack_120);
  }
  if (*(int *)((int)this + 0x108) == 0) {
    BuildBuy_PlayKeyedSound(DAT_011ebf68);
  }
  uVar8 = FUN_00cce810(this);
  return CONCAT31((int3)((uint)uVar8 >> 8),1);
}

