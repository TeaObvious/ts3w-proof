/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 authored-lot representations comparison): Analyst actual authored atlas-key
   producer. ECX LOD creation owner plus lot pointer DWORD RET4. Stores lot at+4, constructs
   original named wall/floor/thickness/terrain/roof/ceiling/stair/fence/window/column/water/holiday
   creator objects and retains separate main/water/holiday vectors through original virtual
   initialization. Some low-byte creator results are mis-propagated as pointer casts in actual C;
   physical AL branches and stack inputs are authoritative, not object-pointer truth semantics. At
   ADEAFD..ADEB75 copies original lot UInt64 at+48/+4C into five16-byte texture keys. Type00B2D882
   for all; groups respectively00B0C507/007E7555/001DA7E9/00BC1E4C/00BC1E54 at
   owner+58/+70/+88/+A0/+B8. Data-looking LAB_007E7555 is raw group007E7555, not executable
   callback. Resolve original ImpostorHelper shader and register FillColor parameter through
   existing shader library. No model/texture data or allocation lifetime implementation is moved
   into current Game acquisition, and exact generated geometry/math of each creator remains
   separate. */

void __thiscall LotImposter_InitializeCreatorsAndAtlasKeys(void *this,int param_1)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int *piVar3;
  void *this_00;
  int *piVar4;
  void *pvVar5;
  undefined4 uVar6;
  uint uVar7;
  char cVar8;
  int *piStack_1c;
  void *pvStack_18;
  
  pvStack_18 = (void *)0x0;
  piStack_1c = (int *)0x0;
  *(int *)((int)this + 4) = param_1;
  cVar8 = *(char *)(param_1 + 0x4bc);
  puVar2 = (undefined4 *)FUN_004e4500(0x5c,"Lot/LODCreationManager/WallLODCreator",0);
  if (puVar2 == (undefined4 *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    pvStack_18 = (void *)0xade69a;
    piVar3 = (int *)FUN_00c49640(puVar2);
  }
  piStack_1c = *(int **)((int)this + 4);
  pvStack_18 = this;
  (**(code **)(*piVar3 + 4))();
  puVar2 = *(undefined4 **)((int)this + 0xc);
  pvVar5 = (void *)((int)this + 8);
  if (puVar2 < *(undefined4 **)((int)this + 0x10)) {
    *(undefined4 **)((int)this + 0xc) = puVar2 + 1;
    if (puVar2 != (undefined4 *)0x0) {
      *puVar2 = piVar3;
    }
  }
  else {
    FUN_00982420(pvVar5,puVar2,(undefined4 *)&stack0xfffffff4);
  }
  this_00 = (void *)FUN_004e4500(0x4c,"Lot/LODCreationManager/FloorLODCreator",0);
  if (this_00 == (void *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = (int *)FUN_00a89ac0(this_00,(uint)(cVar8 == '\0'));
  }
  (**(code **)(*piVar3 + 4))();
  puVar2 = *(undefined4 **)((int)this + 0xc);
  if (puVar2 < *(undefined4 **)((int)this + 0x10)) {
    *(undefined4 **)((int)this + 0xc) = puVar2 + 1;
    if (puVar2 != (undefined4 *)0x0) {
      *puVar2 = piVar3;
    }
  }
  else {
    FUN_00982420(pvVar5,puVar2,(undefined4 *)&stack0xffffffec);
  }
  puVar2 = (undefined4 *)FUN_004e4500(0x84,"Lot/LODCreationManager/FloorThicknessLODCreator",0);
  if (puVar2 == (undefined4 *)0x0) {
    piVar4 = (int *)0x0;
  }
  else {
    piVar4 = (int *)FUN_00aa6010(puVar2);
  }
  (**(code **)(*piVar4 + 4))();
  puVar2 = *(undefined4 **)((int)this + 0xc);
  piStack_1c = piVar4;
  if (puVar2 < *(undefined4 **)((int)this + 0x10)) {
    *(undefined4 **)((int)this + 0xc) = puVar2 + 1;
    if (puVar2 != (undefined4 *)0x0) {
      *puVar2 = piVar4;
    }
  }
  else {
    FUN_00982420(pvVar5,puVar2,&piStack_1c);
  }
  piVar4 = (int *)0x0;
  if ((char)piVar3 == '\0') {
    puVar2 = (undefined4 *)FUN_004e4500(100,"Lot/LODCreationManager/LotTerrainLODCreator",0);
    if (puVar2 == (undefined4 *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = FUN_00af51a0(puVar2);
    }
    (**(code **)(*piVar4 + 4))();
    puVar2 = *(undefined4 **)((int)this + 0xc);
    piStack_1c = piVar4;
    if (puVar2 < *(undefined4 **)((int)this + 0x10)) {
      *(undefined4 **)((int)this + 0xc) = puVar2 + 1;
      if (puVar2 != (undefined4 *)0x0) {
        *puVar2 = piVar4;
      }
    }
    else {
      FUN_00982420(pvVar5,puVar2,&piStack_1c);
    }
  }
  puVar2 = (undefined4 *)FUN_004e4500(0x34,"Lot/LODCreationManager/RoofLODCreator",0);
  if (puVar2 == (undefined4 *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = (int *)FUN_00b89090(puVar2);
  }
  (**(code **)(*piVar3 + 4))();
  puVar2 = *(undefined4 **)((int)this + 0xc);
  if (puVar2 < *(undefined4 **)((int)this + 0x10)) {
    *(undefined4 **)((int)this + 0xc) = puVar2 + 1;
    if (puVar2 != (undefined4 *)0x0) {
      *puVar2 = piVar3;
    }
  }
  else {
    FUN_00982420(pvVar5,puVar2,(undefined4 *)&stack0xffffffdc);
  }
  puVar2 = (undefined4 *)FUN_004e4500(0x40,"Lot/LODCreationManager/CeilingLODCreator",0);
  if (puVar2 == (undefined4 *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = (int *)FUN_00a48060(puVar2);
  }
  (**(code **)(*piVar3 + 4))();
  puVar2 = *(undefined4 **)((int)this + 0xc);
  if (puVar2 < *(undefined4 **)((int)this + 0x10)) {
    *(undefined4 **)((int)this + 0xc) = puVar2 + 1;
    if (puVar2 != (undefined4 *)0x0) {
      *puVar2 = piVar3;
    }
  }
  else {
    FUN_00982420(pvVar5,puVar2,(undefined4 *)&stack0xffffffd4);
  }
  puVar2 = (undefined4 *)FUN_004e4500(0x40,"Lot/LODCreationManager/StairLODCreator",0);
  if (puVar2 == (undefined4 *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = (int *)FUN_00c19470(puVar2);
  }
  (**(code **)(*piVar3 + 4))();
  puVar2 = *(undefined4 **)((int)this + 0xc);
  if (puVar2 < *(undefined4 **)((int)this + 0x10)) {
    *(undefined4 **)((int)this + 0xc) = puVar2 + 1;
    if (puVar2 != (undefined4 *)0x0) {
      *puVar2 = piVar3;
    }
  }
  else {
    FUN_00982420(pvVar5,puVar2,(undefined4 *)&stack0xffffffcc);
  }
  puVar2 = (undefined4 *)FUN_004e4500(0x50,"Lot/LODCreationManager/FenceLODCreator",0);
  if (puVar2 == (undefined4 *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = (int *)FUN_00a65c60(puVar2);
  }
  (**(code **)(*piVar3 + 4))();
  puVar2 = *(undefined4 **)((int)this + 0xc);
  if (puVar2 < *(undefined4 **)((int)this + 0x10)) {
    *(undefined4 **)((int)this + 0xc) = puVar2 + 1;
    if (puVar2 != (undefined4 *)0x0) {
      *puVar2 = piVar3;
    }
  }
  else {
    FUN_00982420(pvVar5,puVar2,(undefined4 *)&stack0xffffffc4);
  }
  puVar2 = (undefined4 *)FUN_004e4500(0x40,"Lot/LODCreationManager/WindowLODCreator",0);
  if (puVar2 == (undefined4 *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = (int *)FUN_00c5e540(puVar2);
  }
  (**(code **)(*piVar3 + 4))(*(undefined4 *)((int)this + 4),this);
  puVar2 = *(undefined4 **)((int)this + 0xc);
  if (puVar2 < *(undefined4 **)((int)this + 0x10)) {
    *(undefined4 **)((int)this + 0xc) = puVar2 + 1;
    if (puVar2 != (undefined4 *)0x0) {
      *puVar2 = piVar3;
    }
  }
  else {
    FUN_00982420(pvVar5,puVar2,(undefined4 *)&stack0xffffffbc);
  }
  cVar8 = (char)piVar3;
  puVar2 = (undefined4 *)FUN_004e4500(0x40,"Lot/LODCreationManager/ColumnLODCreator",0);
  if (puVar2 == (undefined4 *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = (int *)FUN_00a51590(puVar2);
  }
  (**(code **)(*piVar3 + 4))(*(undefined4 *)((int)this + 4),this);
  puVar2 = *(undefined4 **)((int)this + 0xc);
  if (puVar2 < *(undefined4 **)((int)this + 0x10)) {
    *(undefined4 **)((int)this + 0xc) = puVar2 + 1;
    if (puVar2 != (undefined4 *)0x0) {
      *puVar2 = piVar3;
    }
  }
  else {
    FUN_00982420(pvVar5,puVar2,(undefined4 *)&stack0xffffffb4);
  }
  if ((cVar8 == '\0') && (piVar4 != (int *)0x0)) {
    pvVar5 = (void *)FUN_004e4500(0x20,"Lot/LODCreationManager/WaterLODCreator",0);
    if (pvVar5 == (void *)0x0) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = (int *)FUN_00b624c0(pvVar5,piVar4);
    }
    (**(code **)(*piVar3 + 4))(*(undefined4 *)((int)this + 4),this);
    puVar2 = *(undefined4 **)((int)this + 0x1c);
    if (puVar2 < *(undefined4 **)((int)this + 0x20)) {
      *(undefined4 **)((int)this + 0x1c) = puVar2 + 1;
      if (puVar2 != (undefined4 *)0x0) {
        *puVar2 = piVar3;
      }
    }
    else {
      FUN_00982420((void *)((int)this + 0x18),puVar2,(undefined4 *)&stack0xffffffbc);
    }
  }
  puVar2 = (undefined4 *)FUN_004e4500(0xc,"Lot/LODCreationManager/HolidayLightsLODCreator",0);
  if (puVar2 == (undefined4 *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = (int *)FUN_00aa6fd0(puVar2);
  }
  (**(code **)(*piVar3 + 4))(*(undefined4 *)((int)this + 4),this);
  puVar2 = *(undefined4 **)((int)this + 0x2c);
  if (puVar2 < *(undefined4 **)((int)this + 0x30)) {
    *(undefined4 **)((int)this + 0x2c) = puVar2 + 1;
    if (puVar2 != (undefined4 *)0x0) {
      *puVar2 = piVar3;
    }
  }
  else {
    FUN_00982420((void *)((int)this + 0x28),puVar2,(undefined4 *)&stack0xffffffb4);
  }
  uVar6 = *(undefined4 *)(*(int *)((int)this + 4) + 0x48);
  uVar1 = *(undefined4 *)(*(int *)((int)this + 4) + 0x4c);
  *(undefined4 *)((int)this + 0x58) = uVar6;
  *(undefined4 *)((int)this + 0x70) = uVar6;
  *(undefined4 *)((int)this + 0x88) = uVar6;
  *(undefined4 *)((int)this + 0xa0) = uVar6;
  *(undefined4 *)((int)this + 0xb8) = uVar6;
  *(undefined4 *)((int)this + 0x5c) = uVar1;
  *(undefined4 *)((int)this + 0x74) = uVar1;
  *(undefined4 *)((int)this + 0x8c) = uVar1;
  *(undefined4 *)((int)this + 0xa4) = uVar1;
  *(undefined4 *)((int)this + 0xbc) = uVar1;
  *(undefined4 *)((int)this + 0x60) = 0xb2d882;
  *(undefined4 *)((int)this + 0x78) = 0xb2d882;
  *(undefined4 *)((int)this + 0x90) = 0xb2d882;
  *(undefined4 *)((int)this + 0xa8) = 0xb2d882;
  *(undefined4 *)((int)this + 0xc0) = 0xb2d882;
  *(undefined4 *)((int)this + 100) = 0xb0c507;
  *(undefined1 **)((int)this + 0x7c) = &LAB_007e7555;
  *(undefined4 *)((int)this + 0x94) = 0x1da7e9;
  *(undefined4 *)((int)this + 0xac) = 0xbc1e4c;
  *(undefined4 *)((int)this + 0xc4) = 0xbc1e54;
  if (DAT_011d853c != (void *)0x0) {
    uVar6 = ShaderLibrary_FindByName(DAT_011d853c,"ImpostorHelper",0,'\0');
    *(undefined4 *)((int)this + 200) = uVar6;
  }
  pvVar5 = DAT_011d8530;
  uVar7 = ShaderParameterRegistry_RegisterNamedRow(DAT_011d8530,"FillColor",1,2);
  *(uint *)((int)this + 0xcc) = uVar7;
  if (uVar7 < *(uint *)((int)pvVar5 + 8)) {
    piVar3 = (int *)(uVar7 * 0x10 + *(int *)((int)pvVar5 + 4));
    *piVar3 = *piVar3 + 1;
    *(undefined2 *)(piVar3 + 1) = *(undefined2 *)((int)pvVar5 + 0x12);
    piVar3[3] = (int)this + 0xd0;
  }
  *(undefined1 *)this = 1;
  return;
}

