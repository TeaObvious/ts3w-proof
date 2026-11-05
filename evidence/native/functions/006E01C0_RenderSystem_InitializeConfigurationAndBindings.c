/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX render owner, no stack arguments.
   RenderShadowsEnabled(defaulttrue)->byte+178; DisablePerPixelFog(default0) nonzero->byte+F1.
   Complete initializer also owns resource/binding/listener setup. Registers this with graphics
   notification list via610BB0, plus two owned children. Its primary callback slots
   use6E1DE0/6E2E60; these release/rebuild targets, not rerun this configuration initializer. Scope
   of these named fields is verified from physical writes; unrelated initializer children remain
   unexpanded. */

bool __fastcall RenderSystem_InitializeConfigurationAndBindings(int *param_1)

{
  void *this;
  undefined1 uVar1;
  bool bVar2;
  int iVar3;
  undefined4 *puVar4;
  int *piVar5;
  undefined4 uVar6;
  void *pvVar7;
  
  uVar1 = FUN_0058ae30((short *)PTR_u_Config_01150ab0,L"RenderShadowsEnabled",1);
  *(undefined1 *)(param_1 + 0x5e) = uVar1;
  uVar1 = FUN_0058ae30((short *)PTR_u_Config_01150ab0,L"HighRezTranslucency",0);
  *(undefined1 *)(param_1 + 0x3c) = uVar1;
  iVar3 = FUN_0058af00((short *)PTR_u_Config_01150ab0,L"WaterReflectionDetail",0);
  *(bool *)((int)param_1 + 0x179) = 0 < iVar3;
  uVar1 = FUN_0058ae30((short *)PTR_u_Config_01150ab0,L"RenderForceMinspecShaders",0);
  *(undefined1 *)((int)param_1 + 0x17a) = uVar1;
  iVar3 = FUN_0058af00((short *)PTR_u_Config_01150ab0,L"DisablePerPixelFog",0);
  *(char *)((int)param_1 + 0x17b) = (char)param_1[0x5e];
  *(bool *)((int)param_1 + 0xf1) = iVar3 != 0;
  bVar2 = FlagWord_TestAnyMask(&DAT_011cede0,0x8000);
  *(bool *)(param_1 + 0x5f) = bVar2;
  iVar3 = FUN_0058af00((short *)PTR_u_Config_01150ab0,L"DisallowL16RTT",0);
  this = DAT_011d853c;
  pvVar7 = DAT_011d8530;
  if (iVar3 != 0) {
    DAT_0115a03c = 0x51;
  }
  puVar4 = (undefined4 *)FUN_004e4520(0x24,4,0,"Renderer/RenderSystem/ShadowMeshVF",0);
  if (puVar4 == (undefined4 *)0x0) {
    piVar5 = (int *)0x0;
  }
  else {
    piVar5 = FUN_0061a9e0(puVar4);
  }
  param_1[0x3e] = (int)piVar5;
  if (piVar5 != (int *)0x0) {
    (**(code **)(*piVar5 + 4))();
    bVar2 = VertexDeclaration_CreateFromElements
                      ((void *)param_1[0x3e],(NativeVertexElement8 *)&DAT_00ff8740,1);
    if (bVar2) {
      puVar4 = (undefined4 *)FUN_004e4520(0x50,4,0,"Renderer/RenderSystem/ShadowMeshPool",0);
      if (puVar4 == (undefined4 *)0x0) {
        puVar4 = (undefined4 *)0x0;
      }
      else {
        puVar4 = FUN_006cff00(puVar4);
      }
      param_1[0x3d] = (int)puVar4;
      if (puVar4 != (undefined4 *)0x0) {
        uVar6 = FUN_006cf6d0(puVar4,(int *)param_1[0x3e],0x10000,0x40000);
        if ((char)uVar6 != '\0') {
          puVar4 = (undefined4 *)FUN_004e4520(0x24,4,0,"Renderer/RenderSystem/DropShadowMeshVF",0);
          if (puVar4 == (undefined4 *)0x0) {
            piVar5 = (int *)0x0;
          }
          else {
            piVar5 = FUN_0061a9e0(puVar4);
          }
          param_1[0x40] = (int)piVar5;
          if (piVar5 != (int *)0x0) {
            (**(code **)(*piVar5 + 4))();
            bVar2 = VertexDeclaration_CreateFromElements
                              ((void *)param_1[0x40],(NativeVertexElement8 *)&DAT_00ff8748,2);
            if (bVar2) {
              puVar4 = (undefined4 *)
                       FUN_004e4520(0x50,4,0,"Renderer/RenderSystem/DropShadowMeshPool",0);
              if (puVar4 == (undefined4 *)0x0) {
                puVar4 = (undefined4 *)0x0;
              }
              else {
                puVar4 = FUN_006cff00(puVar4);
              }
              param_1[0x3f] = (int)puVar4;
              if (puVar4 != (undefined4 *)0x0) {
                uVar6 = FUN_006cf6d0(puVar4,(int *)param_1[0x40],0x4000,0x10000);
                if ((char)uVar6 != '\0') {
                  puVar4 = (undefined4 *)FUN_004e4520(0x20,4,0,"Renderer/RenderSystem/InstanceVB",0)
                  ;
                  if (puVar4 == (undefined4 *)0x0) {
                    piVar5 = (int *)0x0;
                  }
                  else {
                    piVar5 = FUN_0061aa60(puVar4);
                  }
                  param_1[0x41] = (int)piVar5;
                  if (piVar5 != (int *)0x0) {
                    (**(code **)(*piVar5 + 4))();
                    uVar6 = FUN_0061a8a0((void *)param_1[0x41],0x10000,1);
                    if ((char)uVar6 != '\0') {
                      puVar4 = (undefined4 *)
                               FUN_004e4520(0x24,4,0,"Renderer/RenderSystem/ColorVF",0);
                      if (puVar4 == (undefined4 *)0x0) {
                        piVar5 = (int *)0x0;
                      }
                      else {
                        piVar5 = FUN_0061a9e0(puVar4);
                      }
                      param_1[0x44] = (int)piVar5;
                      if (piVar5 != (int *)0x0) {
                        (**(code **)(*piVar5 + 4))();
                        puVar4 = (undefined4 *)
                                 FUN_004e4520(0x24,4,0,"Renderer/RenderSystem/ColorVF",0);
                        if (puVar4 == (undefined4 *)0x0) {
                          piVar5 = (int *)0x0;
                        }
                        else {
                          piVar5 = FUN_0061a9e0(puVar4);
                        }
                        param_1[0x45] = (int)piVar5;
                        if (piVar5 != (int *)0x0) {
                          (**(code **)(*piVar5 + 4))();
                          puVar4 = (undefined4 *)
                                   FUN_004e4520(0x24,4,0,"Renderer/RenderSystem/ColorVF",0);
                          if (puVar4 == (undefined4 *)0x0) {
                            piVar5 = (int *)0x0;
                          }
                          else {
                            piVar5 = FUN_0061a9e0(puVar4);
                          }
                          param_1[0x46] = (int)piVar5;
                          if (piVar5 != (int *)0x0) {
                            (**(code **)(*piVar5 + 4))();
                            bVar2 = VertexDeclaration_CreateFromElements
                                              ((void *)param_1[0x44],
                                               (NativeVertexElement8 *)&DAT_00ff8708,2);
                            if (bVar2) {
                              bVar2 = VertexDeclaration_CreateFromElements
                                                ((void *)param_1[0x45],
                                                 (NativeVertexElement8 *)&DAT_00ff8718,2);
                              if (bVar2) {
                                bVar2 = VertexDeclaration_CreateFromElements
                                                  ((void *)param_1[0x46],
                                                   (NativeVertexElement8 *)&DAT_00ff8728,3);
                                if (bVar2) {
                                  iVar3 = ShaderLibrary_FindByName(this,"simple",1,'\x01');
                                  param_1[0x49] = iVar3;
                                  iVar3 = ShaderLibrary_FindByName(this,"simple",2,'\x01');
                                  param_1[0x47] = iVar3;
                                  iVar3 = ShaderLibrary_FindByName(this,"simple",6,'\x01');
                                  param_1[0x48] = iVar3;
                                  iVar3 = ShaderLibrary_FindByName(this,"simple",3,'\x01');
                                  param_1[0x4a] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0x47f8c49a,1,6);
                                  param_1[5] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0x76b9af5e,1,5);
                                  param_1[6] = iVar3;
                                  iVar3 = ShaderParameterRegistry_RegisterNamedRow
                                                    (pvVar7,"ScratchTextureDimensions",1,2);
                                  param_1[7] = iVar3;
                                  iVar3 = ShaderParameterRegistry_RegisterNamedRow
                                                    (pvVar7,"CASLightMapDimensions",1,2);
                                  param_1[0x31] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0x1d572a8c,1,6);
                                  param_1[0x17] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0xe31abd80,1,5);
                                  param_1[0x18] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0x4a5754db,1,6);
                                  param_1[0x19] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0x500bb461,1,5);
                                  param_1[0x1a] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0xc701a3c6,1,5);
                                  param_1[0x2f] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0xf4417a1d,1,5);
                                  param_1[0x30] = iVar3;
                                  bVar2 = FUN_006e9340();
                                  if (bVar2) {
                                    iVar3 = FUN_0079a500(pvVar7,0x1ecc7560,1,6);
                                    param_1[0x23] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0x6ae4f0a4,1,5);
                                    param_1[0x24] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0x36b247bf,1,6);
                                    param_1[0x25] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0x518abad1,1,5);
                                    param_1[0x27] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0x36b247be,1,6);
                                    param_1[0x26] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0x518abad0,1,5);
                                    param_1[0x28] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0xf01f07b1,1,6);
                                    param_1[0x29] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0x8115605e,1,6);
                                    param_1[0x2a] = iVar3;
                                  }
                                  else {
                                    iVar3 = FUN_0079a500(pvVar7,0xfc35dc7f,1,6);
                                    param_1[0x1b] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0x50bb1991,1,5);
                                    param_1[0x1d] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0x7eeec98a,1,6);
                                    param_1[0x1f] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0x32cbf8e6,1,5);
                                    param_1[0x21] = iVar3;
                                  }
                                  iVar3 = FUN_0079a500(pvVar7,0x277cba26,1,2);
                                  param_1[0x2b] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0x679d9d4d,1,6);
                                  param_1[8] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0x75bd7813,1,5);
                                  param_1[9] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0xb451ee7e,1,6);
                                  param_1[10] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0xbc0c28f2,1,5);
                                  param_1[0xb] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0xd54b783,1,6);
                                  param_1[0xc] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0xd54ac6f,1,6);
                                  param_1[0xd] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0xd536718,1,5);
                                  param_1[0xe] = iVar3;
                                  if ((char)param_1[0x5f] != '\0') {
                                    iVar3 = FUN_0079a500(pvVar7,0x29941e13,1,6);
                                    param_1[0xf] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0x5e732bf9,1,5);
                                    param_1[0x10] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0x6a5f2524,1,6);
                                    param_1[0x11] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0x19f5c6b8,1,5);
                                    param_1[0x12] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0xf3676b3c,1,6);
                                    param_1[0x13] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0x2bd64910,1,5);
                                    param_1[0x14] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0x114efdbe,1,6);
                                    param_1[0x15] = iVar3;
                                    iVar3 = FUN_0079a500(pvVar7,0x6ee31d32,1,5);
                                    param_1[0x16] = iVar3;
                                  }
                                  iVar3 = FUN_0079a500(pvVar7,0xf56a02a0,1,5);
                                  param_1[0x2c] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0xcf5c8f42,1,6);
                                  param_1[0x2d] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0x7440b7a6,1,5);
                                  param_1[0x2e] = iVar3;
                                  iVar3 = FUN_0079a500(pvVar7,0x633e72e2,1,5);
                                  param_1[0x32] = iVar3;
                                  iVar3 = ShaderParameterRegistry_RegisterNamedRow
                                                    (pvVar7,"WorldSpaceCameraPosition",1,2);
                                  param_1[0x33] = iVar3;
                                  iVar3 = ShaderParameterRegistry_RegisterNamedRow
                                                    (pvVar7,"LocalToClipSpaceMatrix",4,2);
                                  param_1[0x36] = iVar3;
                                  iVar3 = ShaderParameterRegistry_RegisterNamedRow
                                                    (pvVar7,"WorldToClipSpaceMatrix",4,2);
                                  param_1[0x34] = iVar3;
                                  iVar3 = ShaderParameterRegistry_RegisterNamedRow
                                                    (pvVar7,"ViewToClipSpaceMatrix",4,2);
                                  param_1[0x35] = iVar3;
                                  iVar3 = ShaderParameterRegistry_RegisterNamedRow
                                                    (pvVar7,"ClipToWorldSpaceMatrix",4,2);
                                  param_1[0x37] = iVar3;
                                  iVar3 = ShaderParameterRegistry_RegisterNamedRow
                                                    (pvVar7,"WorldToViewSpaceMatrix",4,2);
                                  param_1[0x38] = iVar3;
                                  iVar3 = ShaderParameterRegistry_RegisterNamedRow
                                                    (pvVar7,"ViewToWorldSpaceMatrix",4,2);
                                  param_1[0x39] = iVar3;
                                  iVar3 = ShaderParameterRegistry_RegisterNamedRow
                                                    (pvVar7,"ObjectToWorldSpaceMatrix",4,2);
                                  param_1[0x3a] = iVar3;
                                  iVar3 = ShaderParameterRegistry_RegisterNamedRow
                                                    (pvVar7,"ObjectToClipSpaceMatrix",4,2);
                                  param_1[0x3b] = iVar3;
                                  iVar3 = FUN_004e4500(0x50,"Renderer/MaterialShaderBindingCache",0)
                                  ;
                                  if (iVar3 == 0) {
                                    iVar3 = 0;
                                  }
                                  else {
                                    iVar3 = FUN_006cbf90(iVar3);
                                  }
                                  FUN_006cbae0(iVar3);
                                  puVar4 = (undefined4 *)
                                           FUN_004e4500(0x11a8,"Renderer/SceneObjectManager",0);
                                  if (puVar4 == (undefined4 *)0x0) {
                                    puVar4 = (undefined4 *)0x0;
                                  }
                                  else {
                                    puVar4 = FUN_00703500(puVar4);
                                  }
                                  FUN_006fdbf0(puVar4);
                                  puVar4 = (undefined4 *)
                                           FUN_004e4500(0x2c,"Renderer/LightObjectManager",0);
                                  if (puVar4 == (undefined4 *)0x0) {
                                    puVar4 = (undefined4 *)0x0;
                                  }
                                  else {
                                    puVar4 = FUN_006b1c20(puVar4);
                                  }
                                  FUN_006b0790(puVar4);
                                  puVar4 = (undefined4 *)
                                           FUN_004e4500(4,"Renderer/ProximityFadeManager",0);
                                  if (puVar4 == (undefined4 *)0x0) {
                                    puVar4 = (undefined4 *)0x0;
                                  }
                                  else {
                                    puVar4 = FUN_006de6e0(puVar4);
                                  }
                                  FUN_006de1a0(puVar4);
                                  pvVar7 = (void *)Graphics_GetManagerSingleton();
                                  Graphics_RegisterResetOwner(pvVar7,(int)param_1);
                                  *(undefined1 *)((int)param_1 + 0x17d) = 1;
                                  Graphics_RegisterResetOwner(pvVar7,param_1[0x3f]);
                                  Graphics_RegisterResetOwner(pvVar7,param_1[0x3d]);
                                  (**(code **)(*param_1 + 4))();
                                  piVar5 = (int *)MessageDispatch_GetCurrent();
                                  (**(code **)(*piVar5 + 0x24))(param_1 + 3,0xfc6aa1fe,0,0);
                                  FUN_006939b0((int)(param_1 + 0x93));
                                  return true;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  return false;
}

