/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 original contract. ECX cluster, mode DWORD and draw-context pointer, RET8, void.
   Complete category draw owner. Ordinary context uses shader variant slot index0,1,2,3 according to
   mode/global gates; technique indices tables115C414/424/434/444 select
   leafCard/leafMesh/frond/branch. Each instance record stride80hex stores LOD alpha results
   at+50/+58/+64/+68 and fade+74. CPU target alpha is rawAlpha*binary32(1/255)+binary32(0.5/255);
   not raw0..255 alpha directly. Three-float4 TreeLocations packs target in thirdrow.y and separate
   fade/opacity in.w. LastLOD alpha-edge path overrides target to84/255 and applies complementary
   factor. Calls bound upload70D320 then category draw715F10/80/716000. Shared PASS owner
   applies/restores static/dynamic state. No FSAALevel or sample-count load in this body; unknown
   global option producers remain separate. Decompiler pointer-typed loop counters are integer batch
   ordinals and float record+5C/+54/+4C aliases include raw signed LOD indices.
   
   Billboard UV/fade join: ordinary mode0 with no flags88 chooses category0, shadow8 category2,
   pick80 category3. Final main billboard call requires template type!=2, mode0 and batch+55 or
   context byte14. Separate alpha-edge mode1 checks manager+14 RenderTreeAlphaEdges and may invoke
   category1. Actual selected capability104 billboard variants0/3/6/9 technique1 and2 have absent
   stages; existing79E7E0 rejects both-null stage pass, so this does not imply an alpha-blended
   extra color draw. Technique3 is pick, not ordinary color. Last near LOD override remains84/255
   with complementary factor; do not combine it with VS billboard distance or SDK angle fades. */

void __thiscall Flora_DrawNearCategoriesAndBillboards(void *this,int param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  float fVar4;
  float fVar5;
  char cVar6;
  bool bVar7;
  int iVar8;
  uint uVar9;
  undefined4 uVar10;
  int *piVar11;
  uint uVar12;
  undefined *puVar13;
  float *pfVar14;
  void *this_00;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  bool local_ea;
  int *local_e8;
  int *local_e4;
  int *local_e0 [6];
  int *local_c8;
  int *local_c4;
  int *local_c0;
  uint local_bc;
  int *local_b8;
  char local_b1;
  int *local_b0 [6];
  void *local_98;
  int local_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  int *local_58;
  float local_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  int local_40;
  int iStack_3c;
  int iStack_38;
  int iStack_34;
  float local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  undefined4 uStack_14;
  
  local_b8 = (int *)0x0;
  bVar7 = false;
  if ((char)param_2[1] < '\0') {
    piVar11 = (int *)((int)this + 0x380);
    local_e8 = (int *)0x0;
    local_94 = 3;
    local_b8 = piVar11;
    goto LAB_00710c69;
  }
  if ((param_2[1] & 8) != 0) {
    if (*(char *)((int)this + 0x537) != '\0') {
      return;
    }
    piVar11 = (int *)((int)this + 800);
    local_e8 = (int *)0x0;
    local_94 = 2;
    local_b8 = piVar11;
    goto LAB_00710c69;
  }
  local_e8 = (int *)((int)this + 0x2c0);
  piVar11 = (int *)((int)this + 0x260);
  if (param_1 == 0) {
    bVar7 = true;
LAB_00710c61:
    local_b8 = piVar11;
  }
  else {
    if (param_1 == 1) goto LAB_00710c61;
    if (param_1 == 2) {
      local_b8 = local_e8;
    }
  }
  local_94 = 0;
LAB_00710c69:
  if ((param_1 != 0) || (cVar6 = FUN_00710910(this,param_2,piVar11), cVar6 != '\0')) {
    if (bVar7) {
      FUN_0070ebc0((int)this);
    }
    Graphics_GetManagerSingleton();
    this_00 = DAT_011d8530;
    local_98 = DAT_011d8530;
    if ((param_1 < 1) || ((*(byte *)(param_2 + 1) & 0x88) == 0)) {
      local_b1 = *(char *)(param_2 + 5);
      if (param_1 == 1) {
        if ((((PTR_DAT_0115c488[0x10] == '\0') && (local_b1 == '\0')) &&
            (*(char *)((int)local_b8 + 0x55) != '\0')) && (PTR_DAT_0115c488[0x14] != '\0')) {
          if ((param_2[1] & 0x2000) != 0) {
            FUN_0070ea40(this,piVar11);
          }
          Flora_DrawBillboardVariants(this,(int)param_2,1);
          return;
        }
      }
      else {
        iVar8 = FUN_007cef20();
        local_30 = *(float *)(iVar8 + 0x60);
        uStack_2c = *(undefined4 *)(iVar8 + 100);
        uStack_28 = *(undefined4 *)(iVar8 + 0x68);
        uStack_24 = *(undefined4 *)(iVar8 + 0x6c);
        if (param_1 == 0) {
          bVar7 = FUN_0070d8e0(&local_30,(int)piVar11);
          if (bVar7) {
            Flora_BuildPerInstanceLodAndFade
                      (this,&local_30,piVar11,local_e8,(byte)((uint)param_2[1] >> 7) & 1,
                       *(char *)((int)param_2 + 0x12));
          }
          if ((*(byte *)(param_2 + 1) & 0x10) != 0) {
            FUN_0070ea40(this,piVar11);
          }
        }
        else if ((param_1 == 2) && (*(char *)((int)this + 0x538) != '\0')) {
          FUN_0070fcd0(piVar11,(int)local_e8,'\0');
        }
        if (PTR_DAT_0115c488[0x10] == '\0') {
          local_bc = -(uint)(*(int *)((int)this + 0x1f0) != 0) & 3;
        }
        else {
          local_bc = 2;
        }
        if (param_1 == 2) {
          local_bc = 1;
        }
        if ((*(char *)((int)local_b8 + 0x56) == '\0') || (local_b1 != '\0')) {
          iVar8 = *(int *)(*(int *)((int)this + 0x4b0) + 0x17c);
          if (iVar8 == 3) {
            return;
          }
        }
        else {
          iVar8 = param_2[3];
          local_20 = *(float *)(iVar8 + 0x60);
          fStack_1c = *(float *)(iVar8 + 100);
          fStack_18 = *(float *)(iVar8 + 0x68);
          uStack_14 = *(undefined4 *)(iVar8 + 0x6c);
          if (PTR_DAT_0115c488[0x15] != '\0') {
            uVar12 = *(uint *)(*(int *)((int)this + 0x4b4) + 0x318);
            uVar9 = 0;
            if (uVar12 != 0) {
              piVar11 = (int *)local_b8[0xc];
              do {
                if (piVar11[1] - *piVar11 >> 2 != 0) {
                  FUN_00713270(PTR_DAT_0115c488,*(float *)(*(int *)((int)this + 0x4b4) + 0x2ec),
                               *(float *)(*(int *)((int)this + 0x4b4) + 0x2f0));
                  break;
                }
                uVar9 = uVar9 + 1;
                piVar11 = piVar11 + 4;
              } while (uVar9 < uVar12);
            }
          }
          iVar8 = FUN_00722ed0(*(int *)((int)this + 0x4b0) + 0x68);
          if (*(uint *)(PTR_DAT_0115c488 + 0x74) < *(uint *)((int)this_00 + 8)) {
            piVar11 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x74) * 0x10 + *(int *)((int)this_00 + 4)
                             );
            *piVar11 = *piVar11 + 1;
            *(undefined2 *)(piVar11 + 1) = *(undefined2 *)((int)this_00 + 0x12);
            piVar11[3] = iVar8;
          }
          iVar8 = FUN_00722ed0(*(int *)((int)this + 0x4b0) + 0xb0);
          if (*(uint *)(PTR_DAT_0115c488 + 0x80) < *(uint *)((int)this_00 + 8)) {
            piVar11 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x80) * 0x10 + *(int *)((int)this_00 + 4)
                             );
            *piVar11 = *piVar11 + 1;
            *(undefined2 *)(piVar11 + 1) = *(undefined2 *)((int)this_00 + 0x12);
            piVar11[3] = iVar8;
          }
          Seasons_BindTreeSnowAndTwigInputs(this,'\0');
          puVar13 = PTR_DAT_0115c488;
          local_e4 = (int *)((uint)local_e4 & 0xffffff00);
          local_30 = 0.0;
          uStack_2c = 0;
          uStack_28 = 0;
          uStack_24 = 0;
          if ((PTR_DAT_0115c488 != (undefined *)0x0) &&
             (((PTR_DAT_0115c488[0x1dd] != '\0' &&
               ((PTR_DAT_0115c488[0x1d8] != '\0' || (PTR_DAT_0115c488[0x1d9] != '\0')))) ||
              (uVar10 = FUN_0070d130((int)PTR_DAT_0115c488), (char)uVar10 != '\0')))) {
            iVar8 = *(int *)((int)this + 0x4b0);
            local_e4 = (int *)CONCAT31(local_e4._1_3_,1);
            if (*(char *)(iVar8 + 0x170) != '\0') {
              local_30 = *(float *)(iVar8 + 0x150);
              uStack_2c = *(undefined4 *)(iVar8 + 0x154);
              uStack_28 = *(undefined4 *)(iVar8 + 0x158);
              uStack_24 = *(undefined4 *)(iVar8 + 0x15c);
            }
          }
          local_58 = *(int **)(*(int *)((int)this + 0x4b4) + 0x2f4);
          if ((*(char *)(*(int *)((int)this + 0x4b4) + 0x32c) != '\0') && (puVar13[0x11] != '\0')) {
            ShaderDefinition_SelectTechniqueOrdinal
                      (*(void **)(*(int *)((int)this + 0x4b4) + 0x2a0 + local_bc * 4),
                       *(uint *)(local_94 * 4 + 0x115c414));
            fStack_8c = *(float *)((int)this + 0x544);
            fStack_88 = *(float *)((int)this + 0x548);
            fStack_84 = *(float *)((int)this + 0x54c);
            local_90 = *(float *)((int)this + 0x55c);
            *(float *)((int)this + 0x540) = local_90;
            *(float *)((int)this + 0x544) = fStack_8c;
            *(float *)((int)this + 0x548) = fStack_88;
            *(float *)((int)this + 0x54c) = fStack_84;
            FUN_005f78c0(this_00,*(uint *)(PTR_DAT_0115c488 + 0xa4),(int)this + 0x540);
            iVar8 = *(int *)((int)this + 0x4b4);
            local_c4 = (int *)0x0;
            if (*(int *)(iVar8 + 0x318) != 0) {
              local_c0 = (int *)0x0;
              fVar17 = FLOAT_00f998f8;
              do {
                if (*(int *)(*(int *)(iVar8 + 0x40) + (int)local_c4 * 4) != 0) {
                  local_e8 = (int *)0x0;
                  bVar7 = local_c4 == (int *)(*(int *)(iVar8 + 0x318) + -1);
                  local_c8 = *(int **)(local_b8[0xc] + (int)local_c0);
                  local_e0[0] = (int *)((int *)(local_b8[0xc] + (int)local_c0))[1];
                  if (local_c8 != local_e0[0]) {
                    do {
                      piVar11 = local_e8;
                      pfVar14 = (float *)(*local_c8 * 0x80 + *(int *)((int)this + 0x210));
                      if ((int *)pfVar14[0x17] != local_c4) {
                        fVar15 = pfVar14[0x1a];
                      }
                      else {
                        fVar15 = pfVar14[0x19];
                      }
                      local_ea = (int *)pfVar14[0x17] == local_c4;
                      local_50 = *pfVar14 - local_20;
                      fStack_4c = pfVar14[1] - fStack_1c;
                      fStack_48 = pfVar14[2] - fStack_18;
                      fStack_6c = pfVar14[0x11];
                      local_70 = pfVar14[0x10];
                      fStack_8c = fVar15 * DAT_00ffc4c4 + DAT_00ffc4c8;
                      local_b0[0] = (int *)((int)local_e8 * 0x30);
                      local_b0[0][0x474c4c] = (int)local_50;
                      local_b0[0][0x474c4d] = (int)fStack_4c;
                      local_b0[0][0x474c4e] = (int)fStack_48;
                      local_b0[0][0x474c4f] = (int)fVar17;
                      fStack_64 = 0.0;
                      fStack_68 = FLOAT_00f998f0 - fStack_6c;
                      local_b0[0][0x474c50] = (int)local_70;
                      local_b0[0][0x474c51] = (int)fStack_6c;
                      local_b0[0][0x474c52] = (int)fStack_68;
                      local_b0[0][0x474c53] = 0;
                      fStack_84 = pfVar14[0x1d];
                      local_90 = pfVar14[0x12];
                      local_b0[0][0x474c54] = (int)local_90;
                      local_b0[0][0x474c55] = (int)fStack_8c;
                      local_b0[0][0x474c56] = (int)fVar17;
                      local_b0[0][0x474c57] = (int)fStack_84;
                      fStack_88 = fVar17;
                      local_54 = fStack_8c;
                      fStack_44 = fVar17;
                      if ((void *)pfVar14[0x1c] != (void *)0x0) {
                        FUN_0070d4a0((void *)pfVar14[0x1c],
                                     (undefined4 *)(&DAT_011d3400 + (int)local_e8 * 0x30),
                                     (undefined4 *)(&DAT_011d35b0 + (int)local_e8 * 0x30),
                                     (uint)(*(int *)((int)this + 0x1f0) == 0),3);
                        fVar17 = FLOAT_00f998f8;
                      }
                      if (*(char *)((int)this + 0x537) != '\0') {
                        fVar15 = pfVar14[0xd];
                        fVar18 = pfVar14[0xe];
                        fVar16 = pfVar14[0xf];
                        iVar8 = (int)piVar11 * 0x10;
                        *(float *)(&DAT_011d32e0 + iVar8) = pfVar14[0xc];
                        *(float *)(iVar8 + 0x11d32e4) = fVar15;
                        *(float *)(iVar8 + 0x11d32e8) = fVar18;
                        *(float *)(iVar8 + 0x11d32ec) = fVar16;
                        iVar8 = DAT_00ffc4cc;
                        if ((bVar7) && (local_ea)) {
                          local_40 = local_b0[0][0x474c54];
                          iStack_38 = local_b0[0][0x474c56];
                          iStack_34 = local_b0[0][0x474c57];
                          iStack_3c = DAT_00ffc4cc;
                          local_b0[0][0x474c54] = local_40;
                          local_b0[0][0x474c55] = iVar8;
                          local_b0[0][0x474c56] = iStack_38;
                          local_b0[0][0x474c57] = iStack_34;
                          local_80 = (float)local_b0[0][0x474c54];
                          fStack_7c = (float)local_b0[0][0x474c55];
                          fStack_74 = (float)local_b0[0][0x474c57];
                          fStack_78 = (fVar17 - local_54) * _DAT_0115c460;
                          local_b0[0][0x474c54] = (int)local_80;
                          local_b0[0][0x474c55] = (int)fStack_7c;
                          local_b0[0][0x474c56] = (int)fStack_78;
                          local_b0[0][0x474c57] = (int)fStack_74;
                        }
                      }
                      if ((char)local_e4 != '\0') {
                        Seasons_BuildTreeRandomFactors
                                  (pfVar14[0x1e],&local_30,
                                   (float *)(&DAT_011d3370 + (int)piVar11 * 0x10));
                        piVar11 = local_e8;
                      }
                      local_e8 = (int *)((int)piVar11 + 1);
                      if (local_58 == local_e8) {
                        Flora_BindPerInstanceShaderArrays
                                  (this,(int)local_98,(int)local_e8,(char)local_e4);
                        local_b0[0] = local_c4;
                        Flora_DrawLeafCardBatch
                                  (*(void **)((int)this + 0x4b4),(int *)local_b0,(int *)&local_e8,
                                   local_bc);
                        local_e8 = (int *)0x0;
                        fVar17 = FLOAT_00f998f8;
                      }
                      local_c8 = local_c8 + 1;
                    } while (local_c8 != local_e0[0]);
                    if (local_e8 != (int *)0x0) {
                      Flora_BindPerInstanceShaderArrays
                                (this,(int)local_98,(int)local_e8,(char)local_e4);
                      local_e0[0] = local_c4;
                      Flora_DrawLeafCardBatch
                                (*(void **)((int)this + 0x4b4),(int *)local_e0,(int *)&local_e8,
                                 local_bc);
                      fVar17 = FLOAT_00f998f8;
                    }
                    this_00 = local_98;
                  }
                }
                iVar8 = *(int *)((int)this + 0x4b4);
                local_c0 = local_c0 + 4;
                local_c4 = (int *)((int)local_c4 + 1);
              } while (local_c4 < *(int **)(iVar8 + 0x318));
            }
            puVar13 = PTR_DAT_0115c488;
          }
          if ((*(char *)(*(int *)((int)this + 0x4b4) + 0x32d) != '\0') && (puVar13[0x11] != '\0')) {
            ShaderDefinition_SelectTechniqueOrdinal
                      (*(void **)(*(int *)((int)this + 0x4b4) + 0x2a0 + local_bc * 4),
                       *(uint *)(local_94 * 4 + 0x115c424));
            fStack_7c = *(float *)((int)this + 0x544);
            fStack_78 = *(float *)((int)this + 0x548);
            fStack_74 = *(float *)((int)this + 0x54c);
            local_80 = *(float *)((int)this + 0x55c);
            *(float *)((int)this + 0x540) = local_80;
            *(float *)((int)this + 0x544) = fStack_7c;
            *(float *)((int)this + 0x548) = fStack_78;
            *(float *)((int)this + 0x54c) = fStack_74;
            if (*(uint *)(PTR_DAT_0115c488 + 0xa4) < *(uint *)((int)this_00 + 8)) {
              piVar11 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0xa4) * 0x10 +
                               *(int *)((int)this_00 + 4));
              *piVar11 = *piVar11 + 1;
              *(undefined2 *)(piVar11 + 1) = *(undefined2 *)((int)this_00 + 0x12);
              piVar11[3] = (int)this + 0x540;
            }
            iVar8 = *(int *)((int)this + 0x4b4);
            local_e8 = (int *)0x0;
            if (*(int *)(iVar8 + 0x318) != 0) {
              local_c8 = (int *)0x0;
              fVar17 = FLOAT_00f998f8;
              fVar15 = DAT_00ffc4c4;
              fVar18 = DAT_00ffc4c8;
              do {
                if (*(int *)(*(int *)(iVar8 + 0x50) + (int)local_e8 * 4) != 0) {
                  local_c4 = (int *)0x0;
                  bVar7 = local_e8 == (int *)(*(int *)(iVar8 + 0x318) + -1);
                  local_c0 = *(int **)(local_b8[0xc] + (int)local_c8);
                  local_b0[0] = (int *)((undefined4 *)(local_b8[0xc] + (int)local_c8))[1];
                  if (local_c0 != local_b0[0]) {
                    do {
                      pfVar14 = (float *)(*local_c0 * 0x80 + *(int *)((int)this + 0x210));
                      if ((int *)pfVar14[0x17] != local_e8) {
                        fVar16 = pfVar14[0x1a];
                      }
                      else {
                        fVar16 = pfVar14[0x19];
                      }
                      local_ea = (int *)pfVar14[0x17] == local_e8;
                      local_80 = *pfVar14 - local_20;
                      fStack_7c = pfVar14[1] - fStack_1c;
                      fStack_78 = pfVar14[2] - fStack_18;
                      fStack_8c = pfVar14[0x11];
                      local_90 = pfVar14[0x10];
                      local_e0[0] = (int *)((int)local_c4 * 0x30);
                      local_e0[0][0x474c4c] = (int)local_80;
                      local_e0[0][0x474c4d] = (int)fStack_7c;
                      local_e0[0][0x474c4e] = (int)fStack_78;
                      local_e0[0][0x474c4f] = (int)fVar17;
                      fStack_84 = 0.0;
                      fStack_88 = FLOAT_00f998f0 - fStack_8c;
                      local_e0[0][0x474c50] = (int)local_90;
                      local_e0[0][0x474c51] = (int)fStack_8c;
                      local_e0[0][0x474c52] = (int)fStack_88;
                      local_e0[0][0x474c53] = 0;
                      fStack_64 = pfVar14[0x1d];
                      local_70 = pfVar14[0x12];
                      fStack_6c = fVar16 * fVar15 + fVar18;
                      local_e0[0][0x474c54] = (int)local_70;
                      local_e0[0][0x474c55] = (int)fStack_6c;
                      local_e0[0][0x474c56] = (int)fVar17;
                      local_e0[0][0x474c57] = (int)fStack_64;
                      fVar16 = pfVar14[0x1c];
                      if (fVar16 != 0.0) {
                        uVar12 = (uint)(*(int *)((int)this + 0x1f0) == 0);
                        iVar8 = (int)local_c4 * 0x30;
                        puVar1 = (undefined4 *)((uVar12 + 1) * 0x10 + (int)fVar16);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d3400 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d3404) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d3408) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d340c) = uVar3;
                        puVar1 = (undefined4 *)((uVar12 + 5) * 0x10 + (int)fVar16);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d35b0 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d35b4) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d35b8) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d35bc) = uVar3;
                        puVar1 = (undefined4 *)((uVar12 + 2) * 0x10 + (int)fVar16);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d3410 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d3414) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d3418) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d341c) = uVar3;
                        puVar1 = (undefined4 *)((uVar12 + 6) * 0x10 + (int)fVar16);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d35c0 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d35c4) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d35c8) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d35cc) = uVar3;
                        puVar1 = (undefined4 *)((uVar12 + 3) * 0x10 + (int)fVar16);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d3420 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d3424) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d3428) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d342c) = uVar3;
                        puVar1 = (undefined4 *)((uVar12 + 7) * 0x10 + (int)fVar16);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d35d0 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d35d4) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d35d8) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d35dc) = uVar3;
                        this_00 = local_98;
                      }
                      if (*(char *)((int)this + 0x537) != '\0') {
                        fVar16 = pfVar14[0xd];
                        fVar4 = pfVar14[0xe];
                        fVar5 = pfVar14[0xf];
                        iVar8 = (int)local_c4 * 0x10;
                        *(float *)(&DAT_011d32e0 + iVar8) = pfVar14[0xc];
                        *(float *)(iVar8 + 0x11d32e4) = fVar16;
                        *(float *)(iVar8 + 0x11d32e8) = fVar4;
                        *(float *)(iVar8 + 0x11d32ec) = fVar5;
                        iVar8 = DAT_00ffc4cc;
                        if ((bVar7) && (local_ea)) {
                          local_40 = local_e0[0][0x474c54];
                          iStack_38 = local_e0[0][0x474c56];
                          iStack_34 = local_e0[0][0x474c57];
                          iStack_3c = DAT_00ffc4cc;
                          local_e0[0][0x474c54] = local_40;
                          local_e0[0][0x474c55] = iVar8;
                          local_e0[0][0x474c56] = iStack_38;
                          local_e0[0][0x474c57] = iStack_34;
                          local_50 = (float)local_e0[0][0x474c54];
                          fStack_4c = (float)local_e0[0][0x474c55];
                          fStack_44 = (float)local_e0[0][0x474c57];
                          fStack_48 = (fVar17 - fStack_6c) * _DAT_0115c460;
                          local_e0[0][0x474c54] = (int)local_50;
                          local_e0[0][0x474c55] = (int)fStack_4c;
                          local_e0[0][0x474c56] = (int)fStack_48;
                          local_e0[0][0x474c57] = (int)fStack_44;
                        }
                      }
                      fStack_74 = fVar17;
                      fStack_68 = fVar17;
                      if ((char)local_e4 != '\0') {
                        Seasons_BuildTreeRandomFactors
                                  (pfVar14[0x1e],&local_30,
                                   (float *)(&DAT_011d3370 + (int)local_c4 * 0x10));
                      }
                      local_c4 = (int *)((int)local_c4 + 1);
                      if (local_58 == local_c4) {
                        FUN_0079a0e0((int)this_00);
                        Flora_BindPerInstanceShaderArrays
                                  (this,(int)this_00,(int)local_c4,(char)local_e4);
                        local_e0[0] = local_e8;
                        Flora_DrawLeafMeshBatch
                                  (*(void **)((int)this + 0x4b4),(int *)local_e0,(int *)&local_c4,
                                   local_bc);
                        FUN_0079a130((int)this_00);
                        local_c4 = (int *)0x0;
                        fVar17 = FLOAT_00f998f8;
                        fVar15 = DAT_00ffc4c4;
                        fVar18 = DAT_00ffc4c8;
                      }
                      local_c0 = local_c0 + 1;
                    } while (local_c0 != local_b0[0]);
                    if (local_c4 != (int *)0x0) {
                      FUN_0079a0e0((int)this_00);
                      Flora_BindPerInstanceShaderArrays
                                (this,(int)this_00,(int)local_c4,(char)local_e4);
                      local_e0[0] = local_e8;
                      Flora_DrawLeafMeshBatch
                                (*(void **)((int)this + 0x4b4),(int *)local_e0,(int *)&local_c4,
                                 local_bc);
                      FUN_0079a130((int)this_00);
                      fVar17 = FLOAT_00f998f8;
                      fVar15 = DAT_00ffc4c4;
                      fVar18 = DAT_00ffc4c8;
                    }
                  }
                }
                iVar8 = *(int *)((int)this + 0x4b4);
                local_c8 = local_c8 + 4;
                local_e8 = (int *)((int)local_e8 + 1);
              } while (local_e8 < *(int **)(iVar8 + 0x318));
            }
          }
          ShaderDefinition_SelectTechniqueOrdinal
                    (*(void **)(*(int *)((int)this + 0x4b4) + 0x2a0 + local_bc * 4),
                     *(uint *)(local_94 * 4 + 0x115c434));
          fStack_7c = *(float *)((int)this + 0x544);
          fStack_78 = *(float *)((int)this + 0x548);
          fStack_74 = *(float *)((int)this + 0x54c);
          local_80 = *(float *)((int)this + 0x558);
          *(float *)((int)this + 0x540) = local_80;
          *(float *)((int)this + 0x544) = fStack_7c;
          *(float *)((int)this + 0x548) = fStack_78;
          *(float *)((int)this + 0x54c) = fStack_74;
          if (*(uint *)(PTR_DAT_0115c488 + 0xa4) < *(uint *)((int)this_00 + 8)) {
            piVar11 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0xa4) * 0x10 + *(int *)((int)this_00 + 4)
                             );
            *piVar11 = *piVar11 + 1;
            *(undefined2 *)(piVar11 + 1) = *(undefined2 *)((int)this_00 + 0x12);
            piVar11[3] = (int)this + 0x540;
          }
          if (PTR_DAT_0115c488[0x13] != '\0') {
            iVar8 = *(int *)((int)this + 0x4b4);
            local_e8 = (int *)0x0;
            if (*(int *)(iVar8 + 0x314) != 0) {
              local_c8 = (int *)0x0;
              fVar17 = FLOAT_00f998f8;
              do {
                if (*(int *)(*(int *)(iVar8 + 0x10) + (int)local_e8 * 4) != 0) {
                  local_e4 = (int *)0x0;
                  bVar7 = local_e8 == (int *)(*(int *)(iVar8 + 0x314) + -1);
                  local_c0 = *(int **)(local_b8[8] + (int)local_c8);
                  local_b0[0] = (int *)((undefined4 *)(local_b8[8] + (int)local_c8))[1];
                  if (local_c0 != local_b0[0]) {
                    do {
                      pfVar14 = (float *)(*local_c0 * 0x80 + *(int *)((int)this + 0x210));
                      local_80 = *pfVar14 - local_20;
                      fStack_7c = pfVar14[1] - fStack_1c;
                      fStack_78 = pfVar14[2] - fStack_18;
                      fStack_8c = pfVar14[0x11];
                      local_90 = pfVar14[0x10];
                      fStack_6c = pfVar14[0x16] * DAT_00ffc4c4 + DAT_00ffc4c8;
                      local_e0[0] = (int *)((int)local_e4 * 0x30);
                      local_e0[0][0x474c4c] = (int)local_80;
                      local_e0[0][0x474c4d] = (int)fStack_7c;
                      local_e0[0][0x474c4e] = (int)fStack_78;
                      local_e0[0][0x474c4f] = (int)fVar17;
                      fStack_84 = 0.0;
                      fStack_88 = FLOAT_00f998f0 - fStack_8c;
                      local_e0[0][0x474c50] = (int)local_90;
                      local_e0[0][0x474c51] = (int)fStack_8c;
                      local_e0[0][0x474c52] = (int)fStack_88;
                      local_e0[0][0x474c53] = 0;
                      fStack_64 = pfVar14[0x1d];
                      local_70 = pfVar14[0x12];
                      local_e0[0][0x474c54] = (int)local_70;
                      local_e0[0][0x474c55] = (int)fStack_6c;
                      local_e0[0][0x474c56] = (int)fVar17;
                      local_e0[0][0x474c57] = (int)fStack_64;
                      fVar15 = pfVar14[0x1c];
                      if (fVar15 != 0.0) {
                        uVar12 = (uint)(*(int *)((int)this + 0x1f0) == 0);
                        iVar8 = (int)local_e4 * 0x30;
                        puVar1 = (undefined4 *)((uVar12 + 1) * 0x10 + (int)fVar15);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d3400 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d3404) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d3408) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d340c) = uVar3;
                        puVar1 = (undefined4 *)((uVar12 + 5) * 0x10 + (int)fVar15);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d35b0 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d35b4) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d35b8) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d35bc) = uVar3;
                        puVar1 = (undefined4 *)((uVar12 + 2) * 0x10 + (int)fVar15);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d3410 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d3414) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d3418) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d341c) = uVar3;
                        puVar1 = (undefined4 *)((uVar12 + 6) * 0x10 + (int)fVar15);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d35c0 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d35c4) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d35c8) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d35cc) = uVar3;
                        puVar1 = (undefined4 *)((uVar12 + 3) * 0x10 + (int)fVar15);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d3420 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d3424) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d3428) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d342c) = uVar3;
                        puVar1 = (undefined4 *)((uVar12 + 7) * 0x10 + (int)fVar15);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d35d0 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d35d4) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d35d8) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d35dc) = uVar3;
                        this_00 = local_98;
                      }
                      if (*(char *)((int)this + 0x537) != '\0') {
                        fVar15 = pfVar14[0xd];
                        fVar18 = pfVar14[0xe];
                        fVar16 = pfVar14[0xf];
                        iVar8 = (int)local_e4 * 0x10;
                        *(float *)(&DAT_011d32e0 + iVar8) = pfVar14[0xc];
                        *(float *)(iVar8 + 0x11d32e4) = fVar15;
                        *(float *)(iVar8 + 0x11d32e8) = fVar18;
                        *(float *)(iVar8 + 0x11d32ec) = fVar16;
                        iVar8 = DAT_00ffc4cc;
                        if (bVar7) {
                          local_40 = local_e0[0][0x474c54];
                          iStack_38 = local_e0[0][0x474c56];
                          iStack_34 = local_e0[0][0x474c57];
                          iStack_3c = DAT_00ffc4cc;
                          local_e0[0][0x474c54] = local_40;
                          local_e0[0][0x474c55] = iVar8;
                          local_e0[0][0x474c56] = iStack_38;
                          local_e0[0][0x474c57] = iStack_34;
                          local_50 = (float)local_e0[0][0x474c54];
                          fStack_4c = (float)local_e0[0][0x474c55];
                          fStack_44 = (float)local_e0[0][0x474c57];
                          fStack_48 = (fVar17 - fStack_6c) * _DAT_0115c460;
                          local_e0[0][0x474c54] = (int)local_50;
                          local_e0[0][0x474c55] = (int)fStack_4c;
                          local_e0[0][0x474c56] = (int)fStack_48;
                          local_e0[0][0x474c57] = (int)fStack_44;
                        }
                      }
                      local_e4 = (int *)((int)local_e4 + 1);
                      fStack_74 = fVar17;
                      fStack_68 = fVar17;
                      if (local_58 == local_e4) {
                        FUN_0079a0e0((int)this_00);
                        Flora_BindPerInstanceShaderArrays(this,(int)this_00,(int)local_e4,'\0');
                        local_e0[0] = local_e8;
                        Flora_DrawFrondBatch
                                  (*(void **)((int)this + 0x4b4),(int *)local_e0,(int *)&local_e4,
                                   local_bc);
                        FUN_0079a130((int)this_00);
                        local_e4 = (int *)0x0;
                        fVar17 = FLOAT_00f998f8;
                      }
                      local_c0 = local_c0 + 1;
                    } while (local_c0 != local_b0[0]);
                    if (local_e4 != (int *)0x0) {
                      FUN_0079a0e0((int)this_00);
                      Flora_BindPerInstanceShaderArrays(this,(int)this_00,(int)local_e4,'\0');
                      local_e0[0] = local_e8;
                      Flora_DrawFrondBatch
                                (*(void **)((int)this + 0x4b4),(int *)local_e0,(int *)&local_e4,
                                 local_bc);
                      FUN_0079a130((int)this_00);
                      fVar17 = FLOAT_00f998f8;
                    }
                  }
                }
                iVar8 = *(int *)((int)this + 0x4b4);
                local_c8 = local_c8 + 4;
                local_e8 = (int *)((int)local_e8 + 1);
              } while (local_e8 < *(int **)(iVar8 + 0x314));
            }
          }
          if (*(int *)(*(int *)((int)this + 0x4b0) + 0x17c) == 3) {
            return;
          }
          ShaderDefinition_SelectTechniqueOrdinal
                    (*(void **)(*(int *)((int)this + 0x4b4) + 0x2a0 + local_bc * 4),
                     *(uint *)(local_94 * 4 + 0x115c444));
          iVar8 = FUN_00722ed0(*(int *)((int)this + 0x4b0) + 0x38);
          if (*(uint *)(PTR_DAT_0115c488 + 0x74) < *(uint *)((int)this_00 + 8)) {
            piVar11 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x74) * 0x10 + *(int *)((int)this_00 + 4)
                             );
            *piVar11 = *piVar11 + 1;
            *(undefined2 *)(piVar11 + 1) = *(undefined2 *)((int)this_00 + 0x12);
            piVar11[3] = iVar8;
          }
          bVar7 = TextureProxy_HasUntaggedResource((void *)(*(int *)((int)this + 0x4b0) + 0x50));
          if (bVar7) {
            iVar8 = FUN_00722ed0(*(int *)((int)this + 0x4b0) + 0x50);
            if (*(uint *)(PTR_DAT_0115c488 + 0x78) < *(uint *)((int)this_00 + 8)) {
              piVar11 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x78) * 0x10 +
                               *(int *)((int)this_00 + 4));
              *piVar11 = *piVar11 + 1;
              *(undefined2 *)(piVar11 + 1) = *(undefined2 *)((int)this_00 + 0x12);
              piVar11[3] = iVar8;
            }
          }
          else {
            iVar8 = *(int *)(PTR_DAT_0115c488 + 8);
            if (*(uint *)(PTR_DAT_0115c488 + 0x78) < *(uint *)((int)this_00 + 8)) {
              piVar11 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x78) * 0x10 +
                               *(int *)((int)this_00 + 4));
              *piVar11 = *piVar11 + 1;
              *(undefined2 *)(piVar11 + 1) = *(undefined2 *)((int)this_00 + 0x12);
              piVar11[3] = iVar8;
            }
          }
          fStack_7c = *(float *)((int)this + 0x544);
          fStack_78 = *(float *)((int)this + 0x548);
          fStack_74 = *(float *)((int)this + 0x54c);
          local_80 = *(float *)((int)this + 0x554);
          *(float *)((int)this + 0x540) = local_80;
          *(float *)((int)this + 0x544) = fStack_7c;
          *(float *)((int)this + 0x548) = fStack_78;
          *(float *)((int)this + 0x54c) = fStack_74;
          if (*(uint *)(PTR_DAT_0115c488 + 0xa4) < *(uint *)((int)this_00 + 8)) {
            piVar11 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0xa4) * 0x10 + *(int *)((int)this_00 + 4)
                             );
            *piVar11 = *piVar11 + 1;
            *(undefined2 *)(piVar11 + 1) = *(undefined2 *)((int)this_00 + 0x12);
            piVar11[3] = (int)this + 0x540;
          }
          if (PTR_DAT_0115c488[0x12] != '\0') {
            piVar11 = *(int **)((int)this + 0x4b4);
            local_e8 = (int *)0x0;
            if (piVar11[0xc4] != 0) {
              local_c8 = (int *)0x0;
              fVar17 = FLOAT_00f998f8;
              do {
                if (*(int *)(*piVar11 + (int)local_e8 * 4) != 0) {
                  local_e4 = (int *)0x0;
                  bVar7 = local_e8 == (int *)(piVar11[0xc4] + -1);
                  local_c0 = *(int **)(local_b8[4] + (int)local_c8);
                  local_b0[0] = (int *)((undefined4 *)(local_b8[4] + (int)local_c8))[1];
                  if (local_c0 != local_b0[0]) {
                    do {
                      pfVar14 = (float *)(*local_c0 * 0x80 + *(int *)((int)this + 0x210));
                      local_80 = *pfVar14 - local_20;
                      fStack_7c = pfVar14[1] - fStack_1c;
                      fStack_78 = pfVar14[2] - fStack_18;
                      fStack_8c = pfVar14[0x11];
                      local_90 = pfVar14[0x10];
                      fStack_6c = pfVar14[0x14] * DAT_00ffc4c4 + DAT_00ffc4c8;
                      local_e0[0] = (int *)((int)local_e4 * 0x30);
                      local_e0[0][0x474c4c] = (int)local_80;
                      local_e0[0][0x474c4d] = (int)fStack_7c;
                      local_e0[0][0x474c4e] = (int)fStack_78;
                      local_e0[0][0x474c4f] = (int)fVar17;
                      fStack_84 = 0.0;
                      fStack_88 = FLOAT_00f998f0 - fStack_8c;
                      local_e0[0][0x474c50] = (int)local_90;
                      local_e0[0][0x474c51] = (int)fStack_8c;
                      local_e0[0][0x474c52] = (int)fStack_88;
                      local_e0[0][0x474c53] = 0;
                      fStack_64 = pfVar14[0x1d];
                      local_70 = pfVar14[0x12];
                      local_e0[0][0x474c54] = (int)local_70;
                      local_e0[0][0x474c55] = (int)fStack_6c;
                      local_e0[0][0x474c56] = (int)fVar17;
                      local_e0[0][0x474c57] = (int)fStack_64;
                      fVar15 = pfVar14[0x1c];
                      if (fVar15 != 0.0) {
                        uVar12 = (uint)(*(int *)((int)this + 0x1f0) == 0);
                        iVar8 = (int)local_e4 * 0x30;
                        puVar1 = (undefined4 *)((uVar12 + 1) * 0x10 + (int)fVar15);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d3400 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d3404) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d3408) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d340c) = uVar3;
                        puVar1 = (undefined4 *)((uVar12 + 5) * 0x10 + (int)fVar15);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d35b0 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d35b4) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d35b8) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d35bc) = uVar3;
                        puVar1 = (undefined4 *)((uVar12 + 2) * 0x10 + (int)fVar15);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d3410 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d3414) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d3418) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d341c) = uVar3;
                        puVar1 = (undefined4 *)((uVar12 + 6) * 0x10 + (int)fVar15);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d35c0 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d35c4) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d35c8) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d35cc) = uVar3;
                        puVar1 = (undefined4 *)((uVar12 + 3) * 0x10 + (int)fVar15);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d3420 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d3424) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d3428) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d342c) = uVar3;
                        puVar1 = (undefined4 *)((uVar12 + 7) * 0x10 + (int)fVar15);
                        uVar10 = puVar1[1];
                        uVar2 = puVar1[2];
                        uVar3 = puVar1[3];
                        *(undefined4 *)(&DAT_011d35d0 + iVar8) = *puVar1;
                        *(undefined4 *)(iVar8 + 0x11d35d4) = uVar10;
                        *(undefined4 *)(iVar8 + 0x11d35d8) = uVar2;
                        *(undefined4 *)(iVar8 + 0x11d35dc) = uVar3;
                        this_00 = local_98;
                      }
                      if (*(char *)((int)this + 0x537) != '\0') {
                        fVar15 = pfVar14[0xd];
                        fVar18 = pfVar14[0xe];
                        fVar16 = pfVar14[0xf];
                        iVar8 = (int)local_e4 * 0x10;
                        *(float *)(&DAT_011d32e0 + iVar8) = pfVar14[0xc];
                        *(float *)(iVar8 + 0x11d32e4) = fVar15;
                        *(float *)(iVar8 + 0x11d32e8) = fVar18;
                        *(float *)(iVar8 + 0x11d32ec) = fVar16;
                        iVar8 = DAT_00ffc4cc;
                        if (bVar7) {
                          local_40 = local_e0[0][0x474c54];
                          iStack_38 = local_e0[0][0x474c56];
                          iStack_34 = local_e0[0][0x474c57];
                          iStack_3c = DAT_00ffc4cc;
                          local_e0[0][0x474c54] = local_40;
                          local_e0[0][0x474c55] = iVar8;
                          local_e0[0][0x474c56] = iStack_38;
                          local_e0[0][0x474c57] = iStack_34;
                          local_50 = (float)local_e0[0][0x474c54];
                          fStack_4c = (float)local_e0[0][0x474c55];
                          fStack_44 = (float)local_e0[0][0x474c57];
                          fStack_48 = (fVar17 - fStack_6c) * _DAT_0115c460;
                          local_e0[0][0x474c54] = (int)local_50;
                          local_e0[0][0x474c55] = (int)fStack_4c;
                          local_e0[0][0x474c56] = (int)fStack_48;
                          local_e0[0][0x474c57] = (int)fStack_44;
                        }
                      }
                      local_e4 = (int *)((int)local_e4 + 1);
                      fStack_74 = fVar17;
                      fStack_68 = fVar17;
                      if (local_58 == local_e4) {
                        FUN_0079a0e0((int)this_00);
                        Flora_BindPerInstanceShaderArrays(this,(int)this_00,(int)local_e4,'\0');
                        local_e0[0] = local_e8;
                        Flora_DrawBranchBatch
                                  (*(void **)((int)this + 0x4b4),(int *)local_e0,(int *)&local_e4,
                                   local_bc);
                        FUN_0079a130((int)this_00);
                        local_e4 = (int *)0x0;
                        fVar17 = FLOAT_00f998f8;
                      }
                      local_c0 = local_c0 + 1;
                    } while (local_c0 != local_b0[0]);
                    if (local_e4 != (int *)0x0) {
                      FUN_0079a0e0((int)this_00);
                      Flora_BindPerInstanceShaderArrays(this,(int)this_00,(int)local_e4,'\0');
                      local_e0[0] = local_e8;
                      Flora_DrawBranchBatch
                                (*(void **)((int)this + 0x4b4),(int *)local_e0,(int *)&local_e4,
                                 local_bc);
                      FUN_0079a130((int)this_00);
                      fVar17 = FLOAT_00f998f8;
                    }
                  }
                }
                piVar11 = *(int **)((int)this + 0x4b4);
                local_c8 = local_c8 + 4;
                local_e8 = (int *)((int)local_e8 + 1);
              } while (local_e8 < (int *)piVar11[0xc4]);
            }
          }
          iVar8 = *(int *)(*(int *)((int)this + 0x4b0) + 0x17c);
        }
        if (((iVar8 != 2) && (param_1 == 0)) &&
           ((*(char *)((int)local_b8 + 0x55) != '\0' || (local_b1 != '\0')))) {
          Flora_DrawBillboardVariants(this,(int)param_2,local_94);
        }
      }
    }
  }
  return;
}

