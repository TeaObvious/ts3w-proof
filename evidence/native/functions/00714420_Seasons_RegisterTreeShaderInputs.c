/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Registers tree shader handles and product gates. TreeSnowParams is a
   three-component parameter stored atmanager+9C, TreeFallColor0/1+90/+94, TreeFallVariation+98.
   Seasons or EP10 enable the additional tree inputs. Resource initialization and tree renderer
   diagnostics are retained; this name is analyst-assigned, not a recovered symbol.
   
   Billboard UV/fade join: actual named-row handles: +50 CameraAzimuthPitch,+54
   CameraAzimuthTrig,+60 BillboardAzimuth,+AC BB360TexCoords(32float4),+B0
   BillboardFadeConstants,+BC BillboardLodLimits,+C0 BillboardLightingAdjust. Their original PARM
   hashes join these producers to VS9279 c0..31,c54,c58,c59,c60 and VS9277 c16,c17. These are shader
   registers, not native addresses. */

undefined4 __fastcall Seasons_RegisterTreeShaderInputs(int param_1)

{
  void *this;
  bool bVar1;
  char cVar2;
  undefined4 *puVar3;
  int *piVar4;
  undefined4 uVar5;
  PC167_SurfaceMapping PStack_38;
  
  bVar1 = FlagWord_TestAnyMask(&DAT_011cede0,0x8000);
  *(bool *)(param_1 + 0x1d8) = bVar1;
  bVar1 = FlagWord_TestAnyMask(&DAT_011cede0,0x100000);
  *(bool *)(param_1 + 0x1d9) = bVar1;
  if (*(int *)(param_1 + 8) == 0) {
    puVar3 = (undefined4 *)FUN_004e4500(0x34,"SpeedTree/WhiteTexture",0);
    if (puVar3 == (undefined4 *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = Texture_Construct(puVar3);
    }
    *(int **)(param_1 + 8) = piVar4;
    (**(code **)(*piVar4 + 4))();
    uVar5 = Texture_Create2D(*(void **)(param_1 + 8),1,1,1,0x3e,2);
    if ((char)uVar5 != '\0') {
      Surface_MapTextureLevel(*(void **)(param_1 + 8),&PStack_38,0,0);
      if (PStack_38.bits != (undefined4 *)0x0) {
        *(undefined4 *)PStack_38.bits = 0xffffffff;
        Surface_UnmapIfMapped(*(void **)(param_1 + 8),&PStack_38);
      }
    }
  }
  this = DAT_011d8530;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(DAT_011d8530,"SelfShadowMotion",2,1);
  *(undefined4 *)(param_1 + 0x4c) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"CameraAzimuthPitch",1,2);
  *(undefined4 *)(param_1 + 0x50) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"CameraAzimuthTrig",1,2);
  *(undefined4 *)(param_1 + 0x54) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"Light0ToWorldSpaceMatrix",4,2);
  *(undefined4 *)(param_1 + 0x58) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"Light0AzimuthTrig",1,2);
  *(undefined4 *)(param_1 + 0x5c) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"BillboardAzimuth",1,1);
  *(undefined4 *)(param_1 + 0x60) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"renderPickId",1,2);
  *(undefined4 *)(param_1 + 100) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"TreeShadowScale",1,1);
  *(undefined4 *)(param_1 + 0x68) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"DiffuseMap",1,5);
  *(undefined4 *)(param_1 + 0x74) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"DetailMap",1,5);
  *(undefined4 *)(param_1 + 0x78) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"NormalMap",1,5);
  *(undefined4 *)(param_1 + 0x7c) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"ShadowMap",1,5);
  *(undefined4 *)(param_1 + 0x80) = uVar5;
  if ((*(char *)(param_1 + 0x1d8) == '\0') && (*(char *)(param_1 + 0x1d9) == '\0')) {
    *(undefined4 *)(param_1 + 0x84) = 0xffffffff;
    *(undefined4 *)(param_1 + 0x88) = 0xffffffff;
    *(undefined4 *)(param_1 + 0x8c) = 0xffffffff;
    *(undefined4 *)(param_1 + 0x90) = 0xffffffff;
    *(undefined4 *)(param_1 + 0x94) = 0xffffffff;
    *(undefined4 *)(param_1 + 0x98) = 0xffffffff;
    *(undefined4 *)(param_1 + 0x9c) = 0xffffffff;
    *(undefined4 *)(param_1 + 0xa0) = 0xffffffff;
  }
  else {
    uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"TwigDiffuseMap",1,5);
    *(undefined4 *)(param_1 + 0x84) = uVar5;
    uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"TwigTransitionMap",1,5);
    *(undefined4 *)(param_1 + 0x88) = uVar5;
    uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"HasTwigTexture",1,1);
    *(undefined4 *)(param_1 + 0x8c) = uVar5;
    uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"TreeFallColor0",4,1);
    *(undefined4 *)(param_1 + 0x90) = uVar5;
    uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"TreeFallColor1",4,1);
    *(undefined4 *)(param_1 + 0x94) = uVar5;
    uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"TreeFallVariation",4,1);
                    /* Register TreeSnowParams as three components; returned shader handle is stored
                       at tree-manager+0x9C and read by the per-tree snow binder. */
    *(undefined4 *)(param_1 + 0x98) = uVar5;
    uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"TreeSnowParams",3,1);
    *(undefined4 *)(param_1 + 0x9c) = uVar5;
    uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"TreeRandomFactors",1,1);
    *(undefined4 *)(param_1 + 0xa0) = uVar5;
  }
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"LightScalars",1,2);
  *(undefined4 *)(param_1 + 0xa4) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"BillboardLightColorAndAmbientScalar",1,2);
  *(undefined4 *)(param_1 + 0xa8) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"BB360TexCoords",0x20,2);
  *(undefined4 *)(param_1 + 0xac) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"BillboardNormal",3,1);
  *(undefined4 *)(param_1 + 0xb4) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"BillboardTangent",3,1);
  *(undefined4 *)(param_1 + 0xb8) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"BillboardFadeConstants",1,2);
  *(undefined4 *)(param_1 + 0xb0) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"BillboardLodLimits",1,2);
  *(undefined4 *)(param_1 + 0xbc) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"BillboardLightingAdjust",1,2);
  *(undefined4 *)(param_1 + 0xc0) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"WorldSpaceViewCameraPosition",3,1);
  *(undefined4 *)(param_1 + 0xc4) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"WindMatrices",1,2);
  *(undefined4 *)(param_1 + 0x44) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"LeafRockRustleRotations",1,2);
  *(undefined4 *)(param_1 + 0x48) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"TreeLocations",1,2);
  *(undefined4 *)(param_1 + 0x6c) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"TerrainNormals",1,2);
  *(undefined4 *)(param_1 + 0x70) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"TreeLightDirections",1,2);
  *(undefined4 *)(param_1 + 200) = uVar5;
  uVar5 = ShaderParameterRegistry_RegisterNamedRow(this,"TreeLightColors",1,2);
  *(undefined4 *)(param_1 + 0xcc) = uVar5;
  *(undefined4 *)(param_1 + 0x24) = 0;
  *(undefined4 *)(param_1 + 0x30) = 0;
  *(undefined4 *)(param_1 + 0x34) = 0;
  *(undefined4 *)(param_1 + 0x38) = 0;
  *(undefined4 *)(param_1 + 0x3c) = 0;
  ResourceKey_ParseWideName((uint *)(param_1 + 0x158),(ushort *)L"SpeedTree.ini",0,0,(void *)0x0,0);
  ResourceKey_ParseWideName((uint *)(param_1 + 0x168),(ushort *)L"SpeedWind.ini",0,0,(void *)0x0,0);
  FUN_00713120(param_1);
  FUN_00714250(param_1);
  Flora_ReadLodDistanceAndAlphaEdgeConfig(param_1);
  piVar4 = (int *)FUN_004afe80();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x24))(1,&LAB_00714390,param_1,param_1 + 0x1d4,0);
  }
  piVar4 = (int *)MessageDispatch_GetCurrent();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x24))(param_1 + 4,0xfc6aa1fe,0,0);
  }
  cVar2 = FUN_0058ae30((short *)PTR_u_Config_01150ab0,L"RenderForceMinspecShaders",0);
  *(bool *)(param_1 + 0x15) = cVar2 == '\0';
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x18))(L"Rendering: Trees",4000);
  }
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x28))(param_1 + 0x11,L"Draw leaves");
  }
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x28))(param_1 + 0x12,L"Draw branches");
  }
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x28))(param_1 + 0x13,L"Draw fronds");
  }
  piVar4 = (int *)FUN_005a08d0();
  uVar5 = 0;
  if (piVar4 != (int *)0x0) {
    uVar5 = (**(code **)(*piVar4 + 0x18))(0,0x7fffffff);
  }
  return CONCAT31((int3)((uint)uVar5 >> 8),1);
}

