/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC 1.67 floor geometry preparation comparison.
   Stores the lot, its floor manager at lot+0x230, selected level, input flag and dimensions. Parses
   UTF16 floorThicknessTall as DDS type00B2D882/group0 through ResourceKey_ParseWideName into
   this+0x128. Allocates/constructs FloorGeometry and calls A87F70 with lot/level/flag/renderer;
   initializes floors/exterior-floors, pick/shadow/imposter/caustic material services.
   Physical ECX receiver plus three DWORD stack slots; RET0x0c, successful exit writes AL1 only.
   Stored undefined4 return metadata is retained; upper EAX is not a general success contract.
   Native virtual retain/release and allocation/graphics children are observed call boundaries, not
   a complete ownership/refcount model. No cached-null or CLR Lazy parity is inferred.
   Static original-code observations; preserve function ID, ABI/types, stored body, original bytes
   and flow. */

undefined4 __thiscall
FloorRenderer_InitializeLotLevelAndMaterials(void *this,int param_1,int param_2,undefined1 param_3)

{
  int *piVar1;
  void *this_00;
  char cVar2;
  undefined4 *puVar3;
  int *piVar4;
  uint uVar5;
  uint uVar6;
  undefined4 uVar7;
  undefined3 extraout_var;
  int iVar8;
  undefined3 extraout_var_00;
  uint *puVar9;
  uint auStack_20 [4];
  undefined8 uStack_10;
  undefined4 uStack_8;
  int iStack_4;
  
  *(int *)((int)this + 0xc) = param_1;
  *(undefined1 *)((int)this + 8) = 1;
  *(undefined4 *)((int)this + 0x10) = *(undefined4 *)(param_1 + 0x230);
  *(int *)((int)this + 0x14) = param_2;
  *(undefined1 *)((int)this + 0x18) = param_3;
  *(undefined4 *)((int)this + 0x1c) = *(undefined4 *)(param_1 + 0x60);
  *(undefined4 *)((int)this + 0x20) = *(undefined4 *)(param_1 + 100);
  ResourceKey_ParseWideName
            ((uint *)((int)this + 0x128),(ushort *)L"floorThicknessTall",0xb2d882,0,(void *)0x0,0);
  puVar3 = (undefined4 *)FUN_00c8b3f0();
  *(undefined4 *)((int)this + 0x28) = *puVar3;
  *(undefined4 *)((int)this + 0x2c) = puVar3[1];
  *(undefined4 *)((int)this + 0x30) = puVar3[2];
  *(undefined4 *)((int)this + 0x34) = puVar3[3];
  puVar3 = (undefined4 *)FUN_004e4500(0x350,"LotRenderer/FloorRenderer/FloorGeometry",0);
  if (puVar3 == (undefined4 *)0x0) {
    piVar4 = (int *)0x0;
  }
  else {
    piVar4 = FUN_00a86dc0(puVar3);
  }
  piVar1 = *(int **)((int)this + 0x100);
  if (piVar4 != piVar1) {
    if (piVar4 != (int *)0x0) {
      (**(code **)*piVar4)();
    }
    *(int **)((int)this + 0x100) = piVar4;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
  }
  FloorGeometry_InitializeLotLevelResources
            (*(void **)((int)this + 0x100),*(int *)((int)this + 0xc),param_2,
             *(char *)((int)this + 0x18),this);
  FUN_00a9f600((void *)((int)this + 0xe0),*(int *)((int)this + 0xe4),*(uint *)((int)this + 0xe8));
  *(undefined4 *)((int)this + 0xec) = 0;
  piVar4 = (int *)MessageDispatch_GetCurrent();
  *(int **)((int)this + 0x38) = piVar4;
  *(void **)((int)this + 0x3c) = this;
  *(undefined **)((int)this + 0x40) = &DAT_01064868;
  *(undefined4 *)((int)this + 0x44) = 1;
  *(undefined4 *)((int)this + 0x48) = 0;
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x24))(this,0x3fabf1d,0,0);
  }
  uVar5 = HashLowercasedCStringFNV1("floors");
  uVar6 = HashLowercasedCStringFNV1("exteriorfloors");
  FUN_0079b560(DAT_011d853c,uVar5,(undefined4 *)((int)this + 0x104),'\x01');
  FUN_0079b560(DAT_011d853c,uVar6,(undefined4 *)((int)this + 0x108),'\x01');
  uVar7 = ShaderLibrary_FindByName(DAT_011d853c,"pickLotTerrainAndFloors",0,'\0');
  *(undefined4 *)((int)this + 0x10c) = uVar7;
  uVar7 = ShaderLibrary_FindByName(DAT_011d853c,"pickLotTerrainAndFloorsWithCutouts",0,'\0');
  *(undefined4 *)((int)this + 0x110) = uVar7;
  uVar7 = ShaderLibrary_FindByName(DAT_011d853c,"shadowmap",0,'\0');
  *(undefined4 *)((int)this + 0x114) = uVar7;
  uVar7 = ShaderLibrary_FindByName(DAT_011d853c,"floorImposterMaker",0,'\0');
  puVar9 = (uint *)((int)this + 0x138);
  *(undefined4 *)((int)this + 0x118) = uVar7;
  if (((*puVar9 == 0) || ((*puVar9 & 3) != 0)) && ((*puVar9 & 1) == 0)) {
    auStack_20[0] = 0;
    auStack_20[1] = 0;
    auStack_20[2] = 0;
    auStack_20[3] = 0;
    ResourceKey_ParseWideName(auStack_20,(ushort *)L"CausticMap",0xb2d882,0,(void *)0x0,0);
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x34))
                (auStack_20,0xb3d7a7,puVar9,0,0,ResourceCallback_InvokeVirtual04,0,1);
    }
  }
  cVar2 = GameProducts_TestCachedMask40000();
  iVar8 = CONCAT31(extraout_var,cVar2);
  uStack_10 = CONCAT44(uStack_10._4_4_,(undefined4)uStack_10);
  if (cVar2 != '\0') {
    iVar8 = *(int *)((int)this + 0x13c);
    puVar9 = (uint *)((int)this + 0x13c);
    if (((iVar8 == 0) ||
        (uStack_10 = CONCAT44(uStack_10._4_4_,(undefined4)uStack_10), (*puVar9 & 3) != 0)) &&
       (uStack_10 = CONCAT44(uStack_10._4_4_,(undefined4)uStack_10), (*puVar9 & 1) == 0)) {
      iVar8 = ResourceKey_GroupFromProductWord(0x13);
      uStack_10 = NameHash64_Utf16Z((ushort *)L"EP10_diveLotCaustics");
      uStack_8 = 0xb2d882;
      iStack_4 = iVar8;
      iVar8 = FUN_005ca650(puVar9,&uStack_10,0,0,0);
    }
  }
  this_00 = DAT_011d8530;
  if (DAT_01183b64 != -1) goto LAB_00aa00f4;
  DAT_01183b64 = ShaderParameterRegistry_RegisterNamedRow(DAT_011d8530,"highlightMultiplier",1,1);
  DAT_01183b80 = ShaderParameterRegistry_RegisterNamedRow(this_00,"Opacity",1,2);
  DAT_01183b84 = ShaderParameterRegistry_RegisterNamedRow(this_00,"DiffuseMap",1,5);
  DAT_01183b8c = ShaderParameterRegistry_RegisterNamedRow(this_00,"RoomHideFactor",1,1);
  DAT_01183b90 = ShaderParameterRegistry_RegisterNamedRow(this_00,"CutoutMap",1,5);
  DAT_01183b94 = ShaderParameterRegistry_RegisterNamedRow(this_00,"WaterCausticsMap",1,5);
  DAT_01183ba0 = ShaderParameterRegistry_RegisterNamedRow(this_00,"PlatformOffsetFactor",1,1);
  cVar2 = CachedGlobalMask8000_Query();
  if (cVar2 != '\0') {
    DAT_01183ba4 = ShaderParameterRegistry_RegisterNamedRow(this_00,"LotWeatherDataMap",1,5);
  }
  cVar2 = CachedGlobalMask8000_Query();
  if (cVar2 == '\0') {
    cVar2 = GameProducts_TestCachedMask40000();
    if (cVar2 != '\0') goto LAB_00aa00c1;
  }
  else {
LAB_00aa00c1:
    DAT_01183ba8 = ShaderParameterRegistry_RegisterNamedRow(this_00,"LotWeatherDataMapScale",2,1);
  }
  cVar2 = GameProducts_TestCachedMask40000();
  iVar8 = CONCAT31(extraout_var_00,cVar2);
  if (cVar2 != '\0') {
    iVar8 = ShaderParameterRegistry_RegisterNamedRow(this_00,"DivingCausticsMap",1,5);
    DAT_01183b98 = iVar8;
  }
LAB_00aa00f4:
  return CONCAT31((int3)((uint)iVar8 >> 8),1);
}

