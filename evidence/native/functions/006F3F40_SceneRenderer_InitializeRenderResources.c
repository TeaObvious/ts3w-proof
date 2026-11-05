/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 scene-render resource initialization. Physical ECX receiver, no stack arguments,
   RET; success writes AL1 at6F466B, cleanup failure writes AL0 at6F467A, early prerequisite failure
   returns its AL. Existing uint decompiler return type does not guarantee defined upper EAX.
   shadowmap library lookup result stored receiver+2E4; shadowmapmerged selection +2EC;
   ShadowMainMap parameter registry handle +224; PrecipitationShadowMainMap +22C. These produced
   handles are consumed separately in the shadow and precipitation pass; names are authored lookup
   strings, not analyst inventions. Full remaining initialization and cleanup retained, not claimed
   to establish all target allocation or service lifecycle. */

uint __fastcall SceneRenderer_InitializeRenderResources(void *param_1)

{
  undefined2 uVar1;
  void *this;
  bool bVar2;
  char cVar3;
  undefined3 extraout_var;
  undefined4 *puVar4;
  undefined4 uVar5;
  void *pvVar6;
  uint uVar7;
  int *piVar8;
  undefined3 extraout_var_00;
  undefined3 extraout_var_01;
  long lVar9;
  int *piVar10;
  undefined1 *puVar11;
  int iVar12;
  uint local_30;
  uint auStack_2c [5];
  int aiStack_18 [6];
  
  bVar2 = FUN_006eb4a0(param_1);
  if (!bVar2) {
    return CONCAT31(extraout_var,bVar2);
  }
  puVar4 = (undefined4 *)FUN_004e4500(0x110,"Renderer/RenderPickManager",0);
  if (puVar4 == (undefined4 *)0x0) {
    puVar4 = (undefined4 *)0x0;
  }
  else {
    puVar4 = FUN_006dee00(puVar4);
  }
  *(undefined4 **)((int)param_1 + 0x38) = puVar4;
  if (puVar4 == (undefined4 *)0x0) {
LAB_006f4672:
    uVar7 = FUN_006e9680((int)param_1);
    return uVar7 & 0xffffff00;
  }
  uVar5 = FUN_006dec00(puVar4,*(undefined4 *)((int)param_1 + 0x24),*(undefined4 *)((int)param_1 + 8)
                      );
  if ((char)uVar5 == '\0') goto LAB_006f4672;
  if (param_1 == DAT_011d2868) {
    FUN_006dec80(*(int *)((int)param_1 + 0x38));
  }
  uVar5 = ShaderLibrary_FindByName(DAT_011d853c,"shadowmap",0,'\x01');
  *(undefined4 *)((int)param_1 + 0x2e4) = uVar5;
  this = DAT_011d8530;
  pvVar6 = ShaderSystem_SelectByNameAndDeclaration
                     ("shadowmapmerged",*(void **)(*(int *)(DAT_011d2530 + 0xf4) + 0xc),(int *)0x0);
  *(void **)((int)param_1 + 0x2ec) = pvVar6;
  pvVar6 = ShaderSystem_SelectByNameAndDeclaration
                     ("dropshadow",*(void **)(DAT_011d2530 + 0x100),(int *)0x0);
  *(void **)((int)param_1 + 0x2f0) = pvVar6;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"DropShadowAtlas2",1,5);
  *(undefined4 *)((int)param_1 + 0x2f4) = uVar5;
  uVar5 = ShaderLibrary_FindByName(DAT_011d853c,"PostProcess",0,'\0');
  *(undefined4 *)((int)param_1 + 0x300) = uVar5;
  uVar5 = ShaderLibrary_FindByName(DAT_011d853c,"RainRipples",0,'\0');
  *(undefined4 *)((int)param_1 + 0x304) = uVar5;
  if (*(void **)((int)param_1 + 0x300) != (void *)0x0) {
    uVar5 = FUN_0079a920(*(void **)((int)param_1 + 0x300),"Bloom");
    *(undefined4 *)((int)param_1 + 0x53c) = uVar5;
    uVar5 = FUN_0079a920(*(void **)((int)param_1 + 0x300),"HeatShimmer");
    *(undefined4 *)((int)param_1 + 0x540) = uVar5;
    uVar5 = FUN_0079a920(*(void **)((int)param_1 + 0x300),"UnderSea");
    *(undefined4 *)((int)param_1 + 0x544) = uVar5;
  }
  uVar5 = ShaderLibrary_FindByName(DAT_011d853c,"CASLightMap",0,'\0');
  *(undefined4 *)((int)param_1 + 0x308) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"WorldToClipSpaceMatrix",4,2);
  *(undefined4 *)((int)param_1 + 0x1d0) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"ObjectToWorldSpaceMatrix",4,2);
  *(undefined4 *)((int)param_1 + 0x1d4) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"ObjectToClipSpaceMatrix",4,2);
  *(undefined4 *)((int)param_1 + 0x1d8) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"InstacedModelOffsetMatrix",4,2);
  *(undefined4 *)((int)param_1 + 0x1dc) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"DisplayToWorldSpaceMatrix",4,2);
  *(undefined4 *)((int)param_1 + 0x1e0) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"ShadowTextureData",4,2);
  *(undefined4 *)((int)param_1 + 0x1fc) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"LocalToLightSpaceMatrix",4,2);
  *(undefined4 *)((int)param_1 + 0x200) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"WorldToLightSpaceMatrix",4,2);
  *(undefined4 *)((int)param_1 + 0x204) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"WorldSpaceLightPosition",4,2);
  *(undefined4 *)((int)param_1 + 0x208) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"PrecipitationShadowTextureData",4,2);
  *(undefined4 *)((int)param_1 + 0x20c) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"LocalToPrecipitationShadowMatrix",4,2);
  *(undefined4 *)((int)param_1 + 0x210) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"WorldToPrecipitationShadowMatrix",4,2);
  *(undefined4 *)((int)param_1 + 0x214) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow
                    (this,"WorldSpacePrecipitationShadowCameraPosition",4,2);
  *(undefined4 *)((int)param_1 + 0x218) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"DoShadowLookup",1,4);
  *(undefined4 *)((int)param_1 + 0x230) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"VisualizerControl",4,2);
  *(undefined4 *)((int)param_1 + 0x3c0) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"ShadowMainMap",1,5);
  *(undefined4 *)((int)param_1 + 0x224) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"ReflectionParams",1,2);
  *(undefined4 *)((int)param_1 + 0x1e4) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"PrecipitationShadowMainMap",1,5);
  *(undefined4 *)((int)param_1 + 0x22c) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"WaterReflectionMap",1,5);
  *(undefined4 *)((int)param_1 + 0x228) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"SimBaseHeight",1,1);
  *(undefined4 *)((int)param_1 + 0x1e8) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"RainRippleUVRandomOffset",2,1);
  *(undefined4 *)((int)param_1 + 0x1ec) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"SeaMurkScale",1,1);
  *(undefined4 *)((int)param_1 + 0x234) = uVar5;
  cVar3 = FUN_006ed140((int)param_1);
  if (cVar3 == '\0') {
    uVar7 = FUN_006e9680((int)param_1);
    return uVar7 & 0xffffff00;
  }
  FUN_00408760((DWORD *)((int)param_1 + 0x238));
  puVar4 = *(undefined4 **)((int)param_1 + 0x1c0);
  if (puVar4 != (undefined4 *)0x0) {
    FUN_006b0350(puVar4);
    Memory_FreeIfNonNull(puVar4);
  }
  pvVar6 = (void *)FUN_004e4520(400,0x10,0,"Renderer/LightManager",0);
  if (pvVar6 == (void *)0x0) {
    pvVar6 = (void *)0x0;
  }
  else {
    pvVar6 = FUN_006affa0(pvVar6,param_1);
  }
  *(void **)((int)param_1 + 0x1c0) = pvVar6;
  piVar8 = (int *)((int)param_1 + 0x1c4);
  local_30 = 2;
  do {
    if ((undefined4 *)*piVar8 != (undefined4 *)0x0) {
      (*(code *)**(undefined4 **)*piVar8)(1);
      *piVar8 = 0;
    }
    piVar8 = piVar8 + 1;
    local_30 = local_30 + -1;
  } while (local_30 != 0);
  piVar8 = (int *)FUN_004e4520(0x44,4,0,"Renderer/InteriorShadowManager",0);
  if (piVar8 == (int *)0x0) {
    piVar8 = (int *)0x0;
  }
  else {
    piVar8 = FUN_00699b80(piVar8);
  }
  *(int **)((int)param_1 + 0x1c4) = piVar8;
  puVar4 = (undefined4 *)FUN_004e4520(0x30,4,0,"Renderer/InteriorShadowManager",0);
  if (puVar4 == (undefined4 *)0x0) {
    puVar4 = (undefined4 *)0x0;
  }
  else {
    puVar4 = FUN_00692c90(puVar4);
  }
  *(undefined4 **)((int)param_1 + 0x1c8) = puVar4;
  piVar8 = JobManager_GetInterface();
  if (piVar8 != (int *)0x0) {
    _vector_constructor_iterator_(aiStack_18,4,6,FUN_00566350);
    local_30 = 0;
    piVar10 = aiStack_18;
    do {
      pvVar6 = (void *)*piVar10;
      if (pvVar6 != (void *)0x0) {
        *piVar10 = 0;
        Job_ReleaseReference(pvVar6);
      }
      cVar3 = (**(code **)(*piVar8 + 0x10))(piVar10);
      iVar12 = aiStack_18[1];
      if (cVar3 == '\0') break;
      local_30 = local_30 + 1;
      piVar10 = piVar10 + 1;
    } while (local_30 < 6);
    if (aiStack_18[5] == 0) {
      uVar7 = FUN_006e9680((int)param_1);
      iVar12 = 5;
      do {
        puVar4 = (undefined4 *)((int)register0x00000010 + -4);
        register0x00000010 = (BADSPACEBASE *)((int)register0x00000010 + -4);
        if ((void *)*puVar4 != (void *)0x0) {
          uVar7 = Job_ReleaseReference((void *)*puVar4);
        }
        iVar12 = iVar12 + -1;
      } while (-1 < iVar12);
      goto LAB_006f4414;
    }
    *(int *)((int)param_1 + 0x318) = aiStack_18[2];
    *(int *)((int)param_1 + 0x31c) = aiStack_18[3];
    *(int *)((int)param_1 + 0x314) = aiStack_18[4];
    *(int *)((int)param_1 + 0x30c) = aiStack_18[0];
    *(int *)((int)param_1 + 0x310) = aiStack_18[1];
    *(int *)((int)param_1 + 800) = aiStack_18[5];
    aiStack_18[0] = 0;
    aiStack_18[1] = 0;
    aiStack_18[2] = 0;
    aiStack_18[3] = 0;
    aiStack_18[4] = 0;
    aiStack_18[5] = 0;
    *(undefined1 **)(iVar12 + 8) = &LAB_006ee9c0;
    *(void **)(iVar12 + 0xc) = param_1;
    FUN_0059b1e0(*(void **)((int)param_1 + 0x310),10);
    iVar12 = *(int *)((int)param_1 + 0x318);
    *(undefined1 **)(iVar12 + 8) = &LAB_006f3ac0;
    *(void **)(iVar12 + 0xc) = param_1;
    FUN_0059b1e0(*(void **)((int)param_1 + 0x318),10);
    iVar12 = *(int *)((int)param_1 + 0x31c);
    *(undefined1 **)(iVar12 + 8) = &LAB_006f3ae0;
    *(void **)(iVar12 + 0xc) = param_1;
    FUN_0059b1e0(*(void **)((int)param_1 + 0x31c),10);
    iVar12 = *(int *)((int)param_1 + 0x314);
    *(undefined1 **)(iVar12 + 8) = &LAB_006ed8f0;
    *(void **)(iVar12 + 0xc) = param_1;
    FUN_0059b1e0(*(void **)((int)param_1 + 0x314),10);
    iVar12 = *(int *)((int)param_1 + 800);
    *(undefined1 **)(iVar12 + 8) = &LAB_006ee9e0;
    *(void **)(iVar12 + 0xc) = param_1;
    FUN_0059b1e0(*(void **)((int)param_1 + 800),10);
    local_30 = 5;
    puVar11 = (undefined1 *)register0x00000010;
    do {
      puVar4 = (undefined4 *)(puVar11 + -4);
      puVar11 = puVar11 + -4;
      if ((void *)*puVar4 != (void *)0x0) {
        Job_ReleaseReference((void *)*puVar4);
      }
      local_30 = local_30 + -1;
    } while (-1 < (int)local_30);
  }
  piVar8 = (int *)MessageDispatch_GetCurrent();
  (**(code **)(*piVar8 + 0x24))(param_1,0xfc6aa1fe,0,0);
  bVar2 = ResourceKey_ParseWideName
                    (auStack_2c + -3,(ushort *)L"dropShadow_object_atlas",0xb2d882,0,(void *)0x0,0);
  uVar7 = CONCAT31(extraout_var_00,bVar2);
  if (bVar2) {
    pvVar6 = (void *)FUN_004e4500(0x18,"Renderer/DropShadowProxy",0);
    if (pvVar6 == (void *)0x0) {
      pvVar6 = (void *)0x0;
    }
    else {
      pvVar6 = FUN_00722fc0(pvVar6,auStack_2c + -3,0);
    }
    *(void **)((int)param_1 + 0x2f8) = pvVar6;
    bVar2 = TextureProxy_SubmitKey(pvVar6,auStack_2c + -3,1,0,0);
    uVar7 = CONCAT31(extraout_var_01,bVar2);
    if (bVar2) {
      iVar12 = FUN_00722ed0(*(int *)((int)param_1 + 0x2f8));
      if (*(uint *)((int)param_1 + 0x2f4) < *(uint *)((int)this + 8)) {
        piVar8 = (int *)(*(uint *)((int)param_1 + 0x2f4) * 0x10 + *(int *)((int)this + 4));
        *piVar8 = *piVar8 + 1;
        *(undefined2 *)(piVar8 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar8[3] = iVar12;
      }
      uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"LastFurDepthTexture",1,5);
      *(undefined4 *)((int)param_1 + 0x548) = uVar5;
      uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"ClipMultiplier",1,2);
      *(undefined4 *)((int)param_1 + 0x54c) = uVar5;
      uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"ReflectionPass",1,1);
      *(undefined4 *)((int)param_1 + 0x550) = uVar5;
      iVar12 = FUN_0058e800();
      lVar9 = 0;
      if (iVar12 != 0) {
        lVar9 = atol(*(char **)(iVar12 + 0x118));
        DAT_0115c17c = (3 < lVar9) + 1;
      }
      return CONCAT31((int3)((uint)lVar9 >> 8),1);
    }
    if (*(uint *)((int)param_1 + 0x2f4) < *(uint *)((int)this + 8)) {
      piVar8 = (int *)(*(uint *)((int)param_1 + 0x2f4) * 0x10 + *(int *)((int)this + 4));
      *piVar8 = *piVar8 + 1;
      uVar1 = *(undefined2 *)((int)this + 0x12);
      piVar8[3] = 0;
      *(undefined2 *)(piVar8 + 1) = uVar1;
      return uVar7;
    }
  }
LAB_006f4414:
  return uVar7 & 0xffffff00;
}

