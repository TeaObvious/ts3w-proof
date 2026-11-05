/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 model-resource instruction contract. thiscall
   owner,resourceView,referenceContext,swapWordFlag; RET0C, BOOL onlyAL. Unsigned size>=12, optional
   whole-DWORD swap, magic444F4C4D and version1..2FF inclusive. Allocates drawables BEFORE per-mesh
   parse, failure not transactional. Version>=200 reads mesh byteLength from word immediately before
   fixed payload; end=afterLength+byteLength, checks unsigned remaining only, then uses end[-1] or
   version>=203 end[-5] as metadata. It does NOT bound every field/state/palette to that end or
   require finalEOF. VRTF reference at mesh+8: nonzero failed resolution aborts; ONLY ref0 selects
   existing default declaration/buffer path using meshflags0800. Ordinary path retains authored
   stream offset at+18; no index candidate rebasing/minmax position remap. Base range from+14lowbyte
   primitive,+1C signed base vertex,+20 startIndex,+24 minVertex,+28 vertexCount,+2C primitiveCount.
   Version>=202 copies five raw DWORDs per state and IGNORES allocation helper BOOL; state setter
   signed upper bound alone. Version<100 creates offset-scale material with exact float4ones
   forposScale/uvScale andzeros forposOffset/uvOffset; >=100 resolves explicit trailing material
   reference. Original software-fallback IBUF upload uses byte-count register from VB input, not an
   inferred correction. Other material/palette/flag helpers and shader position meaning remain
   bounded open dependencies. Only swap flag LOWBYTE is tested. Local GStack_140 typed as
   GeometryState20 is reused stack scratch for a material dictionary; this decompiler overlay is NOT
   a claim that dictionary fields are geometry fields. Context ordinal read MOVZX16/SUB DX then
   stores16, no signed32 ordinal assertion. */

bool __thiscall
ModelLodResource_ReadDrawables
          (void *this,void *resourceView,void *referenceContext,uint swapWordFlag)

{
  void *pvVar1;
  bool bVar2;
  uint uVar3;
  int *piVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  void *pvVar7;
  uint selector;
  void **ppvVar8;
  int iVar9;
  uint *puVar10;
  uint *puVar11;
  int *piStack_188;
  int *piStack_184;
  int *piStack_180;
  int *piStack_17c;
  int *piStack_178;
  int *piStack_174;
  int *piStack_170;
  uint *local_16c;
  int *piStack_168;
  int iStack_164;
  void *local_160;
  uint uStack_15c;
  int *piStack_158;
  uint *puStack_154;
  uint *puStack_150;
  uint uStack_14c;
  uint uStack_148;
  int *piStack_144;
  GeometryState20 GStack_140;
  uint uStack_120;
  uint uStack_11c;
  uint uStack_118;
  uint uStack_114;
  uint uStack_110;
  uint uStack_10c;
  uint uStack_108;
  uint uStack_104;
  NativeDrawRange24 NStack_100;
  int *piStack_e8;
  int *piStack_e4;
  char *pcStack_dc;
  int *piStack_d8;
  int aiStack_50 [2];
  int aiStack_48 [2];
  int aiStack_40 [2];
  int aiStack_38 [2];
  uint uStack_30;
  uint uStack_2c;
  uint uStack_28;
  uint uStack_24;
  uint uStack_20;
  uint uStack_1c;
  uint uStack_18;
  uint uStack_14;
  
  if (*(int *)((int)resourceView + 4) == 0) {
    puVar11 = (uint *)0x0;
  }
  else {
    puVar11 = *(uint **)(*(int *)((int)resourceView + 4) + 8);
  }
  local_16c = puVar11;
  local_160 = this;
  uStack_148 = (**(code **)(*(int *)resourceView + 0x1c))();
  if (0xb < uStack_148) {
    if ((char)swapWordFlag != '\0') {
      ResourceBytes_SwapDwordsInPlace(puVar11,uStack_148 >> 2);
    }
    if ((((*puVar11 == 0x444f4c4d) && (puVar11[1] != 0)) && (puVar11[1] < 0x300)) &&
       (bVar2 = ModelLodResource_AllocateDrawables(this,puVar11[2]), bVar2)) {
      ModelLodResource_SetContextOrdinal(this,*(short *)((int)referenceContext + 0x20) - 1);
      iStack_164 = 0x90;
      FUN_006d94c0((int *)&piStack_e8);
      pcStack_dc = "Renderer/TempUncachedResources";
      puVar10 = puVar11 + 3;
      uStack_15c = 0;
      iVar9 = 0x90;
      piVar4 = piStack_e8;
      if (puVar11[2] != 0) {
        do {
          pvVar1 = *(void **)(*(int *)((int)local_160 + 0x40) + uStack_15c * 4);
          uVar3 = 0;
          puStack_150 = (uint *)0x0;
          if (0x1ff < local_16c[1]) {
            uVar3 = *puVar10;
            puVar10 = puVar10 + 1;
            if ((uStack_148 - (int)puVar10) + (int)local_16c < uVar3) goto LAB_006da88c;
            puStack_150 = (uint *)(uVar3 + (int)puVar10);
            if (local_16c[1] < 0x203) {
              uVar3 = puStack_150[-1];
            }
            else {
              uVar3 = puStack_150[-5];
            }
          }
          FUN_0068f220(pvVar1,uVar3);
          uVar3 = puVar10[5];
          puStack_154 = puVar10;
          piStack_174 = RcolContext_ResolveOneBasedBlock(referenceContext,puVar10[2]);
          if (piStack_174 == (int *)0x0) {
            if (puVar10[2] != 0) goto LAB_006da88c;
            piStack_170 = RcolContext_ResolveOneBasedBlock(referenceContext,puVar10[3]);
            piStack_174 = RcolContext_ResolveOneBasedBlock(referenceContext,puVar10[4]);
            if (piStack_170[9] == 0) {
              piStack_188 = piStack_170;
              FUN_006d9ed0(&piStack_e8,aiStack_40,(uint *)&piStack_188);
            }
            if (piStack_174[9] == 0) {
              piStack_188 = piStack_174;
              FUN_006d9ed0(&piStack_e8,aiStack_48,(uint *)&piStack_188);
            }
            if ((uVar3 >> 8 & 8) == 0) {
              piStack_184 = *(int **)(DAT_011d2530 + 0xf8);
              piStack_188 = *(int **)(DAT_011d2530 + 0xf4);
            }
            else {
              piStack_184 = *(int **)(DAT_011d2530 + 0x100);
              piStack_188 = *(int **)(DAT_011d2530 + 0xfc);
            }
            piStack_178 = *(int **)piStack_184[8];
            piVar4 = FUN_006cfe30(piStack_188,(void *)piStack_170[10],
                                  (uint)piStack_170[0xb] / (uint)piStack_178,(void *)piStack_174[10]
                                  ,(uint)piStack_174[0xb] >> 1,piStack_170[0xb],piStack_174[0xb]);
            if (piVar4 != (int *)0x0) {
              FUN_0068fc20(pvVar1,piStack_188,piVar4);
              goto LAB_006da35e;
            }
            puVar5 = (undefined4 *)
                     FUN_004e4500(0x20,"Renderer/ModelFactory/SWVertexBufferFallback",0);
            if (puVar5 == (undefined4 *)0x0) {
              piVar4 = (int *)0x0;
            }
            else {
              piVar4 = FUN_0061aa60(puVar5);
            }
            FUN_00581900(&piStack_17c,piVar4);
            puVar5 = (undefined4 *)
                     FUN_004e4500(0x24,"Renderer/ModelFactory/SWIndexBufferFallback",0);
            if (puVar5 == (undefined4 *)0x0) {
              piVar4 = (int *)0x0;
            }
            else {
              piVar4 = FUN_006176a0(puVar5);
            }
            FUN_00581900(&piStack_180,piVar4);
            if (piStack_17c == (int *)0x0) {
              if (piStack_180 != (int *)0x0) {
                (**(code **)(*piStack_180 + 8))();
              }
LAB_006da8c3:
              if (piStack_17c == (int *)0x0) goto LAB_006da88c;
            }
            else {
              if (piStack_180 == (int *)0x0) goto LAB_006da8c3;
              piStack_188 = (int *)piStack_170[0xb];
              piStack_178 = (int *)piStack_174[0xb];
              bVar2 = FUN_0061a8a0(piStack_17c,(uint)piStack_188,0,"ModelFactory");
              if (((bVar2) &&
                  (uVar6 = FUN_0061a920(piStack_17c,piStack_170[10],(uint)piStack_188),
                  (char)uVar6 != '\0')) &&
                 ((uVar6 = FUN_006175b0(piStack_180,(uint)piStack_178 >> 1,0,0), (char)uVar6 != '\0'
                  && (uVar6 = FUN_00617610(piStack_180,piStack_174[10],(size_t)piStack_188),
                     (char)uVar6 != '\0')))) {
                RenderObject_SetVertexDeclaration(pvVar1,piStack_184);
                RenderObject_SetVertexStream(pvVar1,0,piStack_17c,0);
                RenderObject_SetIndexBuffer(pvVar1,piStack_180);
                (**(code **)(*piStack_180 + 8))();
                (**(code **)(*piStack_17c + 8))();
                goto LAB_006da35e;
              }
              (**(code **)(*piStack_180 + 8))();
            }
            (**(code **)(*piStack_17c + 8))();
LAB_006da88c:
            if (piStack_e8 == (int *)0x0) {
              return false;
            }
            if (piStack_e8 == piStack_d8) {
              return false;
            }
            Memory_FreeIfNonNull(piStack_e8);
            return false;
          }
          piStack_188 = RcolContext_ResolveOneBasedBlock(referenceContext,puVar10[3]);
          piStack_184 = RcolContext_ResolveOneBasedBlock(referenceContext,puVar10[4]);
          if (piStack_188[9] == 0) {
            piStack_178 = piStack_188;
            FUN_006d9ed0(&piStack_e8,aiStack_50,(uint *)&piStack_178);
          }
          if (piStack_184[9] == 0) {
            piStack_178 = piStack_184;
            FUN_006d9ed0(&piStack_e8,aiStack_38,(uint *)&piStack_178);
          }
          RenderObject_SetVertexDeclaration(pvVar1,(void *)piStack_174[10]);
          RenderObject_SetVertexStream(pvVar1,0,piStack_188 + 10,puVar10[6]);
          RenderObject_SetIndexBuffer(pvVar1,piStack_184 + 10);
LAB_006da35e:
          piStack_188 = RcolContext_ResolveOneBasedBlock(referenceContext,puVar10[1]);
          piStack_168 = (int *)0x0;
          if (piStack_188 != (int *)0x0) {
            pvVar7 = (void *)(**(code **)(*piStack_188 + 0xc))(0x202f7d5);
            if (pvVar7 == (void *)0x0) {
              selector = *(int *)((int)referenceContext + 0x20) - 1;
              ppvVar8 = (void **)FUN_0074efa0((int *)&piStack_168);
              bVar2 = MaterialDef_AcquireMaterial(piStack_188,ppvVar8,selector);
              if (bVar2) {
                Drawable_RebindEffectiveMaterial(pvVar1,piStack_168,'\x01',(void *)0x0);
                FUN_0068fe00(pvVar1,0);
              }
            }
            else {
              Drawable_SetMaterialSetInterface(pvVar1,pvVar7);
            }
          }
          uStack_118 = puVar10[0xe];
          uStack_120 = puVar10[0xc];
          uStack_110 = puVar10[0xf];
          uStack_10c = puVar10[0x10];
          uStack_108 = puVar10[0x11];
          uStack_11c = puVar10[0xd];
          uStack_114 = uStack_120;
          uStack_104 = uStack_110;
          uStack_30 = uStack_120;
          uStack_2c = uStack_11c;
          uStack_28 = uStack_118;
          uStack_24 = uStack_120;
          uStack_20 = uStack_110;
          uStack_1c = uStack_10c;
          uStack_18 = uStack_108;
          uStack_14 = uStack_110;
          FUN_0068fdd0(pvVar1,&uStack_30);
          NStack_100.minVertexIndex = puVar10[9];
          NStack_100.primitiveCount = puVar10[0xb];
          NStack_100.primitiveType = (uint)(byte)puVar10[5];
          NStack_100.startIndex = puVar10[8];
          NStack_100.baseVertexIndex = puVar10[7];
          NStack_100.vertexCount = puVar10[10];
          RenderObject_SetBaseDrawRange(pvVar1,&NStack_100);
          FUN_0068f390(pvVar1,(byte)(uVar3 >> 8) & 1);
          FUN_00410140(pvVar1,uVar3 >> 10 & 1);
          uStack_14c = CONCAT31(uStack_14c._1_3_,(char)(uVar3 >> 9)) & 0xffffff01;
          FUN_0068f3b0(pvVar1,(char)uStack_14c);
          if ((char)uStack_14c != '\0') {
            *(undefined1 *)((int)local_160 + 0x71) = 1;
          }
          FUN_0068f3e0(pvVar1,(byte)(uVar3 >> 0xb) & 1);
          FUN_0068f310(pvVar1,(byte)(uVar3 >> 0xc) & 1);
          FUN_0068f440(pvVar1,(byte)(uVar3 >> 0xd) & 1);
          FUN_0068f470(pvVar1,(byte)(uVar3 >> 0xe) & 1);
          FUN_0068f4a0(pvVar1,(byte)(uVar3 >> 0xf) & 1);
          FUN_0068f4d0(pvVar1,(byte)(uVar3 >> 0x10) & 1);
          puVar5 = RcolContext_ResolveOneBasedBlock(referenceContext,puVar10[0x12]);
          FUN_0068f1f0(pvVar1,puVar5);
          puVar10 = puVar10 + 0x14;
          if (puStack_154[0x13] != 0) {
            if (puVar5 != (undefined4 *)0x0) {
              FUN_0070cf80(puVar5,(int)puVar10,puStack_154[0x13]);
            }
            puVar11 = puStack_154;
            FUN_0068f230(pvVar1,puVar10,puStack_154[0x13]);
            puVar10 = puVar10 + puVar11[0x13];
          }
          if (local_16c[1] < 0x100) {
            puVar5 = (undefined4 *)FUN_004e4500(0x40,"Renderer/ModelLODRes/OffsetScaleMatDef",0);
            if (puVar5 == (undefined4 *)0x0) {
              puVar5 = (undefined4 *)0x0;
            }
            else {
              puVar5 = (undefined4 *)FUN_006cb210(puVar5);
            }
            FUN_007fd370(&piStack_144,puVar5);
            FUN_00799680(&GStack_140.nameHash);
            FUN_00799ad0(&GStack_140,"posScale",&DAT_00ff7dfc,4);
            FUN_00799ad0(&GStack_140,"posOffset",&DAT_00fe9018,4);
            FUN_00799ad0(&GStack_140,"uvScale",&DAT_00ff7dfc,4);
            FUN_00799ad0(&GStack_140,"uvOffset",&DAT_00fe9018,4);
            uVar3 = FUN_00799490((int *)&GStack_140);
            piVar4 = piStack_144;
            FUN_006cb0a0(piStack_144,(void *)0x0,uVar3);
            uVar3 = *(uint *)((int)referenceContext + 0x20);
            piStack_158 = (int *)0x0;
            ppvVar8 = (void **)FUN_0074efa0((int *)&piStack_158);
            MaterialDef_AcquireMaterial(piVar4,ppvVar8,uVar3);
            RenderObject_SetOffsetScaleMaterial(pvVar1,piStack_158);
            if (piStack_158 != (int *)0x0) {
              (**(code **)(*piStack_158 + 4))();
            }
            FUN_007996b0((int *)&GStack_140);
            if (piVar4 != (int *)0x0) {
              (**(code **)(*piVar4 + 4))();
            }
          }
          else {
            if ((*puVar10 != 0) &&
               (pvVar7 = RcolContext_ResolveOneBasedBlock(referenceContext,*puVar10),
               pvVar7 != (void *)0x0)) {
              piStack_188 = (int *)0x0;
              uVar3 = FUN_006caf60();
              ppvVar8 = (void **)FUN_0074efa0((int *)&piStack_188);
              MaterialDef_AcquireMaterial(pvVar7,ppvVar8,uVar3);
              RenderObject_SetOffsetScaleMaterial(pvVar1,piStack_188);
              if (piStack_188 != (int *)0x0) {
                (**(code **)(*piStack_188 + 4))();
              }
            }
            puVar10 = puVar10 + 1;
          }
          if (0x201 < local_16c[1]) {
            piVar4 = (int *)*puVar10;
            puVar10 = puVar10 + 1;
            piStack_184 = piVar4;
            RenderObject_AllocateGeometryStates(pvVar1,(uint)piVar4);
            if (piVar4 != (int *)0x0) {
              piStack_188 = (int *)0x0;
              if (piStack_184 != (int *)0x0) {
                puVar11 = puVar10;
                do {
                  GStack_140.nameHash = *puVar11;
                  GStack_140.startIndex = puVar11[1];
                  GStack_140.minVertexIndex = puVar11[2];
                  GStack_140.vertexCount = puVar11[3];
                  GStack_140.primitiveCount = puVar11[4];
                  puVar11 = puVar11 + 5;
                  RenderObject_CopyGeometryState(pvVar1,(int)piStack_188,&GStack_140);
                  piStack_188 = (int *)((int)piStack_188 + 1);
                } while (piStack_188 < piStack_184);
              }
              puVar10 = puVar10 + (int)piStack_184 * 5;
            }
          }
          puVar11 = local_16c;
          if (0x1ff < local_16c[1]) {
            puVar10 = puVar10 + 1;
          }
          if (0x202 < local_16c[1]) {
            FUN_0068fea0(pvVar1,*puVar10,puVar10[1],puVar10[2],puVar10[3]);
            puVar10 = puVar10 + 4;
          }
          iVar9 = FUN_0068eea0((int)pvVar1);
          iStack_164 = iStack_164 + iVar9;
          if (puStack_150 != (uint *)0x0) {
            puVar10 = puStack_150;
          }
          if (piStack_168 != (int *)0x0) {
            (**(code **)(*piStack_168 + 4))();
          }
          uStack_15c = uStack_15c + 1;
          iVar9 = iStack_164;
          piVar4 = piStack_e8;
        } while (uStack_15c < puVar11[2]);
      }
      for (; pvVar1 = local_160, piVar4 != piStack_e4; piVar4 = piVar4 + 1) {
        iVar9 = iVar9 + *(int *)(*piVar4 + 0x20);
      }
      FUN_00731be0(local_160,iVar9);
      FUN_006dacd0((int)pvVar1);
      FUN_006dab20((int)pvVar1);
      if ((piStack_e8 != (int *)0x0) && (piStack_e8 != piStack_d8)) {
        Memory_FreeIfNonNull(piStack_e8);
      }
      return true;
    }
  }
  return false;
}

