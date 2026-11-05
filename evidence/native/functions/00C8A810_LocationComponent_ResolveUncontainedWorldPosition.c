/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECXLocation plusworldposition/worldregistry/outdelta three
   stackDWORDs RET0C. Resolve actualowner/lotlocalcoordinates/yaw/floor androom, compare/update
   Location fields and ORdelta flags. Contains level/room/specialcell branches; current ordinary
   prepared-lot projection does not establish all native terrain-water/specialfloor/room fallback
   behavior. Physical loads/branches, not apparent float/int casts in decompiled temporaries,
   determine field types. */

void __thiscall
LocationComponent_ResolveUncontainedWorldPosition
          (void *this,float *param_1,void *param_2,uint *param_3)

{
  int iVar1;
  bool bVar2;
  char cVar3;
  char cVar4;
  short sVar5;
  int *piVar6;
  undefined4 uVar7;
  uint uVar8;
  bool bVar9;
  float local_6c;
  int local_68;
  float local_64;
  int *local_60;
  float local_5c;
  float local_58;
  int local_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (*(uint *)((int)this + 8) != 0 || *(uint *)((int)this + 0xc) != 0) {
    piVar6 = WorldObjects_FindLotByGuid
                       (param_2,*(uint *)((int)this + 8),*(uint *)((int)this + 0xc),(uint *)0x0);
    if ((piVar6 != (int *)0x0) && ((char)piVar6[0x1d] != '\0')) {
      local_50 = *param_1;
      fStack_4c = param_1[1];
      fStack_48 = param_1[2];
      fStack_44 = param_1[3];
      local_40 = local_50;
      fStack_3c = fStack_4c;
      fStack_38 = fStack_48;
      fStack_34 = fStack_44;
      uVar7 = FUN_007893e0(piVar6,local_50,fStack_48);
      if ((char)uVar7 != '\0') goto LAB_00c8a8a0;
    }
    *param_3 = *param_3 | 4;
    *(uint *)((int)this + 0x2c) = *(uint *)((int)this + 0x2c) & 0xffffcf7f;
    *(undefined4 *)((int)this + 8) = 0;
    *(undefined4 *)((int)this + 0xc) = 0;
    *(undefined4 *)((int)this + 0x10) = 0;
    *(undefined4 *)((int)this + 0x14) = 0;
    *(undefined4 *)((int)this + 0x24) = 0;
    *(undefined4 *)((int)this + 0x18) = 0x7fffffff;
    *(undefined4 *)((int)this + 0x20) = 0xffffffff;
  }
LAB_00c8a8a0:
  local_50 = *param_1;
  fStack_4c = param_1[1];
  fStack_48 = param_1[2];
  fStack_44 = param_1[3];
  local_40 = local_50;
  fStack_3c = fStack_4c;
  fStack_38 = fStack_48;
  fStack_34 = fStack_44;
  piVar6 = LotSpatialIndex_FindContainingLotAtWorldXZ(param_2,local_50,fStack_48);
  if (piVar6 == (int *)0x0) {
    if (*(int *)((int)this + 8) != 0 || *(int *)((int)this + 0xc) != 0) {
      *(uint *)((int)this + 0x2c) = *(uint *)((int)this + 0x2c) & 0xffffcf7f;
      *(undefined4 *)((int)this + 8) = 0;
      *(undefined4 *)((int)this + 0xc) = 0;
      *(undefined4 *)((int)this + 0x10) = 0;
      *(undefined4 *)((int)this + 0x14) = 0;
      *(undefined4 *)((int)this + 0x24) = 0;
      *(undefined4 *)((int)this + 0x18) = 0x7fffffff;
      *(undefined4 *)((int)this + 0x20) = 0xffffffff;
    }
    *param_3 = *param_3 | 4;
    return;
  }
  if ((char)piVar6[0x1d] == '\0') {
    return;
  }
  local_60 = piVar6;
  FUN_00c895c0(this,(int)piVar6);
  iVar1 = piVar6[0x13];
  if ((*(int *)((int)this + 8) != piVar6[0x12]) || (*(int *)((int)this + 0xc) != iVar1)) {
    *(int *)((int)this + 8) = piVar6[0x12];
    *(int *)((int)this + 0xc) = iVar1;
    *param_3 = *param_3 | 4;
  }
  if (((*(uint *)((int)this + 0x2c) & 0x10) != 0) || ((*(uint *)((int)this + 0x2c) >> 7 & 1) == 0))
  {
    local_6c = 0.0;
    uVar7 = FUN_00b089a0(piVar6,*(void **)((int)this + 4),&local_6c);
    if ((char)uVar7 != '\0') {
      local_64 = local_6c * 159.15494;
      local_68 = (int)ROUND(local_64);
      *(uint *)((int)this + 0x2c) = *(uint *)((int)this + 0x2c) & 0xffffffef;
      *(float *)((int)this + 0x28) = (float)local_68 * 0.006283186;
    }
  }
  local_5c = -1.0;
  local_58 = -1.0;
  local_54 = 0;
  if ((*(uint *)((int)this + 0x2c) >> 7 & 1) == 0) {
    FUN_00b10bf0(*(void **)((int)this + 4),piVar6,param_1,*(float *)((int)this + 0x28),&local_5c,
                 (float *)((int)this + 0x24));
  }
  else {
    local_5c = *(float *)((int)this + 0x10);
    local_54 = *(int *)((int)this + 0x18);
    local_58 = *(float *)((int)this + 0x14);
    if ((*(uint *)((int)this + 0x2c) & 0x100) != 0) {
      *param_3 = *param_3 | 1;
      *(uint *)((int)this + 0x2c) = *(uint *)((int)this + 0x2c) & 0xfffffeff;
    }
    if ((*(uint *)((int)this + 0x2c) & 0x200) != 0) {
      *param_3 = *param_3 | 8;
      *(uint *)((int)this + 0x2c) = *(uint *)((int)this + 0x2c) & 0xfffffdff;
    }
  }
  uVar8 = *(uint *)((int)this + 0x2c) >> 5;
  if ((local_5c == *(float *)((int)this + 0x10)) && (local_58 == *(float *)((int)this + 0x14))) {
    bVar2 = false;
  }
  else {
    bVar2 = true;
  }
  bVar9 = local_54 != *(int *)((int)this + 0x18);
  if ((bVar2) || (bVar9)) {
    if ((*(uint *)((int)this + 0x2c) & 2) != 0) {
      LotObject_PreLeavingConfiguration(*(void **)((int)this + 4));
      *(uint *)((int)this + 0x2c) = *(uint *)((int)this + 0x2c) ^ 2;
    }
    if (bVar2) {
      *(float *)((int)this + 0x10) = local_5c;
      *(float *)((int)this + 0x14) = local_58;
      *param_3 = *param_3 | 1;
    }
    if ((bVar9) && ((uVar8 & 1) == 0)) {
      *(int *)((int)this + 0x18) = local_54;
      *param_3 = *param_3 | 8;
    }
  }
  piVar6 = local_60;
  Lot_WorldPositionToLocalVector(local_60,param_1,&local_40);
  fStack_48 = *(float *)((int)this + 0x18);
  local_30 = local_40;
  fStack_2c = fStack_3c;
  fStack_28 = fStack_38;
  fStack_24 = fStack_34;
  local_20 = local_40;
  fStack_1c = fStack_3c;
  fStack_18 = fStack_38;
  fStack_14 = fStack_34;
  local_50 = local_40;
  fStack_4c = fStack_38;
  if ((void *)piVar6[0xa6] != (void *)0x0) {
    if ((uVar8 & 1) == 0) {
      sVar5 = LotRoom_ResolveForLocalLocation((void *)piVar6[0xa6],&local_50,2,0);
    }
    else {
      sVar5 = 0;
    }
    if ((int)sVar5 != *(int *)((int)this + 0x20)) {
      *(int *)((int)this + 0x20) = (int)sVar5;
      *param_3 = *param_3 | 0x10;
      FUN_00c89e90(this,piVar6);
    }
    FUN_00c8a430(this,(short *)0x0);
  }
  uVar8 = FUN_00c62c10(param_2,*(int *)((int)this + 8),*(int *)((int)this + 0xc));
  if ((((char)uVar8 == '\0') && (*(char *)((int)param_2 + 0x44) == '\0')) ||
     ((uVar8 = *(uint *)(*(int *)((int)this + 4) + 0x2c), (DAT_011ea0fc & uVar8) == 0 &&
      ((DAT_011e9e90 & uVar8) == 0)))) {
    if (*(char *)((int)this + 0x36) == '\0') {
      return;
    }
    *(undefined1 *)((int)this + 0x36) = 0;
    *param_3 = *param_3 | 0x20;
    return;
  }
  if ((void *)piVar6[0xa4] == (void *)0x0) {
    return;
  }
  if (*(int *)((int)this + 0x20) == -1) {
    cVar3 = FUN_00a8cfa0((void *)piVar6[0xa4],&local_50);
    cVar4 = '\0';
    if (cVar3 == '\0') goto LAB_00c8ab7f;
  }
  cVar4 = '\x01';
LAB_00c8ab7f:
  if (cVar4 == *(char *)((int)this + 0x36)) {
    return;
  }
  *(char *)((int)this + 0x36) = cVar4;
  *param_3 = *param_3 | 0x20;
  return;
}

