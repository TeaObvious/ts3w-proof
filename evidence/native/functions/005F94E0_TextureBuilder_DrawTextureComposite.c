/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 static: ECX operation plus builder pointer, RET0x04. Tags0x021E9CD3/0x021E9CD5
   select builder+0x14/+0x18 surfaces; prior+0x3C virtual+0x08 and selected-surface virtual+0x04
   precede stored pointer replacement. Child effects/refcount semantics remain unestablished.
   Missing source/tbops or quad AL0 returns full EAX1 before draw; successful tail returns0 after
   flush and conditional tagged-source virtual+0x08/clear, without equal cleanup on all failure
   paths. Publish DiffuseMap/BlitOp_MultiplyScale/MaskMap/Mask_Select/Mask_Bias rows; signed Int16
   inputs use MOVSX and exact binary32 scale0x3B808081. Quad alias admission precedes
   virtual+0x54/state/virtual+0x58 draw. Enable bit5, low/high factor nibbles and low4write bits
   remain separate; no current Vulkan default/enable inference is proved. Descriptive analyst role,
   not a recovered symbol. */

undefined4 __thiscall TextureBuilder_DrawTextureComposite(void *this,void *param_1)

{
  void *pvVar1;
  undefined4 *puVar2;
  Ts3SkinPostDefinition *self;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  void *pvVar7;
  int iVar8;
  undefined2 uVar9;
  int *piVar10;
  bool bVar11;
  char cStack_4c;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float afStack_20 [7];
  
  iVar8 = *(int *)((int)this + 0x40);
  if (iVar8 != 0) {
    Graphics_GetManagerSingleton();
    pvVar1 = (void *)FUN_00617780();
    if (iVar8 == 0x21e9cd3) {
      uVar3 = *(uint *)((int)param_1 + 0x14);
LAB_005f951a:
      puVar2 = SurfaceRegistry_FindValueByTag(pvVar1,uVar3);
      if (puVar2 == (undefined4 *)0x0) goto LAB_005f9526;
      piVar10 = (int *)*puVar2;
    }
    else {
      if (iVar8 == 0x21e9cd5) {
        uVar3 = *(uint *)((int)param_1 + 0x18);
        goto LAB_005f951a;
      }
LAB_005f9526:
      piVar10 = (int *)0x0;
    }
    if (*(int **)((int)this + 0x3c) != (int *)0x0) {
      (**(code **)(**(int **)((int)this + 0x3c) + 8))();
    }
    if (piVar10 != (int *)0x0) {
      (**(code **)(*piVar10 + 4))();
    }
    *(int **)((int)this + 0x3c) = piVar10;
  }
  if (*(int *)((int)this + 0x3c) == 0) {
    return 1;
  }
  self = (Ts3SkinPostDefinition *)ShaderLibrary_FindByName(DAT_011d853c,"tbops",0,'\0');
  if (self == (Ts3SkinPostDefinition *)0x0) {
    return 1;
  }
  uVar3 = (**(code **)(*(int *)this + 0x50))();
  ShaderDefinition_SelectTechniqueOrdinal(self,uVar3);
  pvVar7 = DAT_011d8530;
  pvVar1 = DAT_011cfcc8;
  uVar3 = ShaderParameterRegistry_RegisterNamedRow(DAT_011d8530,"DiffuseMap",1,5);
  uVar4 = ShaderParameterRegistry_RegisterNamedRow(pvVar7,"BlitOp_MultiplyScale",1,1);
  iVar8 = *(int *)((int)this + 0x3c);
  if (uVar3 < *(uint *)((int)pvVar7 + 8)) {
    piVar10 = (int *)(uVar3 * 0x10 + *(int *)((int)pvVar7 + 4));
    *piVar10 = *piVar10 + 1;
    *(undefined2 *)(piVar10 + 1) = *(undefined2 *)((int)pvVar7 + 0x12);
    piVar10[3] = iVar8;
  }
  _DAT_01158db0 = (float)(int)*(short *)((int)this + 0x4c) * 0.003921569;
  if (uVar4 < *(uint *)((int)pvVar7 + 8)) {
    piVar10 = (int *)(uVar4 * 0x10 + *(int *)((int)pvVar7 + 4));
    *piVar10 = *piVar10 + 1;
    *(undefined2 *)(piVar10 + 1) = *(undefined2 *)((int)pvVar7 + 0x12);
    piVar10[3] = (int)&DAT_01158db0;
  }
  uVar3 = ShaderParameterRegistry_RegisterNamedRow(pvVar7,"MaskMap",1,5);
  uVar4 = ShaderParameterRegistry_RegisterNamedRow(pvVar7,"Mask_Select",1,2);
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(pvVar7,"Mask_Bias",1,1);
  iVar8 = 0;
  if ((_DAT_011cfa80 & 1) == 0) {
    _DAT_011cfa80 = _DAT_011cfa80 | 1;
    fStack_34 = 0.0;
    fStack_38 = 0.0;
    fStack_3c = 0.0;
    fStack_40 = 0.0;
    _DAT_011cfa70 = 0;
    uRam011cfa74 = 0;
    uRam011cfa78 = 0;
    uRam011cfa7c = 0;
  }
  if (((*(uint *)((int)this + 0x38) & 3) == 0) && (*(int *)((int)this + 0x38) != 0)) {
    _DAT_011cfa64 = (float)(int)*(short *)((int)this + 0x48) * 0.003921569;
    puVar2 = (undefined4 *)FUN_005b5ee0((void *)((int)this + 0x44),afStack_20);
    _DAT_011cfa70 = *puVar2;
    uRam011cfa74 = puVar2[1];
    uRam011cfa78 = puVar2[2];
    uRam011cfa7c = puVar2[3];
    uVar6 = -(uint)(*(int *)(*(uint *)((int)this + 0x38) + 0x60) != 0) & *(uint *)((int)this + 0x38)
    ;
    if (uVar6 == 0) {
      iVar8 = 0;
    }
    else {
      iVar8 = uVar6 + 0x28;
    }
    if (uVar4 < *(uint *)((int)pvVar7 + 8)) {
      piVar10 = (int *)(uVar4 * 0x10 + *(int *)((int)pvVar7 + 4));
      *piVar10 = *piVar10 + 1;
      *(undefined2 *)(piVar10 + 1) = *(undefined2 *)((int)pvVar7 + 0x12);
      piVar10[3] = (int)&DAT_011cfa70;
    }
    if (uVar5 < *(uint *)((int)pvVar7 + 8)) {
      piVar10 = (int *)(uVar5 * 0x10 + *(int *)((int)pvVar7 + 4));
      *piVar10 = *piVar10 + 1;
      uVar9 = *(undefined2 *)((int)pvVar7 + 0x12);
      piVar10[3] = (int)&DAT_011cfa64;
LAB_005f9749:
      *(undefined2 *)(piVar10 + 1) = uVar9;
    }
  }
  else {
    if (uVar4 < *(uint *)((int)pvVar7 + 8)) {
      piVar10 = (int *)(uVar4 * 0x10 + *(int *)((int)pvVar7 + 4));
      *piVar10 = *piVar10 + 1;
      *(undefined2 *)(piVar10 + 1) = *(undefined2 *)((int)pvVar7 + 0x12);
      piVar10[3] = (int)&DAT_01158da0;
    }
    if (uVar5 < *(uint *)((int)pvVar7 + 8)) {
      piVar10 = (int *)(uVar5 * 0x10 + *(int *)((int)pvVar7 + 4));
      *piVar10 = *piVar10 + 1;
      uVar9 = *(undefined2 *)((int)pvVar7 + 0x12);
      piVar10[3] = (int)&DAT_00fe70c4;
      goto LAB_005f9749;
    }
  }
  if (uVar3 < *(uint *)((int)pvVar7 + 8)) {
    piVar10 = (int *)(uVar3 * 0x10 + *(int *)((int)pvVar7 + 4));
    *piVar10 = *piVar10 + 1;
    *(undefined2 *)(piVar10 + 1) = *(undefined2 *)((int)pvVar7 + 0x12);
    piVar10[3] = iVar8;
  }
  Graphics_GetManagerSingleton();
  pvVar7 = (void *)FUN_00617780();
  piVar10 = SurfaceRegistry_FindValueByTag(pvVar7,*(uint *)((int)param_1 + 0x14));
  iVar8 = 0;
  if (piVar10 != (int *)0x0) {
    iVar8 = *piVar10;
  }
  if (*(int *)((int)this + 0x3c) != iVar8) {
    Graphics_GetManagerSingleton();
    pvVar7 = (void *)FUN_00617780();
    piVar10 = SurfaceRegistry_FindValueByTag(pvVar7,*(uint *)((int)param_1 + 0x18));
    iVar8 = 0;
    if (piVar10 != (int *)0x0) {
      iVar8 = *piVar10;
    }
    cStack_4c = '\0';
    if (*(int *)((int)this + 0x3c) != iVar8) goto LAB_005f97b7;
  }
  cStack_4c = '\x01';
LAB_005f97b7:
  iVar8 = (**(code **)(*(int *)this + 0x50))();
  fStack_40 = (float)(int)*(short *)((int)this + 0xc) * 0.003921569;
  fStack_38 = (float)(int)*(short *)((int)this + 0x10) * 0.003921569;
  fStack_3c = (float)(int)*(short *)((int)this + 0xe) * 0.003921569;
  fStack_34 = (float)(int)*(short *)((int)this + 0x12) * 0.003921569;
  fStack_30 = (float)(int)*(short *)((int)this + 0x14) * 0.003921569;
  fStack_28 = (float)(int)*(short *)((int)this + 0x18) * 0.003921569;
  fStack_2c = (float)(int)*(short *)((int)this + 0x16) * 0.003921569;
  fStack_24 = (float)(int)*(short *)((int)this + 0x1a) * 0.003921569;
  uVar3 = TextureBuilder_BuildQuadVertices
                    (param_1,&fStack_30,&fStack_40,0xffffffff,
                     (float)(int)*(short *)((int)this + 0x4a) * 0.003921569,cStack_4c,'\x01','\0',
                     iVar8 == 8);
  if ((char)uVar3 == '\0') {
    return 1;
  }
  (**(code **)(*(int *)this + 0x54))();
  FUN_0060f2a0((int)pvVar1);
  RenderDevice_SetAlphaBlendByte(pvVar1,*(byte *)((int)this + 10) >> 5 & 1);
  RenderDevice_SetBlendFactorTableEntries
            (pvVar1,*(byte *)((int)this + 0x4e) & 0xf,(uint)(*(byte *)((int)this + 0x4e) >> 4));
  bVar11 = (*(byte *)((int)this + 10) & 0x40) == 0;
  if (bVar11) {
    FUN_00610060(pvVar1,0,0);
  }
  else {
    FUN_00610060(pvVar1,0,1);
  }
  FUN_006100a0(pvVar1,0,(uint)!bVar11);
  RenderDevice_SetBaselineState(pvVar1,0xa8,*(byte *)((int)this + 10) & 0xf);
  (**(code **)(*(int *)this + 0x58))(this);
  FUN_00610330((int)pvVar1);
  if ((*(int *)((int)this + 0x40) != 0) && (*(int **)((int)this + 0x3c) != (int *)0x0)) {
    (**(code **)(**(int **)((int)this + 0x3c) + 8))();
    *(undefined4 *)((int)this + 0x3c) = 0;
  }
  return 0;
}

