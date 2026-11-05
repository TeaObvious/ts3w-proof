/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 complete CAS binding-record material producer. Physical ECX builder plus three
   stack DWORDs: binding record pointer, signed selector, material acquisition argument; RET0C.
   Existing decompiler parameter/return types are retained. Source record+2C is a material parameter
   view; authored shader/flags select distinct branches, including alpha-class remaps. Selected
   branches replace DiffuseMap6CC0FD85, SpecularMapAD528A60 and AlphaMapC3FAAC4F keys with the
   existing default DDS key; the hair branch preserves authored SpecularMap. NormalMap6E56548A
   substitution is gated by signed selector>1 (CMP/SETLE), not unsigned. Texture resource type
   appended on these paths is00B2D882. Common numeric kinds1/2, expression value, optional24
   CurlDeltas floats,4 MorphWeights and CAS selection inputs are appended in original order.
   OverlayTexture4DC0C8BC sentinel has all four DWORDsFFFFFFFF; optional spec-compositeD652FADE
   sentinel has firstDWORDFFFFFFFE and remaining threeFFFFFFFF. These are structured temporary keys,
   not asserted64-bit resource IDs. After serialization,005CF740 resolves sentinels before006CB0A0
   copies the blob. Existing record+70 reference is cleared before virtual+4 release, then006CAEC0
   acquires its replacement; temporary blob/parameterbuffer/material are released afterward. This
   native branch-specific parameter producer does not prove blanket parity for Vulkan role mappings,
   atlas composition, terrain, cutout or sampler policy. */

void __thiscall CasModelBuilder_BuildMaterial(void *this,int param_1,int param_2,uint param_3)

{
  float *pfVar1;
  byte bVar2;
  bool bVar3;
  undefined4 *puVar4;
  int iVar5;
  void *pvVar6;
  uint uVar7;
  undefined4 uVar8;
  undefined4 ****ppppuVar9;
  undefined4 ****ppppuVar10;
  uint *puVar11;
  int *piVar12;
  uint uVar13;
  undefined4 ****ppppuVar14;
  int iVar15;
  bool bVar16;
  bool bVar17;
  float10 fVar18;
  float fVar19;
  undefined8 uVar20;
  uint uStack_1b8;
  int *local_1b4;
  float fStack_1b0;
  float fStack_1ac;
  int local_1a8 [8];
  int iStack_188;
  uint uStack_184;
  int iStack_180;
  int iStack_17c;
  int iStack_178;
  int iStack_174;
  undefined4 uStack_170;
  undefined4 uStack_16c;
  undefined4 uStack_168;
  undefined4 uStack_164;
  undefined1 auStack_15c [4];
  undefined4 ***pppuStack_158;
  undefined4 ***pppuStack_154;
  undefined4 ***pppuStack_150;
  undefined4 uStack_14c;
  undefined4 uStack_148;
  char *pcStack_144;
  undefined4 uStack_140;
  undefined4 uStack_13c;
  undefined4 uStack_138;
  undefined4 uStack_134;
  undefined4 uStack_130;
  undefined4 uStack_12c;
  undefined4 uStack_128;
  undefined4 uStack_124;
  undefined4 uStack_120;
  undefined4 uStack_11c;
  undefined4 uStack_118;
  undefined4 uStack_114;
  float fStack_110;
  uint uStack_10c;
  int iStack_108;
  undefined1 auStack_104 [4];
  undefined4 uStack_100;
  uint uStack_fc;
  float fStack_f8;
  uint uStack_f4;
  float fStack_f0;
  int iStack_ec;
  int iStack_e8;
  uint uStack_e4;
  undefined8 uStack_e0;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  float fStack_bc;
  uint uStack_b8;
  float fStack_b4;
  uint uStack_b0;
  uint uStack_ac;
  uint uStack_a8;
  int iStack_a4;
  undefined4 uStack_a0;
  uint uStack_9c;
  int *piStack_98;
  void *pvStack_94;
  int iStack_90;
  int iStack_88;
  undefined4 uStack_84;
  void *pvStack_80;
  int iStack_7c;
  int iStack_74;
  undefined4 **ppuStack_70;
  int *apiStack_6c [3];
  int iStack_60;
  undefined4 auStack_58 [2];
  undefined4 auStack_50 [2];
  undefined4 auStack_48 [2];
  undefined4 auStack_40 [2];
  undefined4 auStack_38 [2];
  float afStack_30 [4];
  float afStack_20 [7];
  
  puVar4 = (undefined4 *)FUN_004e4520(0x40,8,0,"CAS/ModelBuilder/MaterialDef",0);
  if (puVar4 == (undefined4 *)0x0) {
    local_1b4 = (int *)0x0;
  }
  else {
    local_1b4 = (int *)FUN_006cb210(puVar4);
    if (local_1b4 != (int *)0x0) {
      (**(code **)*local_1b4)();
    }
  }
  bVar17 = false;
  bVar3 = false;
  FUN_00799680(local_1a8);
  if (((*(uint *)(param_1 + 0xc) & 0x60) != 0) || (((byte)*(uint *)(param_1 + 0xc) & 0x80) == 0x80))
  {
    uStack_a0 = 0;
    FUN_00799ad0(local_1a8,"doFourBoneSkinning",&uStack_a0,1);
  }
  puVar11 = (uint *)(param_1 + 0x18);
  if (*(int *)(param_1 + 0x18) == -0x23f885bb) {
    *(undefined4 *)(param_1 + 0x1c) = 2;
LAB_005d067f:
    *puVar11 = 0x548394b9;
  }
  else {
    if (*(int *)(param_1 + 0x18) == -0x174b0e0c) {
      *(undefined4 *)(param_1 + 0x1c) = 1;
      goto LAB_005d067f;
    }
    *(undefined4 *)(param_1 + 0x1c) = 0;
  }
  if (*puVar11 == 0x93b210c6) {
    *puVar11 = 0xa78f71c4;
LAB_005d06e4:
    *(uint *)(param_1 + 0xc) = *(uint *)(param_1 + 0xc) | 0x40000;
    *(undefined1 *)(param_1 + 0x20) = 1;
  }
  else {
    FUN_00799140(auStack_104,*(undefined4 *)(param_1 + 0x2c));
    iVar5 = FUN_00799660(auStack_104,"useExpressions");
    if (((-1 < iVar5) && (FUN_007991e0(auStack_104,iVar5,(int *)apiStack_6c), iStack_60 == 2)) &&
       (*apiStack_6c[0] != 0)) goto LAB_005d06e4;
  }
  uVar7 = *puVar11;
  if (((uVar7 == 0x5f75ef1) || (uVar7 == 0x93b210c6)) || (uVar7 == 0xa78f71c4)) {
    *(uint *)(param_1 + 0xc) = *(uint *)(param_1 + 0xc) & 0xffefffff;
  }
  else {
    *(uint *)(param_1 + 0xc) = *(uint *)(param_1 + 0xc) | 0x100000;
  }
  if (uVar7 < 0x548394ba) {
    if (uVar7 == 0x548394b9) {
      iVar5 = *(int *)(param_1 + 0x1c);
      pvVar6 = LoadPump_ReadFrameServiceGlobal();
      if (((pvVar6 == (void *)0x0) || (*(char *)((int)pvVar6 + 0x27b) == '\0')) && (iVar5 != 1)) {
        bVar2 = 0;
      }
      else {
        bVar2 = 1;
      }
      if (((*(char *)((int)this + 0x130) != '\0') && (*(int *)(param_1 + 8) != 0x1f)) &&
         (DAT_01156ae8 != '\0')) {
        *puVar11 = (-(uint)bVar2 & 0x590acded) + 0x1772897;
      }
      fStack_f8 = FLOAT_00f998f8;
      if (iVar5 == 1) {
        FUN_00799ad0(local_1a8,"AlphaBlend",&fStack_f8,1);
      }
      else if (iVar5 == 2) {
        FUN_00799ad0(local_1a8,"AlphaTest",&fStack_f8,1);
      }
    }
    else {
      if (uVar7 == 0x4ee54fbc) goto LAB_005d0872;
      if (uVar7 == 0x53881019) {
        FUN_005c9910(this,*(int *)(param_1 + 8),0x72aa53,puVar11);
      }
    }
  }
  else if (uVar7 < 0xa79c1a3f) {
    if (uVar7 == 0xa79c1a3e) {
LAB_005d0872:
      *puVar11 = 0x548394b9;
    }
    else if (uVar7 == 0x84fd7152) {
      pvVar6 = LoadPump_ReadFrameServiceGlobal();
      if ((pvVar6 == (void *)0x0) || (uVar8 = 0xa7b368fb, *(char *)((int)pvVar6 + 0x27c) == '\0')) {
        uVar8 = 0xfcf80ce1;
      }
      FUN_005c9910(this,*(int *)(param_1 + 8),uVar8,puVar11);
    }
    else if (uVar7 == 0x9d2945ec) {
      *puVar11 = 0xcf8a70b4;
    }
    else if (uVar7 == 0xa78f71c4) {
      FUN_005c9910(this,*(int *)(param_1 + 8),0x14de3feb,puVar11);
    }
  }
  else if (uVar7 == 0xcf8a70b4) {
    if (((*(char *)((int)this + 0x130) != '\0') && (*(int *)(param_1 + 8) != 0x1f)) &&
       (DAT_01156ae8 != '\0')) {
      *puVar11 = 0xb51ec997;
    }
  }
  else if (uVar7 == 0xe24a83c6) goto LAB_005d0872;
  uVar7 = *puVar11;
  if (0x5a81f684 < uVar7) {
    if (uVar7 < 0xa7b368fc) {
      if (uVar7 == 0xa7b368fb) {
LAB_005d12a3:
        pppuStack_158 = &pppuStack_158;
        pcStack_144 = "CAS/ModelBuilder/AddedItems";
        pppuStack_150 = (undefined4 ****)0x0;
        uStack_14c = 0;
        uStack_148 = 0;
        pppuStack_154 = pppuStack_158;
        FUN_009de9b0(local_1b4,uVar7);
        if (*(int *)(param_1 + 0x28) != 0) {
          FUN_00799140(&iStack_178,*(undefined4 *)(param_1 + 0x2c));
          iVar5 = FUN_00799240(&iStack_178);
          uVar7 = 0xffffffff;
          if (0 < iVar5) {
            do {
              uVar7 = FUN_00799270(&iStack_178,uVar7,(int *)&uStack_1b8);
              uStack_170 = 0;
              uStack_16c = 0;
              uStack_168 = 0;
              uStack_164 = 0;
              if (uStack_1b8 < 0xad528a61) {
                if (uStack_1b8 != 0xad528a60) {
                  if (uStack_1b8 == 0x6cc0fd85) goto LAB_005d1391;
                  if (uStack_1b8 == 0x6e56548a) {
                    bVar17 = 1 < param_2;
                    goto LAB_005d1377;
                  }
                }
LAB_005d1379:
                FUN_007992f0(&iStack_178,uVar7,&uStack_170);
              }
              else {
                bVar17 = uStack_1b8 == 0xc3faac4f;
LAB_005d1377:
                if (!bVar17) goto LAB_005d1379;
LAB_005d1391:
                uStack_170 = DAT_0115c890;
                uStack_16c = DAT_0115c894;
                uStack_164 = DAT_0115c89c;
              }
              uStack_b8 = uStack_b8 & 0xffffff00;
              uStack_168 = 0xb2d882;
              FUN_004a4550(auStack_15c,auStack_50,&uStack_1b8);
              MaterialParams_AppendTextureKey
                        (local_1a8,uStack_1b8,uStack_170,uStack_16c,uStack_168,uStack_164,0);
              iVar5 = iVar5 + -1;
            } while (iVar5 != 0);
          }
        }
        uStack_1b8 = 0x637daa05;
        FUN_007999d0(local_1a8,0x637daa05,(void *)((int)this + 0x1f0),3);
        uStack_b0 = uStack_b0 & 0xffffff00;
        FUN_004a4550(auStack_15c,auStack_58,&uStack_1b8);
        uStack_1b8 = 0x2eb8e8d4;
        FUN_007999d0(local_1a8,0x2eb8e8d4,(void *)((int)this + 0x200),3);
        uStack_ac = uStack_ac & 0xffffff00;
        FUN_004a4550(auStack_15c,auStack_48,&uStack_1b8);
        uStack_1b8 = 0xd4043258;
        FUN_007999d0(local_1a8,0xd4043258,(void *)((int)this + 0x210),3);
        uStack_9c = uStack_9c & 0xffffff00;
        FUN_004a4550(auStack_15c,auStack_40,&uStack_1b8);
        uStack_a8 = uStack_a8 & 0xffffff00;
        bVar17 = true;
        uStack_1b8 = 0x4dc0c8bc;
        FUN_004a4550(auStack_15c,auStack_38,&uStack_1b8);
        FUN_00799140(&iStack_e8,*(undefined4 *)(param_1 + 0x2c));
        iVar15 = 0;
        iVar5 = FUN_00799150(&iStack_e8);
        if (0 < iVar5) {
          do {
            FUN_007991e0(&iStack_e8,iVar15,(int *)&pvStack_80);
            ppppuVar14 = &pppuStack_158;
            ppppuVar9 = (undefined4 ****)pppuStack_150;
            if ((undefined4 ****)pppuStack_150 == (undefined4 ****)0x0) {
LAB_005d15af:
              if (iStack_74 == 1) {
                FUN_007999d0(local_1a8,ppuStack_70,pvStack_80,iStack_7c);
              }
              else if (iStack_74 == 2) {
                FUN_007999f0(local_1a8,ppuStack_70,pvStack_80,iStack_7c);
              }
            }
            else {
              do {
                if (ppppuVar9[4] < ppuStack_70) {
                  ppppuVar10 = (undefined4 ****)*ppppuVar9;
                }
                else {
                  ppppuVar10 = (undefined4 ****)ppppuVar9[1];
                  ppppuVar14 = ppppuVar9;
                }
                ppppuVar9 = ppppuVar10;
              } while (ppppuVar10 != (undefined4 ****)0x0);
              if ((ppppuVar14 == &pppuStack_158) || (ppuStack_70 < ppppuVar14[4]))
              goto LAB_005d15af;
            }
            iVar15 = iVar15 + 1;
          } while (iVar15 < iVar5);
        }
        iVar5 = *(int *)(param_1 + 0x18);
        ppppuVar14 = (undefined4 ****)pppuStack_150;
        if ((((iVar5 == -0x307f31f) || (iVar5 == -0x584c9705)) || (iVar5 == 0x5f75ef1)) &&
           (bVar3 = true, iVar5 == 0x5f75ef1)) {
          for (piVar12 = *(int **)((int)this + 0xc); piVar12 != *(int **)((int)this + 0x10);
              piVar12 = piVar12 + 0x1d) {
            if (*(int *)(*piVar12 + 0x34) == 0x38) {
              bVar2 = 1;
              goto LAB_005d1654;
            }
          }
          bVar2 = 0;
LAB_005d1654:
          uStack_e4 = (uint)bVar2;
          FUN_00799b00(local_1a8,"IsUnicorn",&uStack_e4,1);
          ppppuVar14 = (undefined4 ****)pppuStack_150;
        }
        while (ppppuVar14 != (undefined4 ****)0x0) {
          FUN_008b19b0(*ppppuVar14);
          ppppuVar9 = (undefined4 ****)ppppuVar14[1];
          Memory_FreeIfNonNull(ppppuVar14);
          ppppuVar14 = ppppuVar9;
        }
        goto LAB_005d16a3;
      }
      if (uVar7 < 0x9d9da162) {
        if (uVar7 != 0x9d9da161) {
          if (uVar7 != 0x5eda9cde) {
            bVar16 = uVar7 == 0x84fd7152;
            goto LAB_005d11c9;
          }
          bVar17 = true;
          goto LAB_005d11cf;
        }
      }
      else if (uVar7 != 0xa78f71c4) goto LAB_005d11cf;
      goto LAB_005d0a07;
    }
    if (uVar7 < 0xd4f85d33) {
      if (uVar7 == 0xd4f85d32) {
        if (*(int *)(param_1 + 0x28) != 0) {
          FUN_00799140(&iStack_17c,*(undefined4 *)(param_1 + 0x2c));
          iVar5 = FUN_00799240(&iStack_17c);
          uVar7 = 0xffffffff;
          if (0 < iVar5) {
            do {
              uVar7 = FUN_00799270(&iStack_17c,uVar7,(int *)&uStack_f4);
              uStack_120 = 0;
              uStack_11c = 0;
              uStack_118 = 0;
              uStack_114 = 0;
              if (uStack_f4 < 0xad528a61) {
                if ((uStack_f4 == 0xad528a60) || (uStack_f4 == 0x6cc0fd85)) goto LAB_005d10b1;
                if (uStack_f4 == 0x6e56548a) {
                  bVar17 = 1 < param_2;
                  goto LAB_005d108c;
                }
LAB_005d108e:
                FUN_007992f0(&iStack_17c,uVar7,&uStack_120);
              }
              else {
                bVar17 = uStack_f4 == 0xc3faac4f;
LAB_005d108c:
                if (!bVar17) goto LAB_005d108e;
LAB_005d10b1:
                uStack_120 = DAT_0115c890;
                uStack_11c = DAT_0115c894;
                uStack_114 = DAT_0115c89c;
              }
              uStack_118 = 0xb2d882;
              MaterialParams_AppendTextureKey
                        (local_1a8,uStack_f4,uStack_120,uStack_11c,0xb2d882,uStack_114,0);
              iVar5 = iVar5 + -1;
            } while (iVar5 != 0);
          }
        }
        uVar7 = *(uint *)(param_1 + 0xc) & 0x3f00;
        bVar17 = true;
        bVar3 = true;
        fStack_1ac = _DAT_01062bc8;
        if (uVar7 < 0x801) {
          fVar19 = DAT_00fa2b9c;
          if (uVar7 != 0x800) {
            if (uVar7 == 0x100) {
              fVar19 = 0.0;
            }
            else {
              fVar19 = FLOAT_00f998f8;
              if ((uVar7 != 0x200) && (fVar19 = DAT_0103fd88, uVar7 != 0x400)) goto LAB_005d11aa;
            }
          }
LAB_005d11a4:
          fStack_1ac = fVar19;
        }
        else {
          fVar19 = DAT_00fe44dc;
          if ((uVar7 == 0x1000) || (fVar19 = _DAT_01062bc8, uVar7 == 0x2000)) goto LAB_005d11a4;
        }
LAB_005d11aa:
        FUN_00799ad0(local_1a8,"OverlaySpecularStyle",&fStack_1ac,1);
        goto LAB_005d16a3;
      }
      if ((uVar7 == 0xb51ec997) || (uVar7 == 0xcf8a70b4)) {
        FUN_009de9b0(local_1b4,uVar7);
        if (*(int *)(param_1 + 0x28) != 0) {
          FUN_00799140(&iStack_188,*(undefined4 *)(param_1 + 0x2c));
          iVar5 = FUN_00799240(&iStack_188);
          uVar7 = 0xffffffff;
          if (0 < iVar5) {
            do {
              uVar7 = FUN_00799270(&iStack_188,uVar7,(int *)&uStack_fc);
              uStack_130 = 0;
              uStack_12c = 0;
              uStack_128 = 0;
              uStack_124 = 0;
              if (uStack_fc < 0xad528a61) {
                if ((uStack_fc == 0xad528a60) || (uStack_fc == 0x6cc0fd85)) goto LAB_005d0f64;
                if (uStack_fc == 0x6e56548a) {
                  bVar17 = 1 < param_2;
                  goto LAB_005d0f3f;
                }
LAB_005d0f41:
                FUN_007992f0(&iStack_188,uVar7,&uStack_130);
              }
              else {
                bVar17 = uStack_fc == 0xc3faac4f;
LAB_005d0f3f:
                if (!bVar17) goto LAB_005d0f41;
LAB_005d0f64:
                uStack_130 = DAT_0115c890;
                uStack_12c = DAT_0115c894;
                uStack_124 = DAT_0115c89c;
              }
              uStack_128 = 0xb2d882;
              MaterialParams_AppendTextureKey
                        (local_1a8,uStack_fc,uStack_130,uStack_12c,0xb2d882,uStack_124,0);
              iVar5 = iVar5 + -1;
            } while (iVar5 != 0);
          }
        }
        bVar17 = true;
        if (*(int *)(param_1 + 0x18) == -0x4ae13669) {
          bVar3 = true;
        }
        goto LAB_005d16a3;
      }
    }
    else {
      bVar16 = uVar7 == 0xfcf80ce1;
LAB_005d11c9:
      if (bVar16) goto LAB_005d12a3;
    }
LAB_005d11cf:
    FUN_009de9b0(local_1b4,uVar7);
    if (*(int *)(param_1 + 0x28) != 0) {
      FUN_00799140(&iStack_174,*(undefined4 *)(param_1 + 0x2c));
      iVar5 = FUN_00799240(&iStack_174);
      uVar7 = 0xffffffff;
      if (0 < iVar5) {
        do {
          uVar7 = FUN_00799270(&iStack_174,uVar7,&iStack_a4);
          uStack_d0 = 0;
          uStack_cc = 0;
          uStack_c8 = 0;
          uStack_c4 = 0;
          FUN_007992f0(&iStack_174,uVar7,&uStack_d0);
          uStack_c8 = 0xb2d882;
          MaterialParams_AppendTextureKey
                    (local_1a8,iStack_a4,uStack_d0,uStack_cc,0xb2d882,uStack_c4,0);
          iVar5 = iVar5 + -1;
        } while (iVar5 != 0);
      }
    }
    goto LAB_005d16a3;
  }
  if (uVar7 == 0x5a81f684) {
LAB_005d0a07:
    FUN_009de9b0(local_1b4,*puVar11);
    if (*puVar11 == 0x9d9da161) {
      *(uint *)(param_1 + 0xc) = *(uint *)(param_1 + 0xc) | 0x20000;
    }
    if (*(int *)(param_1 + 0x28) != 0) {
      FUN_00799140(&iStack_180,*(undefined4 *)(param_1 + 0x2c));
      iVar5 = FUN_00799240(&iStack_180);
      uVar7 = 0xffffffff;
      if (0 < iVar5) {
        do {
          uVar7 = FUN_00799270(&iStack_180,uVar7,(int *)&uStack_10c);
          uStack_140 = 0;
          uStack_13c = 0;
          uStack_138 = 0;
          uStack_134 = 0;
          if (uStack_10c < 0xad528a61) {
            if ((uStack_10c == 0xad528a60) || (uStack_10c == 0x6cc0fd85)) goto LAB_005d0ad2;
            if (uStack_10c == 0x6e56548a) {
                    /* Signed selector comparison: CMP DWORD[EBP+C],1 and SETLE; default NormalMap
                       replacement occurs only for selector>1. Equivalent signed gates repeat on
                       other shader branches. */
              bVar17 = 1 < param_2;
              goto LAB_005d0aad;
            }
LAB_005d0aaf:
            FUN_007992f0(&iStack_180,uVar7,&uStack_140);
          }
          else {
            bVar17 = uStack_10c == 0xc3faac4f;
LAB_005d0aad:
            if (!bVar17) goto LAB_005d0aaf;
LAB_005d0ad2:
            uStack_140 = DAT_0115c890;
            uStack_13c = DAT_0115c894;
            uStack_134 = DAT_0115c89c;
          }
          uStack_138 = 0xb2d882;
          MaterialParams_AppendTextureKey
                    (local_1a8,uStack_10c,uStack_140,uStack_13c,0xb2d882,uStack_134,0);
          iVar5 = iVar5 + -1;
        } while (iVar5 != 0);
      }
    }
    iVar5 = *(int *)(param_1 + 0x28);
    if (((iVar5 == 0x14de3feb) || (iVar5 == -0x6c4def3a)) || (iVar5 == -0x58708e3c)) {
      uVar20 = FUN_007d0090("adBody_fur_fine");
      uStack_c8 = 0xb2d882;
      uVar7 = HashLowercasedCStringFNV1("FurMap");
      MaterialParams_AppendTextureKey
                (local_1a8,uVar7,(int)uVar20,(int)((ulonglong)uVar20 >> 0x20),uStack_c8,0x48000000,0
                );
    }
    uVar7 = *(uint *)(param_1 + 0xc) & 0x3f00;
    fStack_1b0 = _DAT_01062bc8;
    if (uVar7 < 0x801) {
      fVar19 = DAT_00fa2b9c;
      if (uVar7 != 0x800) {
        if (uVar7 == 0x100) {
          fVar19 = 0.0;
        }
        else {
          fVar19 = FLOAT_00f998f8;
          if ((uVar7 != 0x200) && (fVar19 = DAT_0103fd88, uVar7 != 0x400)) goto LAB_005d0c2a;
        }
      }
LAB_005d0c24:
      fStack_1b0 = fVar19;
    }
    else {
      fVar19 = DAT_00fe44dc;
      if ((uVar7 == 0x1000) || (fVar19 = _DAT_01062bc8, uVar7 == 0x2000)) goto LAB_005d0c24;
    }
LAB_005d0c2a:
    FUN_00799ad0(local_1a8,"OverlaySpecularStyle",&fStack_1b0,1);
    fStack_110 = 0.0;
    if (*(int *)((int)this + 0x154) != 0) {
      uVar13 = 0;
      uVar7 = *(int *)(param_1 + 0x98) - *(int *)(param_1 + 0x94) >> 2;
      if (uVar7 != 0) {
        piVar12 = *(int **)(param_1 + 0x94);
        do {
          if (*piVar12 == 0xf97b21b) {
            fStack_110 = (float)(int)uVar13;
            uStack_e4 = uVar13;
            if ((int)uVar13 < 0) {
              fStack_110 = fStack_110 + FLOAT_00f99948;
            }
            break;
          }
          uVar13 = uVar13 + 1;
          piVar12 = piVar12 + 1;
        } while (uVar13 < uVar7);
      }
    }
    FUN_00799ad0(local_1a8,"HeadBoneIndex",&fStack_110,1);
  }
  else {
    if (uVar7 < 0x1c608237) {
      if (uVar7 != 0x1c608236) {
        if (uVar7 < 0x5f75ef2) {
          if (uVar7 == 0x5f75ef1) goto LAB_005d12a3;
          if ((uVar7 != 0x72aa53) && (uVar7 != 0x1772897)) goto LAB_005d11cf;
          uStack_e0 = 0;
          uStack_d8 = 0xb2d882;
          uStack_d4 = 0;
          uStack_e0 = FUN_007d0090("afBloodMap");
          uVar7 = HashLowercasedCStringFNV1("BloodMap");
          uStack_184 = 0;
          uVar8 = FUN_005ca650(&uStack_184,&uStack_e0,0,0,param_3);
          if ((char)uVar8 != '\0') {
            FUN_007f6050(&uStack_184);
            MaterialParams_AppendTextureKey
                      (local_1a8,uVar7,(int)uStack_e0,uStack_e0._4_4_,uStack_d8,uStack_d4,0);
          }
          FUN_00ec60d0(&uStack_184);
        }
        else if (uVar7 != 0x14de3feb) goto LAB_005d11cf;
      }
      goto LAB_005d0a07;
    }
    if (uVar7 != 0x4ee54fbc) {
      if ((uVar7 != 0x53881019) && (uVar7 != 0x548394b9)) goto LAB_005d11cf;
      goto LAB_005d0a07;
    }
  }
  FUN_005ca2a0(this,local_1a8,*(uint *)(param_1 + 8));
  piStack_98 = (int *)(param_1 + 0x18);
  bVar17 = true;
  bVar3 = true;
  if (*piStack_98 == 0x4ee54fbc) {
    FUN_009de9b0(local_1b4,0x4ee54fbc);
  }
  pfVar1 = (float *)((int)this + 0x1b4);
  FUN_00799ad0(local_1a8,"SkinToneIndex",pfVar1,1);
  if ((*(uint *)((int)this + 0x2f0) & 0x2000) == 0) {
    fStack_b4 = 0.0;
  }
  else {
    fStack_b4 = *(float *)((int)this + 0x1c0);
  }
  fVar19 = *(float *)((int)this + 0x1bc) * DAT_00fe44dc;
  if (fVar19 <= fStack_b4) {
    fStack_b4 = fStack_b4 - fVar19;
  }
  else {
    fStack_b4 = *(float *)((int)this + 0x1bc) - fStack_b4 * DAT_0106f8c8;
  }
  FUN_00799ad0(local_1a8,"SecondaryNormalMapWeight",&fStack_b4,1);
  if (((*(uint *)((int)this + 0x2ec) & 3) == 0) && (*(int *)((int)this + 0x2ec) != 0)) {
    FUN_005f2db0(*(void **)((int)this + 0x2ec),afStack_20,*pfVar1,*(uint *)((int)this + 0x2f0));
    FUN_005f2ec0(*(void **)((int)this + 0x2ec),afStack_30,*pfVar1,*(uint *)((int)this + 0x2f0));
    fVar18 = FUN_005f2d30(*(void **)((int)this + 0x2ec),*pfVar1,*(uint *)((int)this + 0x2f0));
    fStack_bc = (float)fVar18;
    FUN_00799ad0(local_1a8,"SkinSpecularPower",&fStack_bc,1);
    FUN_00799ad0(local_1a8,"SkinSpecularColor",afStack_20,3);
    FUN_00799ad0(local_1a8,"SkinEdgeColor",afStack_30,3);
  }
  FUN_00799b00(local_1a8,"AtlasRegion",(void *)(param_1 + 8),1);
  if (*piStack_98 == 0x4ee54fbc) {
    FUN_00799ad0(local_1a8,"HairRegion",(void *)((int)this + 0xd0),4);
  }
LAB_005d16a3:
  FUN_00799140(&iStack_108,*(undefined4 *)(param_1 + 0x2c));
  iVar15 = 0;
  iVar5 = FUN_00799150(&iStack_108);
  if (0 < iVar5) {
    do {
      FUN_007991e0(&iStack_108,iVar15,(int *)&pvStack_94);
      if (iStack_88 == 1) {
        FUN_007999d0(local_1a8,uStack_84,pvStack_94,iStack_90);
      }
      else if (iStack_88 == 2) {
        FUN_007999f0(local_1a8,uStack_84,pvStack_94,iStack_90);
      }
      iVar15 = iVar15 + 1;
    } while (iVar15 < iVar5);
  }
  fStack_f0 = FLOAT_00f998f8;
  if (*(char *)(param_1 + 0x20) == '\0') {
    fStack_f0 = 0.0;
  }
  FUN_007999d0(local_1a8,0x7e7d8a22,&fStack_f0,1);
  if ((*(uint *)(param_1 + 0xc) & 0x80000) != 0) {
    FUN_00799ad0(local_1a8,"CurlDeltas",(void *)((int)this + 0x270),0x18);
  }
  FUN_00799ad0(local_1a8,"MorphWeights",(void *)((int)this + 0x220),4);
  if (*(char *)((int)this + 0x130) != '\0') {
    uStack_100 = 0;
    FUN_00799ad0(local_1a8,"HighlightIndex",&uStack_100,1);
    FUN_00799ad0(local_1a8,"SelectionIndex",&uStack_100,1);
    FUN_00799ad0(local_1a8,"IsCASVariant",&DAT_01156af4,1);
  }
  if (bVar17) {
    MaterialParams_AppendTextureKey
              (local_1a8,0x4dc0c8bc,0xffffffff,0xffffffff,0xffffffff,0xffffffff,0);
  }
  if ((bVar3) &&
     ((*(char *)((int)this + 0x130) != '\0' ||
      (uVar7 = FUN_005ebb60(*(int *)((int)this + 0x1a0)), (char)uVar7 != '\0')))) {
    MaterialParams_AppendTextureKey
              (local_1a8,0xd652fade,0xfffffffe,0xffffffff,0xffffffff,0xffffffff,0);
  }
  uVar7 = FUN_00799490(local_1a8);
  puVar11 = FUN_004e6f70(DAT_011cc864,uVar7,0x10,0,0);
  FUN_00799520(local_1a8,puVar11,0);
  FUN_006cae70(local_1b4,0);
  FUN_00799140(&iStack_ec,puVar11);
  if (((*(uint *)(param_1 + 0xc) & 0x80000) != 0) &&
     (piVar12 = *(int **)((int)this + 0x25c), piVar12 != (int *)((int)this + 600))) {
    do {
      FUN_005c9a50(this,&iStack_ec,piVar12[4],piVar12 + 8);
      piVar12 = FUN_004e1030(piVar12);
    } while (piVar12 != (int *)((int)this + 600));
  }
                    /* Resolve structured sentinel texture keys in serialized parameter view before
                       copying its bytes into the material definition. */
  CasModelBuilder_ResolveMaterialTextureTags(this,&iStack_ec);
  FUN_006cb0a0(local_1b4,puVar11,uVar7);
  piVar12 = *(int **)(param_1 + 0x70);
  if (piVar12 != (int *)0x0) {
                    /* Clear old record+70 before invoking its virtual+4 release; acquisition of
                       replacement follows at005D1969. */
    *(void **)(param_1 + 0x70) = (void *)0x0;
    (**(code **)(*piVar12 + 4))();
  }
  piVar12 = local_1b4;
  MaterialDef_AcquireMaterial(local_1b4,(void **)(param_1 + 0x70),param_3);
  FUN_004e5e70(DAT_011cc864,(int)puVar11);
  FUN_007996b0(local_1a8);
  if (piVar12 != (int *)0x0) {
    (**(code **)(*piVar12 + 4))();
  }
  return;
}

