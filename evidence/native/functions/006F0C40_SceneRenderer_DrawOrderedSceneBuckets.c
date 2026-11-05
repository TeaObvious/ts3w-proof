/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. Ordered scene bucket walk; ECX owner, three
   physical stack words (context, scene lists, low-byte allow-reflection), RET0C;
   full1501bytes471instructions. Context+4 is rewritten for successive numeric buckets. Calls shared
   raster defaults006E8EC0, drawing helpers and mirror bucket006F2330. Mirror dispatch006F0D73
   receives scene vector+170, same context/scene and caller flag. Saves orientation bytecontext+10;
   temporarily inverts it for a later path and restores it at subsequent boundaries. Reflected
   invocation from006F374C passes zero allow-reflection, so nested mirror bucket takes its
   surface-only branch. Numeric bucket flags alone do not prove which material family produced every
   list; full packet-producer/ghost-family classification is not established here. Other
   callbacks/waits retain original instructions; inferred local types are not recovered structure
   definitions. */

void __thiscall
SceneRenderer_DrawOrderedSceneBuckets(void *this,uint *param_1,int param_2,char param_3)

{
  int *piVar1;
  void *pvVar2;
  undefined4 *puVar3;
  char cStack_43b;
  char local_43a;
  char cStack_439;
  void *pvStack_438;
  char cStack_431;
  undefined1 local_430 [1068];
  
  local_43a = param_2 == *(int *)((int)this + 0x10);
  *param_1 = -(uint)(*(char *)((int)this + 0x262) != '\0') & (uint)local_430;
  FUN_006e14e0(DAT_011d2530,param_1[3]);
  FUN_006ea7e0(param_2,param_1[3]);
  FUN_0068ddd0(local_430,(void *)param_1[2]);
  FUN_0060f2a0(DAT_011cfcc8);
  if ((local_43a != '\0') && (*(int **)((int)this + 0x2d4) != (int *)0x0)) {
    (**(code **)(**(int **)((int)this + 0x2d4) + 0x14))(5);
  }
  param_1[1] = 1;
  FUN_006e8dc0((int)this);
  FUN_006e8e60((int)this);
  SceneRenderer_ApplyDrawContextRasterDefaults(this,(int)param_1);
  FUN_006ed0c0((int)this);
  cStack_439 = '\0';
  FUN_006ee470(this,param_2,*(undefined4 **)(param_2 + 0x110),
               *(int *)(param_2 + 0x114) - (int)*(undefined4 **)(param_2 + 0x110) >> 3,(int)param_1,
               &cStack_439);
  if ((local_43a != '\0') && (*(int **)((int)this + 0x2d4) != (int *)0x0)) {
    (**(code **)(**(int **)((int)this + 0x2d4) + 0x14))(6);
  }
  piVar1 = (int *)FloraRenderer_GetService();
  if (piVar1 != (int *)0x0) {
    param_1[1] = 0x10;
    (**(code **)(*piVar1 + 8))(param_2 + 0x120,param_1);
  }
  if ((local_43a != '\0') && (*(int **)((int)this + 0x2d4) != (int *)0x0)) {
    (**(code **)(**(int **)((int)this + 0x2d4) + 0x14))(7);
  }
  param_1[1] = 0x20;
  SceneRenderer_DrawPlanarMirrorBucket(this,(int *)(param_2 + 0x170),param_1,param_2,param_3);
  FUN_006ea200();
  cStack_43b = *(int *)(DAT_011d853c + 0x40) == 0;
  cStack_439 = (char)param_1[4];
  *(bool *)(param_1 + 4) = cStack_439 == '\0';
  if ((bool)cStack_43b) {
    if (DAT_0115c17c < 2) {
      ShaderParameterRegistry_SetTexturePayload
                (DAT_011d8530,*(uint *)((int)DAT_011d2530 + 0x90),*(int *)((int)DAT_011d2530 + 300))
      ;
    }
    else {
      if ((local_43a != '\0') && (*(int **)((int)this + 0x2d4) != (int *)0x0)) {
        (**(code **)(**(int **)((int)this + 0x2d4) + 0x14))(9);
      }
      param_1[1] = 0x10000;
      FUN_006e8dc0((int)this);
      SceneRenderer_ApplyDrawContextRasterDefaults(this,(int)param_1);
      cStack_431 = '\0';
      FUN_006ee470(this,param_2,*(undefined4 **)(param_2 + 0x1c0),
                   *(int *)(param_2 + 0x1c4) - (int)*(undefined4 **)(param_2 + 0x1c0) >> 3,
                   (int)param_1,&cStack_431);
    }
  }
  if ((local_43a != '\0') && (*(int **)((int)this + 0x2d4) != (int *)0x0)) {
    (**(code **)(**(int **)((int)this + 0x2d4) + 0x14))(0xb);
  }
  param_1[1] = 0x20000;
  FUN_006e8dc0((int)this);
  if (cStack_43b != '\0') {
    *(char *)(param_1 + 4) = cStack_439;
  }
  SceneRenderer_ApplyDrawContextRasterDefaults(this,(int)param_1);
  FUN_006ef0f0(this,param_2,(undefined4 *)(param_2 + 0x1a0),(int)param_1);
  *(char *)(param_1 + 4) = cStack_439;
  if ((local_43a != '\0') && (*(char *)((int)this + 0x291) != '\0')) {
    pvVar2 = (void *)FUN_00617780();
    puVar3 = SurfaceRegistry_FindValueByTag(pvVar2,0xf56a02a0);
    RenderCopy_TransferRectangleByUnsignedDivisor(puVar3);
    if (DAT_011d2bb0 != '\0') {
      pvVar2 = (void *)FUN_00617780();
      SurfaceRegistry_FindValueByTag(pvVar2,0xf56a02a0);
    }
  }
  if (*(char *)((int)this + 0x28f) != '\0') {
    Job_WaitUntilTerminal(*(void **)((int)this + 0x31c));
  }
  if ((local_43a != '\0') && (*(int **)((int)this + 0x2d4) != (int *)0x0)) {
    (**(code **)(**(int **)((int)this + 0x2d4) + 0x14))(10);
  }
  param_1[1] = 0x40000;
  FUN_006e8dc0((int)this);
  SceneRenderer_ApplyDrawContextRasterDefaults(this,(int)param_1);
  pvStack_438 = (void *)Graphics_GetManagerSingleton();
  RenderDevice_SetAlphaBlendByte(pvStack_438,1);
  RenderDevice_SetBlendFactorTableEntries(pvStack_438,4,5);
  FUN_0060fda0(pvStack_438,7);
  RenderDevice_SetDepthWriteByte(pvStack_438,0);
  cStack_43b = '\0';
  FUN_006ee470(this,param_2,*(undefined4 **)(param_2 + 0x1b0),
               *(int *)(param_2 + 0x1b4) - (int)*(undefined4 **)(param_2 + 0x1b0) >> 3,(int)param_1,
               &cStack_43b);
  if ((local_43a != '\0') && (*(int **)((int)this + 0x2d4) != (int *)0x0)) {
    (**(code **)(**(int **)((int)this + 0x2d4) + 0x14))(8);
  }
  param_1[1] = 0x400;
  FUN_006e8dc0((int)this);
  FUN_006e8e60((int)this);
  FUN_006ed0c0((int)this);
  SceneRenderer_ApplyDrawContextRasterDefaults(this,(int)param_1);
  cStack_43b = '\0';
  FUN_006ee470(this,param_2,*(undefined4 **)(param_2 + 400),
               *(int *)(param_2 + 0x194) - (int)*(undefined4 **)(param_2 + 400) >> 3,(int)param_1,
               &cStack_43b);
  if ((uint *)param_1[8] != (uint *)0x0) {
    FUN_006fa900((uint *)param_1[8]);
  }
  if ((local_43a != '\0') && (*(int **)((int)this + 0x2d4) != (int *)0x0)) {
    (**(code **)(**(int **)((int)this + 0x2d4) + 0x14))(0xd);
  }
  param_1[1] = 0x200;
  FUN_006e8fd0((int)this);
  cStack_43b = '\0';
  FUN_006ee470(this,param_2,*(undefined4 **)(param_2 + 0x180),
               *(int *)(param_2 + 0x184) - (int)*(undefined4 **)(param_2 + 0x180) >> 3,(int)param_1,
               &cStack_43b);
  if ((local_43a != '\0') && (*(int **)((int)this + 0x2d4) != (int *)0x0)) {
    (**(code **)(**(int **)((int)this + 0x2d4) + 0x14))(0xe);
  }
  piVar1 = (int *)FloraRenderer_GetService();
  if (piVar1 != (int *)0x0) {
    param_1[1] = 0x2000;
    (**(code **)(*piVar1 + 8))(param_2 + 0x130,param_1);
  }
  if ((local_43a != '\0') && (*(int **)((int)this + 0x2d4) != (int *)0x0)) {
    (**(code **)(**(int **)((int)this + 0x2d4) + 0x14))(0xf);
  }
  param_1[1] = 0x1000;
  FUN_006e8dc0((int)this);
  FUN_006e8e60((int)this);
  FUN_006ed0c0((int)this);
  SceneRenderer_ApplyDrawContextRasterDefaults(this,(int)param_1);
  cStack_43b = '\0';
  FUN_006ee470(this,param_2,*(undefined4 **)(param_2 + 0x1d0),
               *(int *)(param_2 + 0x1d4) - (int)*(undefined4 **)(param_2 + 0x1d0) >> 3,(int)param_1,
               &cStack_43b);
  if ((local_43a != '\0') && (*(int **)((int)this + 0x2d4) != (int *)0x0)) {
    (**(code **)(**(int **)((int)this + 0x2d4) + 0x14))(0x10);
  }
  param_1[1] = 0x800;
  FUN_006e8fd0((int)this);
  cStack_43b = '\0';
  FUN_006ee470(this,param_2,*(undefined4 **)(param_2 + 0x1e0),
               *(int *)(param_2 + 0x1e4) - (int)*(undefined4 **)(param_2 + 0x1e0) >> 3,(int)param_1,
               &cStack_43b);
  if ((local_43a != '\0') && (*(int **)((int)this + 0x2d4) != (int *)0x0)) {
    (**(code **)(**(int **)((int)this + 0x2d4) + 0x14))(0x11);
  }
  param_1[1] = 4;
  pvStack_438 = (void *)Graphics_GetManagerSingleton();
  RenderDevice_SetAlphaBlendByte(pvStack_438,1);
  RenderDevice_SetBlendFactorTableEntries(pvStack_438,4,5);
  FUN_0060fda0(pvStack_438,7);
  RenderDevice_SetDepthWriteByte(pvStack_438,0);
  cStack_43b = '\0';
  FUN_006ee470(this,param_2,*(undefined4 **)(param_2 + 0x140),
               *(int *)(param_2 + 0x144) - (int)*(undefined4 **)(param_2 + 0x140) >> 3,(int)param_1,
               &cStack_43b);
  if ((local_43a != '\0') && (*(int **)((int)this + 0x2d4) != (int *)0x0)) {
    (**(code **)(**(int **)((int)this + 0x2d4) + 0x14))(0x12);
  }
  param_1[1] = 0x4000;
  pvStack_438 = (void *)Graphics_GetManagerSingleton();
  RenderDevice_SetAlphaBlendByte(pvStack_438,1);
  RenderDevice_SetBlendFactorTableEntries(pvStack_438,4,5);
  FUN_0060fda0(pvStack_438,7);
  RenderDevice_SetDepthWriteByte(pvStack_438,0);
  RenderDevice_SetDepthEnabled(pvStack_438,'\x01');
  cStack_43b = '\0';
  FUN_006ee470(this,param_2,*(undefined4 **)(param_2 + 0x1f0),
               *(int *)(param_2 + 500) - (int)*(undefined4 **)(param_2 + 0x1f0) >> 3,(int)param_1,
               &cStack_43b);
  FUN_00610330(DAT_011cfcc8);
  return;
}

