/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x006e24d2) */
/* WARNING: Removing unreachable block (ram,0x006e24ea) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 original contract. ECX render owner, one stack Boolean full-refresh flag, RET4.
   Clears separate byte17E through6E3940; rebuilds targets and updates binding generations.
   RenderShadowsEnabled-derived byte178 controls global shadow owner115C3C4: false clears enabled
   byte115C3CE; true calls70BDD0 to clear flags8/9/A, sets A true then70BE10 chooses shadow flags
   from shader-library capability44. Does not synthesize TREEALPHABLEND/thumbnail/custom-light
   hashes or write seasonal vector238. No direct FSAALevel/sample-count read. Full flag enables the
   separate owned-target child1DF0; not a different flora selector input. */

void __thiscall RenderSystem_RebuildRenderTargets(void *this,char param_1)

{
  int iVar1;
  char cVar2;
  bool bVar3;
  int iVar4;
  void *this_00;
  int iVar5;
  uint uVar6;
  uint uVar7;
  int *piVar8;
  undefined4 *puVar9;
  Ts3SkinTexture2D *self;
  undefined4 uVar10;
  uint height;
  uint width;
  uint height_00;
  int *local_44;
  int *local_40;
  int local_38;
  float fStack_20;
  float fStack_1c;
  
  iVar1 = DAT_011d8530;
  RenderSystem_ClearTargetFlag17E((int)this);
  iVar4 = *(int *)((int)this + 0x108);
  *(undefined4 *)((int)this + 0x108) = 0;
  *(uint *)((int)this + 0x10c) = iVar4 + *(int *)((int)this + 0x10c) | 0x80000000;
  iVar4 = Graphics_GetManagerSingleton();
  this_00 = (void *)FUN_00617780();
  iVar5 = FUN_00c7cbd0(iVar4);
  FUN_0081d420(iVar4);
  width = *(uint *)(iVar5 + 0x18) >> 1;
  uVar6 = width - 1 | width - 1 >> 0x10;
  uVar6 = uVar6 | uVar6 >> 8;
  uVar6 = uVar6 | uVar6 >> 4;
  uVar6 = uVar6 | uVar6 >> 2;
  height_00 = *(uint *)(iVar5 + 0x1c) >> 1;
  uVar7 = height_00 - 1 | height_00 - 1 >> 0x10;
  uVar7 = uVar7 | uVar7 >> 8;
  uVar7 = uVar7 | uVar7 >> 4;
  uVar7 = uVar7 | uVar7 >> 2;
  uVar7 = (uVar7 >> 1 | uVar7) + 1;
  uVar6 = (uVar6 >> 1 | uVar6) + 1;
  if (height_00 < uVar7) {
    height_00 = uVar7 >> 1;
  }
  if (width < uVar6) {
    width = uVar6 >> 1;
  }
  if (height_00 < 0x100) {
    height_00 = 0x100;
  }
  if (width < 0x100) {
    width = 0x100;
  }
  uVar6 = *(uint *)(iVar5 + 0x20);
  FUN_006e1920(this_00,0x80,0x2fcd2b4c);
  *(undefined1 *)((int)this + 0x17f) = 1;
  FUN_006e1990(this_00);
  RenderSystem_AddNamedRenderTarget2D(width,height_00,0x76b9af5e,0x47f8c49a,uVar6,0);
  if ((_DAT_011d26b0 & 1) == 0) {
    _DAT_011d26b0 = _DAT_011d26b0 | 1;
  }
  fRam011d26a4 = (float)height_00;
  _DAT_011d26a0 = (float)width;
  fRam011d26ac = 1.0 / fRam011d26a4;
  fRam011d26a8 = 1.0 / _DAT_011d26a0;
  if (*(uint *)((int)this + 0x1c) < *(uint *)(iVar1 + 8)) {
    piVar8 = (int *)(*(uint *)((int)this + 0x1c) * 0x10 + *(int *)(iVar1 + 4));
    *piVar8 = *piVar8 + 1;
    *(undefined2 *)(piVar8 + 1) = *(undefined2 *)(iVar1 + 0x12);
    piVar8[3] = (int)&DAT_011d26a0;
  }
  RenderSystem_AddNamedRenderTarget2D(width >> 1,height_00 >> 1,0xf56a02a0,0x80d63c2c,uVar6,0);
  uVar7 = width;
  height = height_00;
  if (*(char *)((int)this + 0xf0) != '\0') {
    uVar7 = width * 2;
    height = height_00 * 2;
    if (0x800 < uVar7) {
      uVar7 = 0x800;
    }
    if (0x400 < height) {
      height = 0x400;
    }
  }
  RenderSystem_AddNamedRenderTarget2D(uVar7,height,0x75bd7813,0x679d9d4d,uVar6,0);
  if (*(char *)((int)this + 0x179) != '\0') {
    RenderSystem_AddNamedRenderTarget2D(width,height_00,0xbc0c28f2,0xb451ee7e,uVar6,0);
  }
  if (*(char *)((int)this + 0x178) == '\0') {
    DAT_0115c3ce = 0;
  }
  else {
    RenderSystem_AddNamedRenderTarget2D(0x40,0x40,0x7440b7a6,0xcf5c8f42,0x3d,0);
    ShadowMap_ClearOptionFlags(0x115c3c4);
    DAT_0115c3ce = 1;
    ShadowMap_CreateTargetsAndChooseOptions(0x115c3c4);
    piVar8 = SurfaceRegistry_FindValueByTag(this_00,0x633e72e2);
    if (piVar8 == (int *)0x0) {
      iVar4 = 0;
    }
    else {
      iVar4 = *piVar8;
    }
    if (*(uint *)((int)this + 200) < *(uint *)(iVar1 + 8)) {
      piVar8 = (int *)(*(uint *)((int)this + 200) * 0x10 + *(int *)(iVar1 + 4));
      *piVar8 = *piVar8 + 1;
      *(undefined2 *)(piVar8 + 1) = *(undefined2 *)(iVar1 + 0x12);
      piVar8[3] = iVar4;
    }
  }
  if ((*(char *)((int)this + 0x178) == '\0') || (*(char *)((int)this + 0x17b) == '\0')) {
    DAT_0115c3e6 = 0;
  }
  else {
    ShadowMap_ClearOptionFlags(0x115c3dc);
    DAT_0115c3e6 = 1;
    ShadowMap_CreateTargetsAndChooseOptions(0x115c3dc);
    piVar8 = SurfaceRegistry_FindValueByTag(this_00,0xd536718);
    if (piVar8 == (int *)0x0) {
      iVar4 = 0;
    }
    else {
      iVar4 = *piVar8;
    }
    if (*(uint *)((int)this + 0x38) < *(uint *)(iVar1 + 8)) {
      piVar8 = (int *)(*(uint *)((int)this + 0x38) * 0x10 + *(int *)(iVar1 + 4));
      *piVar8 = *piVar8 + 1;
      *(undefined2 *)(piVar8 + 1) = *(undefined2 *)(iVar1 + 0x12);
      piVar8[3] = iVar4;
    }
  }
  FUN_006e0e00(0x47f8c49a,0x76b9af5e,*(uint *)((int)this + 0x14),*(uint *)((int)this + 0x18));
  FUN_006e0e00(0x679d9d4d,0x75bd7813,*(uint *)((int)this + 0x20),*(uint *)((int)this + 0x24));
  piVar8 = SurfaceRegistry_FindValueByTag(this_00,0xf56a02a0);
  if (piVar8 == (int *)0x0) {
    if (*(uint *)((int)this + 0xb0) < *(uint *)(iVar1 + 8)) {
      piVar8 = (int *)(*(uint *)((int)this + 0xb0) * 0x10 + *(int *)(iVar1 + 4));
      *piVar8 = *piVar8 + 1;
      *(undefined2 *)(piVar8 + 1) = *(undefined2 *)(iVar1 + 0x12);
      piVar8[3] = 0;
    }
  }
  else {
    iVar4 = *piVar8;
    if (*(uint *)((int)this + 0xb0) < *(uint *)(iVar1 + 8)) {
      piVar8 = (int *)(*(uint *)((int)this + 0xb0) * 0x10 + *(int *)(iVar1 + 4));
      *piVar8 = *piVar8 + 1;
      *(undefined2 *)(piVar8 + 1) = *(undefined2 *)(iVar1 + 0x12);
      piVar8[3] = iVar4;
    }
  }
  if ((param_1 != '\0') && (*(char *)((int)this + 0x180) != '\0')) {
    RenderSystem_AllocateAndBindCasLightMaps(this,this_00);
  }
  FUN_006e2120((int)this);
  if (*(char *)((int)this + 0x17c) != '\0') {
    RenderSystem_AddNamedRenderTarget2D(0x200,0x200,0x5e732bf9,0x29941e13,DAT_0115c0c4,0);
    RenderSystem_AddNamedRenderTarget2D(0x200,0x200,0x19f5c6b8,0x6a5f2524,DAT_0115c0c4,0);
    RenderSystem_AddNamedRenderTarget2D(0x200,0x200,0x2bd64910,0xf3676b3c,DAT_0115c0c4,0);
    RenderSystem_AddNamedRenderTarget2D(0x200,0x200,0x6ee31d32,0x114efdbe,DAT_01159fbc,0);
    FUN_006e0e00(0x29941e13,0x5e732bf9,*(uint *)((int)this + 0x3c),*(uint *)((int)this + 0x40));
    FUN_006e0e00(0x6a5f2524,0x19f5c6b8,*(uint *)((int)this + 0x44),*(uint *)((int)this + 0x48));
    FUN_006e0e00(0xf3676b3c,0x2bd64910,*(uint *)((int)this + 0x4c),*(uint *)((int)this + 0x50));
    FUN_006e0e00(0x114efdbe,0x6ee31d32,*(uint *)((int)this + 0x54),*(uint *)((int)this + 0x58));
  }
  FUN_006e0e00(0xcf5c8f42,0x7440b7a6,*(uint *)((int)this + 0xb4),*(uint *)((int)this + 0xb8));
  if (*(int *)((int)this + 300) == 0) {
    puVar9 = (undefined4 *)FUN_004e4500(0x34,"Renderer/OpaqueWhiteTexture",0);
    if (puVar9 == (undefined4 *)0x0) {
      piVar8 = (int *)0x0;
    }
    else {
      piVar8 = Texture_Construct(puVar9);
    }
    *(int **)((int)this + 300) = piVar8;
    (**(code **)(*piVar8 + 4))();
    Texture_Create2D(*(Ts3SkinTexture2D **)((int)this + 300),4,4,1,0x19,2,"RenderSystem");
  }
  if (*(int *)((int)this + 0x130) == 0) {
    puVar9 = (undefined4 *)FUN_004e4500(0x34,"Renderer/OpaqueGrey2DTexture",0);
    if (puVar9 == (undefined4 *)0x0) {
      piVar8 = (int *)0x0;
    }
    else {
      piVar8 = Texture_Construct(puVar9);
    }
    *(int **)((int)this + 0x130) = piVar8;
    (**(code **)(*piVar8 + 4))();
    Texture_Create2D(*(Ts3SkinTexture2D **)((int)this + 0x130),4,4,1,0x19,2,"RenderSystem");
  }
  if (*(int *)((int)this + 0x134) == 0) {
    puVar9 = (undefined4 *)FUN_004e4500(0x34,"Renderer/TransparentWhiteTexture",0);
    if (puVar9 == (undefined4 *)0x0) {
      piVar8 = (int *)0x0;
    }
    else {
      piVar8 = Texture_Construct(puVar9);
    }
    *(int **)((int)this + 0x134) = piVar8;
    (**(code **)(*piVar8 + 4))();
    Texture_Create2D(*(Ts3SkinTexture2D **)((int)this + 0x134),4,4,1,0x19,2,"RenderSystem");
  }
  if (*(int *)((int)this + 0x138) == 0) {
    puVar9 = (undefined4 *)FUN_004e4500(0x34,"Renderer/OpaqueBlackTexture",0);
    if (puVar9 == (undefined4 *)0x0) {
      piVar8 = (int *)0x0;
    }
    else {
      piVar8 = Texture_Construct(puVar9);
    }
    *(int **)((int)this + 0x138) = piVar8;
    (**(code **)(*piVar8 + 4))();
    Texture_Create2D(*(Ts3SkinTexture2D **)((int)this + 0x138),4,4,1,0x19,2,"RenderSystem");
  }
  if (*(int *)((int)this + 0x13c) == 0) {
    puVar9 = (undefined4 *)FUN_004e4500(0x34,"Renderer/TransparentBlackTexture",0);
    if (puVar9 == (undefined4 *)0x0) {
      piVar8 = (int *)0x0;
    }
    else {
      piVar8 = Texture_Construct(puVar9);
    }
    *(int **)((int)this + 0x13c) = piVar8;
    (**(code **)(*piVar8 + 4))();
    Texture_Create2D(*(Ts3SkinTexture2D **)((int)this + 0x13c),4,4,1,0x19,2,"RenderSystem");
  }
  if (*(int *)((int)this + 0x140) == 0) {
    puVar9 = (undefined4 *)FUN_004e4500(0x34,"Renderer/FlatNormalMapTexture",0);
    if (puVar9 == (undefined4 *)0x0) {
      piVar8 = (int *)0x0;
    }
    else {
      piVar8 = Texture_Construct(puVar9);
    }
    *(int **)((int)this + 0x140) = piVar8;
    (**(code **)(*piVar8 + 4))();
    Texture_Create2D(*(Ts3SkinTexture2D **)((int)this + 0x140),4,4,1,0x23,2,"RenderSystem");
  }
  Texture_CopyMipRows2D(*(void **)((int)this + 300),0,&DAT_00ff8c5c,8,0,0);
  Texture_CopyMipRows2D(*(void **)((int)this + 0x130),0,&DAT_00ff8c3c,8,0,0);
  Texture_CopyMipRows2D(*(void **)((int)this + 0x134),0,&DAT_00ff8c1c,8,0,0);
  Texture_CopyMipRows2D(*(void **)((int)this + 0x138),0,&DAT_00ff8bfc,8,0,0);
  Texture_CopyMipRows2D(*(void **)((int)this + 0x13c),0,&DAT_00ff8bdc,8,0,0);
  Texture_CopyMipRows2D(*(void **)((int)this + 0x140),0,&DAT_00ff8bbc,4,0,0);
  puVar9 = (undefined4 *)FUN_004e4500(0x28,"Renderer/RenderSystem/RenderPickColorTarget",0);
  if (puVar9 == (undefined4 *)0x0) {
    local_40 = (int *)0x0;
  }
  else {
    local_40 = FUN_006187a0(puVar9);
    if (local_40 != (int *)0x0) {
      (**(code **)(*local_40 + 4))();
      cVar2 = FUN_006182f0(local_40,0x10,0x10,0x3d,1);
      if (cVar2 != '\0') {
        FUN_00617cd0(this_00,0x6ee45453,local_40);
      }
    }
  }
  puVar9 = (undefined4 *)FUN_004e4500(0x34,"Renderer/RenderSystem/RenderPickColorTexture",0);
  if (puVar9 == (undefined4 *)0x0) {
    self = (Ts3SkinTexture2D *)0x0;
  }
  else {
    self = (Ts3SkinTexture2D *)Texture_Construct(puVar9);
    if (self != (Ts3SkinTexture2D *)0x0) {
      (**(code **)(*(int *)self + 4))();
      bVar3 = Texture_Create2D(self,0x10,0x10,1,0x3d,0x100,"RenderSystem");
      if (bVar3) {
        FUN_00617da0(this_00,0x6ee45453,(int *)self);
      }
    }
  }
  puVar9 = (undefined4 *)FUN_004e4500(0x28,"Renderer/RenderSystem/RenderPickColorTarget",0);
  if (puVar9 == (undefined4 *)0x0) {
    local_44 = (int *)0x0;
  }
  else {
    local_44 = FUN_006187a0(puVar9);
    if (local_44 != (int *)0x0) {
      (**(code **)(*local_44 + 4))();
      cVar2 = FUN_006182f0(local_44,0x10,0x10,0x8d,0x11);
      if (cVar2 != '\0') {
        FUN_00617cd0(this_00,0x90361c05,local_44);
      }
    }
  }
  uVar10 = FUN_0058af90((short *)PTR_u_Config_01150ab0,L"PseudoResolution",&fStack_20);
  if ((char)uVar10 != '\0') {
    local_38 = (int)(longlong)ROUND(fStack_20);
    bVar3 = local_38 != 0;
    local_38 = (int)(longlong)ROUND(fStack_1c);
    if ((((bVar3) && (local_38 != 0)) &&
        (puVar9 = (undefined4 *)FUN_004e4500(0x28,"Renderer/RenderSystem/RenderPickColorTexture",0),
        puVar9 != (undefined4 *)0x0)) && (piVar8 = FUN_006187a0(puVar9), piVar8 != (int *)0x0)) {
      (**(code **)(*piVar8 + 4))();
      uVar10 = FUN_006e3980();
      if ((char)uVar10 != '\0') {
        FUN_00617cd0(this_00,0x5a6af52c,piVar8);
      }
      (**(code **)(*piVar8 + 8))();
    }
  }
  FUN_006e1bb0(this,this_00);
  if (local_44 != (int *)0x0) {
    (**(code **)(*local_44 + 8))();
  }
  if (self != (Ts3SkinTexture2D *)0x0) {
    (**(code **)(*(int *)self + 8))();
  }
  if (local_40 != (int *)0x0) {
    (**(code **)(*local_40 + 8))();
  }
  return;
}

