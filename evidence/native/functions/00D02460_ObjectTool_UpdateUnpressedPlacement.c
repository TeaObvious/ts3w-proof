/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Stores incoming raw XZLevel into tool+B8/+BC/+C0 before grid/cell/placement work; this is the
   anchor source copied by D07300 press. Raw pointer state is distinct from applied/snapped object
   transform. Complete selected body retained; broader validation/resource/persistence parity not
   established. */

void __thiscall ObjectTool_UpdateUnpressedPlacement(void *this,float param_1,float *param_2)

{
  undefined1 (*pauVar1) [12];
  bool bVar2;
  float *pfVar3;
  char cVar4;
  int iVar5;
  char *pcVar6;
  uint uVar7;
  int iVar8;
  undefined4 uVar9;
  void *pvVar10;
  void *pvVar11;
  void *pvVar12;
  int *piVar13;
  float10 fVar14;
  float fVar15;
  char unaff_retaddr;
  uint uVar16;
  uint uStack_34;
  void *pvStack_30;
  char local_2c;
  undefined1 uStack_2b;
  undefined1 uStack_2a;
  undefined1 uStack_29;
  char local_28;
  undefined1 uStack_27;
  undefined2 uStack_26;
  undefined2 uStack_24;
  undefined1 uStack_22;
  char cStack_21;
  undefined1 uStack_20;
  undefined1 uStack_1f;
  undefined1 uStack_1c;
  undefined1 uStack_1b;
  undefined1 uStack_1a;
  undefined1 uStack_19;
  undefined1 uStack_18;
  undefined1 uStack_17;
  float fStack_14;
  float fStack_10;
  float local_c;
  float local_8;
  int *local_4;
  
  pfVar3 = param_2;
  *(undefined1 *)((int)this + 0x1de) = 0;
  pauVar1 = (undefined1 (*) [12])((int)this + 0xb8);
  if (((*(float *)((int)this + 0xc0) != param_2[2]) ||
      (FLOAT_00fb35b4 < ABS(*(float *)*pauVar1 - *param_2))) ||
     (FLOAT_00fb35b4 < ABS(*(float *)((int)this + 0xbc) - param_2[1]))) {
    param_2 = (float *)CONCAT31(param_2._1_3_,1);
  }
  else {
    param_2 = (float *)((uint)param_2._1_3_ << 8);
  }
  cVar4 = *(char *)((int)this + 0x1df);
  *(float *)*pauVar1 = *pfVar3;
  *(float *)((int)this + 0xbc) = pfVar3[1];
  *(float *)((int)this + 0xc0) = pfVar3[2];
  if (cVar4 != '\0') {
    iVar8 = *(int *)((int)param_1 + 0x17c);
    iVar5 = *(int *)((int)this + 0xc0) + -1;
    local_28 = (char)iVar5;
    uStack_27 = (undefined1)((uint)iVar5 >> 8);
    uStack_26 = (undefined2)((uint)iVar5 >> 0x10);
    local_2c = (char)iVar8;
    uStack_2b = (undefined1)((uint)iVar8 >> 8);
    uStack_2a = (undefined1)((uint)iVar8 >> 0x10);
    uStack_29 = (undefined1)((uint)iVar8 >> 0x18);
    pcVar6 = &local_28;
    if (iVar5 <= iVar8) {
      pcVar6 = &local_2c;
    }
    *(undefined4 *)((int)this + 0xc0) = *(undefined4 *)pcVar6;
  }
  local_c = FLOAT_00fab218;
  local_8 = FLOAT_00fab218;
  local_4 = (int *)0x0;
  (**(code **)(*(int *)this + 0x98))(pauVar1,&local_c);
  LotLocation_EncodeCellAndQuadrant((float *)pauVar1,&stack0xffffffc4);
  if (((((param_1._0_1_ != '\0') || (local_c != *(float *)((int)this + 0xcc))) ||
       ((FLOAT_00fb35b4 < ABS(fStack_14 - *(float *)((int)this + 0xc4)) ||
        ((FLOAT_00fb35b4 < ABS(fStack_10 - *(float *)((int)this + 200)) ||
         (*(char *)((int)this + 0xb3) != -1)))))) || (*(char *)((int)this + 0xb4) != -1)) ||
     ((*(char *)((int)this + 0xb5) != '\0' || (*(char *)((int)this + 0xb6) != -1)))) {
    bVar2 = true;
  }
  else {
    bVar2 = false;
  }
  *(float *)((int)this + 0xc4) = fStack_14;
  *(float *)((int)this + 200) = fStack_10;
  *(float *)((int)this + 0xcc) = local_c;
  *(undefined4 *)((int)this + 0x334) = *(undefined4 *)((int)this + 0x324);
  *(undefined4 *)((int)this + 0xb3) = 0xff00ffff;
  *(undefined4 *)((int)this + 0x338) = *(undefined4 *)((int)this + 0x328);
  *(undefined4 *)((int)this + 0x33c) = *(undefined4 *)((int)this + 0x32c);
  *(undefined4 *)((int)this + 0x340) = *(undefined4 *)((int)this + 0x330);
  FUN_00cfaa70((int)this);
  if (*(char *)((int)this + 0x2f7) == '\0') {
    iVar8 = *(int *)((int)this + 0x5c);
  }
  else {
    iVar8 = *(int *)((int)this + 0x60);
  }
  if ((iVar8 == 0) || (pvVar10 = *(void **)(iVar8 + 0x58), pvVar10 == (void *)0x0)) {
    return;
  }
  if (!bVar2) {
    if (unaff_retaddr == '\0') {
      return;
    }
    if (*(char *)((int)this + 0x101) != '\0') {
      return;
    }
    pvVar11 = Object_GetComponentByMask(pvVar10,DAT_011edf08);
    if ((pvVar11 == (void *)0x0) || (*(int *)((int)pvVar11 + 0x18) == 0x7fffffff)) {
      pvVar12 = Object_GetComponentByMask(pvVar10,DAT_011ea158);
      if (pvVar12 == (void *)0x0) {
        return;
      }
      uVar9 = FUN_00b032e0(pvVar10,*(int *)((int)this + 0x1b8));
      if ((char)uVar9 == '\0') {
        fVar14 = FUN_00b0c5e0(pvVar10,*(int **)((int)this + 0xc),pauVar1);
        param_1 = (float)fVar14;
      }
      else {
        param_1 = *(float *)((int)pvVar11 + 0x24);
      }
      fVar14 = (float10)FUN_00cfb550(pvVar10);
      pvVar11 = *(void **)((int)this + 0xc);
      cVar4 = '\0';
      fVar15 = (float)fVar14;
    }
    else {
      uVar9 = FUN_00b032e0(pvVar10,*(int *)((int)this + 0x1b8));
      if ((char)uVar9 == '\0') {
        fVar14 = FUN_00b0c5e0(pvVar10,*(int **)((int)this + 0xc),pauVar1);
        param_1 = (float)fVar14;
      }
      else {
        param_1 = *(float *)((int)pvVar11 + 0x24);
      }
      FUN_00cfb550(pvVar10);
      cVar4 = '\0';
      fVar15 = PlacementLocation_ReadYawWithRefresh(pvVar11);
      pvVar11 = *(void **)((int)this + 0xc);
    }
    FUN_00b09b00(pvVar10,pvVar11,pauVar1,param_1,fVar15,cVar4);
    FUN_00d01d70(this,(float *)pauVar1);
    return;
  }
  uVar7 = Placement_QuantizeYawToOctant(*(float *)((int)this + 0xe0));
  uStack_24 = (undefined2)uVar7;
  uStack_22 = (undefined1)(uVar7 >> 0x10);
  cStack_21 = (char)(uVar7 >> 0x18);
  iVar8 = FUN_00cef500();
  fVar15 = *(float *)(iVar8 + 0x158);
  uVar9 = *(undefined4 *)(iVar8 + 0x15c);
  local_2c = (char)uVar9;
  uStack_2b = (undefined1)((uint)uVar9 >> 8);
  uStack_2a = (undefined1)((uint)uVar9 >> 0x10);
  uStack_29 = (undefined1)((uint)uVar9 >> 0x18);
  uVar9 = Object_HasSteeringWithoutSim((int)pvVar10);
  if ((char)uVar9 != '\0') {
    fVar15 = DAT_01083f70;
  }
  param_1 = DAT_00ff0c50;
  pvStack_30 = (void *)0x0;
  uStack_34 = 0xffffffff;
  if (*(char *)((int)this + 0x1cf) != '\0') {
    *(undefined1 *)((int)this + 0x1cf) = 0;
    FUN_00cfae60(this);
    FUN_00cfc5a0(this,0);
  }
  piVar13 = local_4;
  if ((((DAT_011ee7ba != '\0') && (*(char *)((int)this + 0x89) == '\0')) ||
      (uVar7 = FUN_00cfd780(this,local_4,(float *)pauVar1,*(float *)((int)this + 0xe0),
                            (uint *)&pvStack_30,&uStack_34,(uint *)&param_1,(uint *)&stack0xffffffc8
                           ), (char)uVar7 == '\0')) ||
     ((fVar15 <= param_1 &&
      (((float)CONCAT13(uStack_29,CONCAT12(uStack_2a,CONCAT11(uStack_2b,local_2c))) <= param_1 ||
       (cVar4 = FUN_00ccdad0((int)pvVar10,(int)piVar13,&fStack_14,0,DAT_011ee7b8,0,0,
                             (void *)((int)this + 0x270)), cVar4 != '\0')))))) {
LAB_00d027e1:
    cVar4 = (**(code **)(*(int *)this + 0x7c))(piVar13,pauVar1,0);
    fVar15 = (float)CONCAT31((int3)((uint)fVar15 >> 8),cVar4);
    if ((local_4 != (int *)0x0) && (uVar9 = FUN_00cfe2a0((int)pvVar10), (char)uVar9 != '\0')) {
      Lot_ApplyObjectDisplayDetail(local_4,pvVar10,'\0','\0');
    }
    piVar13 = local_4;
    if (cVar4 == '\0') {
      FUN_00d01d70(this,(float *)pauVar1);
      goto LAB_00d02996;
    }
  }
  else {
    FUN_00cfde90((int)this);
    if (*(char *)((int)this + 0x2f7) == '\0') {
      pvVar11 = *(void **)((int)this + 0x5c);
    }
    else {
      pvVar11 = *(void **)((int)this + 0x60);
    }
    uVar9 = FUN_00d281e0(pvVar11,piVar13,pvStack_30,(short)uStack_34,0.0);
    fVar15 = (float)CONCAT31((int3)((uint)fVar15 >> 8),(char)uVar9);
    if ((char)uVar9 == '\0') goto LAB_00d027e1;
    if (*(char *)((int)this + 0x2f7) == '\0') {
      iVar8 = *(int *)((int)this + 0x5c);
    }
    else {
      iVar8 = *(int *)((int)this + 0x60);
    }
    if (*(int *)(iVar8 + 0xe0) != 0) {
      FUN_00cfc910(this);
    }
    FUN_00d01d70(this,&fStack_14);
  }
  pvVar10 = (void *)ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)pvVar10 + 0x18));
  if ((pvVar10 != (void *)0x0) &&
     (uVar7 = Catalog_TestIntersectionCategoryOrD0Bit4(pvVar10), (char)uVar7 != '\0')) {
    pvVar10 = *(void **)((int)this + 0x1b8);
    if ((pvVar10 != (void *)0x0) && (uVar7 = FUN_00789450((int)pvVar10), 1 < uVar7)) {
      uStack_1c = 0xff;
      uStack_1b = 0xff;
      uStack_1a = 0;
      uStack_19 = 0xff;
      uStack_18 = 0xff;
      uStack_17 = 0;
      local_2c = -1;
      uStack_2b = 0xff;
      uStack_2a = 0;
      uStack_29 = 0xff;
      local_28 = -1;
      uStack_27 = 0;
      uVar9 = FUN_00b01af0(pvVar10,piVar13,(float *)((int)this + 0x208),
                           CONCAT13(cStack_21,CONCAT12(uStack_22,uStack_24)),0,&uStack_1c);
      if ((char)uVar9 != '\0') {
        pcVar6 = &local_2c;
        uVar16 = 0;
        uVar7 = Placement_QuantizeYawToOctant(*(float *)((int)this + 0xe0));
        uVar9 = FUN_00b01af0(*(void **)((int)this + 0x1b8),piVar13,&fStack_14,uVar7,uVar16,pcVar6);
        if ((char)uVar9 != '\0') {
          uStack_24 = CONCAT11(local_28,uStack_29);
          uStack_22 = uStack_27;
          uStack_1f = uStack_2a;
          cStack_21 = local_2c;
          uStack_20 = uStack_2b;
          uVar9 = FUN_00cb3320(&uStack_1c,&local_2c);
          if (((char)uVar9 != '\0') &&
             (uVar9 = FUN_00cb3320(&uStack_1c,(char *)&uStack_24), (char)uVar9 != '\0')) {
            FUN_00cd04a0(DAT_011ebfd0);
          }
        }
      }
    }
    *(float *)((int)this + 0x208) = fStack_14;
    *(float *)((int)this + 0x20c) = fStack_10;
    *(float *)((int)this + 0x210) = local_c;
    FUN_00cfca50(this,fVar15,'\x01');
    return;
  }
LAB_00d02996:
  FUN_00cfca50(this,fVar15,'\x01');
  return;
}

