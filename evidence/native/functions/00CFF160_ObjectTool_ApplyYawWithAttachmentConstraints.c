/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* ECX tool, float yaw and low-byte control in two stack words, RET8/AL result. Ordinary no-slot
   grid delegatesAFBDC0; free branch may constrain catalog+98bit25 to16 directions via
   DIVSS/FISTP/currentCW and3EC90FDB. Raw product slot flags do not select four directions for
   ordinary floor objects: quarter-turn path requires actual parent slot, flag intersection and
   relative parent angle. Full placement/callback/attachment branches retained; CLR parity not
   inferred. */

char __thiscall ObjectTool_ApplyYawWithAttachmentConstraints(void *this,float param_1,float param_2)

{
  char cVar1;
  byte bVar2;
  bool bVar3;
  void *pvVar4;
  undefined4 uVar5;
  void *this_00;
  int iVar6;
  void *pvVar7;
  int *piVar8;
  uint uVar9;
  undefined4 extraout_EDX;
  int unaff_EBP;
  float10 fVar10;
  char cVar11;
  float local_30;
  int *local_2c;
  int local_28;
  undefined4 local_24;
  void *local_20;
  void *local_1c;
  float local_18;
  float local_14;
  undefined4 local_10;
  float fStack_c;
  float fStack_8;
  undefined4 uStack_4;
  
  *(undefined1 *)((int)this + 0x1de) = 0;
  if (*(char *)((int)this + 0x2f7) == '\0') {
    iVar6 = *(int *)((int)this + 0x5c);
  }
  else {
    iVar6 = *(int *)((int)this + 0x60);
  }
  if (((iVar6 == 0) || (pvVar7 = *(void **)(iVar6 + 0x58), pvVar7 == (void *)0x0)) ||
     (local_20 = Object_GetComponentByMask(pvVar7,DAT_011edf08), local_20 == (void *)0x0)) {
    return '\0';
  }
  if (*(char *)((int)this + 0x2f7) == '\0') {
    iVar6 = *(int *)((int)this + 0x5c);
  }
  else {
    iVar6 = *(int *)((int)this + 0x60);
  }
  if (iVar6 == 0) {
    local_28 = 0;
  }
  else {
    local_28 = *(int *)(iVar6 + 0xe0);
  }
  if ((local_28 == 0) || (*(int *)(iVar6 + 0xe0) == 0)) {
    local_24 = 0;
  }
  else {
    local_24 = *(undefined4 *)(iVar6 + 0xe4);
  }
  FUN_00affc80(pvVar7,0);
  local_30 = param_1;
  local_2c = (int *)0x0;
  pvVar4 = (void *)FUN_00b01f30(pvVar7,&local_2c);
  local_1c = pvVar4;
  if ((local_2c == (int *)0x0) &&
     ((param_2._0_1_ == '\0' ||
      ((*(char *)((int)this + 0x89) == '\0' &&
       (uVar5 = FUN_00cfa680((int)this), (char)uVar5 == '\0')))))) {
    if ((*(int *)((int)this + 0x1b8) != 0) &&
       ((*(uint *)(*(int *)((int)this + 0x1b8) + 0x98) >> 0x19 & 1) != 0)) {
      if ((_DAT_011ee8f4 & 1) == 0) {
        _DAT_011ee8f4 = _DAT_011ee8f4 | 1;
        _DAT_011ee8f0 = DAT_00ff6a78;
      }
      param_2 = (float)(int)ROUND(param_1 / _DAT_011ee8f0);
      uVar9 = (uint)param_2 & 0x8000000f;
      if ((int)uVar9 < 0) {
        uVar9 = (uVar9 - 1 | 0xfffffff0) + 1;
      }
      local_30 = (float)(int)uVar9 * _DAT_011ee8f0;
    }
    goto LAB_00cff3e3;
  }
  if ((pvVar4 == (void *)0x0) || (local_2c == (int *)0x0)) {
    if (*(char *)((int)this + 0x2f7) == '\0') {
      iVar6 = *(int *)((int)this + 0x5c);
    }
    else {
      iVar6 = *(int *)((int)this + 0x60);
    }
    if (iVar6 != 0) {
      if (*(char *)((int)this + 0x2f7) == '\0') {
        iVar6 = *(int *)((int)this + 0x5c);
      }
      else {
        iVar6 = *(int *)((int)this + 0x60);
      }
      if (*(int *)(iVar6 + 0xe0) != 0) {
        iVar6 = FUN_00cfb100((int)this);
        fVar10 = FUN_00cfa320(iVar6);
        param_2 = (float)fVar10;
        fVar10 = Placement_QuantizeYawToEightDirections((float)((float10)param_1 - fVar10));
        fVar10 = fVar10 + (float10)param_2;
        goto LAB_00cff3dc;
      }
    }
    fVar10 = Placement_QuantizeYawToEightDirections(param_1);
  }
  else {
    this_00 = Object_FindCatalogInfo(pvVar7);
    if (this_00 == (void *)0x0) {
      uVar9 = 0;
    }
    else {
      uVar9 = ObjectProduct_GetSlotPlacementFlags(this_00);
    }
    uVar9 = SlotPlacement_IntersectRotationFlags(local_2c[6],uVar9);
    fVar10 = FUN_00b3e750(pvVar4,local_2c);
    param_2 = (float)fVar10;
    if ((uVar9 & 0x20000000) == 0) {
      local_30 = param_2;
      if ((uVar9 & 0x10000000) == 0) goto LAB_00cff3e3;
      fVar10 = FUN_00afbea0(param_1 - param_2);
      fVar10 = fVar10 + (float10)param_2;
    }
    else {
      if (*(char *)((int)this + 0x89) == '\0') goto LAB_00cff3e3;
      fVar10 = Placement_QuantizeYawToEightDirections(param_1 - param_2);
      fVar10 = fVar10 + (float10)param_2;
    }
  }
LAB_00cff3dc:
  local_30 = (float)fVar10;
LAB_00cff3e3:
  if ((pvVar4 == (void *)0x0) || (local_2c == (int *)0x0)) {
    piVar8 = (int *)FUN_0068f130((int)pvVar7);
    if (piVar8 == (int *)0x0) {
      pvVar4 = (void *)0x0;
    }
    else {
      pvVar4 = (void *)(**(code **)(*piVar8 + 0xc))(0x90566b0e);
    }
    local_18 = FLOAT_00fab218;
    local_14 = FLOAT_00fab218;
    local_10 = 0;
    ObjectLocation_CopyXZLevel(local_20,&local_18,&local_14,&local_10);
    fStack_c = FLOAT_00fab218;
    fStack_8 = FLOAT_00fab218;
    uStack_4 = 0;
    FUN_00cfcc60(this,&local_18,local_30,&fStack_c);
    local_18 = fStack_c;
    local_14 = fStack_8;
    local_10 = uStack_4;
    cVar1 = FUN_00ccdc20((int)pvVar7,(int)pvVar4,&local_18,local_30,0,0,(void *)0x0,'\x01');
    if (cVar1 == '\0') {
      cVar1 = '\x01';
      FUN_00c89f50(local_20,local_30);
      FUN_00790a10();
    }
    else {
      if (*(char *)((int)this + 0x2f7) == '\0') {
        pvVar7 = *(void **)((int)this + 0x5c);
      }
      else {
        pvVar7 = *(void **)((int)this + 0x60);
      }
      cVar1 = FUN_00d263f0(pvVar7,local_30);
      if (cVar1 == '\0') {
        return '\0';
      }
    }
    if ((((pvVar4 != (void *)0x0) &&
         (bVar3 = Lot_ContainsLocalPoint(pvVar4,(LotPaintPoint *)((int)this + 0xb8)), bVar3)) &&
        ((**(code **)(*(int *)this + 0x7c))(pvVar4,&local_18,1), unaff_EBP != 0)) &&
       (pvVar7 = (void *)FUN_00cfb100((int)this), pvVar7 != (void *)0x0)) {
      FUN_00d25b20(pvVar7,extraout_EDX,local_30);
      return cVar1;
    }
  }
  else {
    if (*(char *)((int)this + 0x2f7) == '\0') {
      pvVar4 = *(void **)((int)this + 0x5c);
    }
    else {
      pvVar4 = *(void **)((int)this + 0x60);
    }
    cVar1 = FUN_00d263f0(pvVar4,local_30);
    bVar2 = HandTool_ValidateSlotPlacementAndFloor
                      (pvVar7,local_1c,local_2c,local_30,(float *)0x0,DAT_011ee7b8,(uint *)0x0,
                       (void *)((int)this + 0x270));
    param_2 = (float)CONCAT31(param_2._1_3_,bVar2);
    FUN_00b01ff0(pvVar7,local_30);
    FUN_00cfaf80(this,pvVar7,param_2,'\x01');
    cVar11 = '\x01';
    pvVar7 = (void *)FUN_00cfb120((int)this);
    FUN_00cfaf80(this,pvVar7,param_2,cVar11);
  }
  return cVar1;
}

