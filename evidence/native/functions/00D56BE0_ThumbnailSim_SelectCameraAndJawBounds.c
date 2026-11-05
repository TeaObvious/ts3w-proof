/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Type propagation algorithm not settling */

/* Retained historical annotation 2, previous C line 7; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst note (PC1.67 SACS migration contract): ECX manager plus five stack words;
   species/age/camera branches use original immediate hashes. Pets-installed gate10; childage4
   elseadult, head/bust selectors, separatebody2/side3 paths. Normal head path finds original
   jaw405EC0BD from model/rig, starts anchor0 if unavailable, adds authored position for pets,
   constructs jaw plus/minus.15 box. Human-only missing-jaw exception is not in this native path.
   Body/side resources and reference rotations are distinct, not inferred from head behavior. */

undefined4 __thiscall
ThumbnailSim_SelectCameraAndJawBounds
          (void *this,int *param_1,uint param_2,float *param_3,float *param_4,int param_5)

{
  float fVar1;
  float fVar2;
  float fVar3;
  bool bVar4;
  undefined4 uVar5;
  uint uVar6;
  int *piVar7;
  float *pfVar8;
  undefined3 extraout_var;
  int iVar9;
  void *pvVar10;
  int iVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float local_d4;
  float fStack_d0;
  float fStack_cc;
  float fStack_c8;
  undefined4 uStack_c4;
  uint local_bc [6];
  float afStack_a4 [4];
  uint auStack_94 [12];
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  undefined1 auStack_54 [80];
  
  if (param_5 == 2) {
    uVar5 = FUN_0055dd40(param_2 & 0xcf00);
    if ((char)uVar5 == '\0') {
      uVar5 = ThumbnailCamera_FindByHash(this,0x4c7a14fd,param_3);
      return CONCAT31((int3)((uint)uVar5 >> 8),1);
    }
    uVar6 = FUN_00d52ac0(0,param_2,'\0',&DAT_011eed58);
    uVar5 = ThumbnailCamera_FindByHash(this,uVar6,param_3);
    if ((char)uVar5 == '\0') {
      ThumbnailCamera_FindByHash(this,0x4eb9f650,param_3);
    }
    local_bc[2] = 0;
    local_bc[4] = 1;
    local_bc[1] = 0x1dcc3c9e;
    local_bc[3] = 0x355e0a6;
    local_d4 = 0.0;
    if ((DAT_011d4c84 != (int *)0x0) &&
       ((**(code **)(*DAT_011d4c84 + 0x34))
                  (local_bc + 1,0x370181d,&local_d4,0,0,ResourceCallback_InvokeVirtual04,0,1),
       DAT_011d4c84 != (int *)0x0)) {
      (**(code **)(*DAT_011d4c84 + 0x40))(&local_d4);
    }
    fVar1 = local_d4;
    if ((local_d4 != 0.0) && (((uint)local_d4 & 3) == 0)) {
      local_bc[0] = uVar6;
      piVar7 = (int *)FUN_0057b250((void *)((int)local_d4 + 0x28),local_bc + 5,local_bc);
      if (*piVar7 != *(int *)((int)fVar1 + 0x6c)) {
        pfVar8 = (float *)FUN_0057b3d0((int)local_d4);
        fVar1 = *pfVar8;
        fVar2 = pfVar8[1];
        fVar3 = pfVar8[2];
        fVar14 = pfVar8[3];
        uStack_c4 = 0;
        fStack_cc = 0.0;
        fStack_d0 = 0.0;
        fStack_c8 = 1.0;
        fVar12 = (fVar2 * -1.0 - fVar3 * 0.0) + fVar14 * 0.0;
        fVar13 = (fVar3 * 0.0 - fVar1 * -1.0) + fVar14 * 0.0;
        fVar14 = (fVar1 * 0.0 - fVar2 * 0.0) + fVar14 * -1.0;
        param_3[4] = (fVar14 * fVar2 - fVar13 * fVar3) * 2.0 + 0.0;
        param_3[5] = (fVar12 * fVar3 - fVar14 * fVar1) * 2.0 + 0.0;
        param_3[6] = (fVar13 * fVar1 - fVar12 * fVar2) * 2.0 + -1.0;
        param_3[7] = (fVar12 * fVar1 - fVar12 * fVar1) * 2.0 + 0.0;
        pfVar8 = (float *)FUN_0057b390((int)local_d4);
        fVar1 = pfVar8[1];
        fVar2 = pfVar8[2];
        fVar3 = pfVar8[3];
        *param_3 = *pfVar8;
        param_3[1] = fVar1;
        param_3[2] = fVar2;
        param_3[3] = fVar3;
        *(undefined1 *)(param_3 + 0x1b) = 0;
      }
    }
    uVar5 = FUN_00ec60d0((uint *)&local_d4);
    return CONCAT31((int3)((uint)uVar5 >> 8),1);
  }
  bVar4 = FUN_00595210(&DAT_011cede0,10);
  if (param_5 == 3) {
    pfVar8 = (float *)CONCAT31(extraout_var,bVar4);
    if (bVar4) {
      pfVar8 = (float *)FUN_0055dd40(param_2 & 0x200);
      if ((char)pfVar8 != '\0') {
        if (((byte)param_2 & 0x7f) == 4) {
          uVar5 = ThumbnailCamera_FindByHash(this,0x50716538,param_3);
          return CONCAT31((int3)((uint)uVar5 >> 8),1);
        }
        uVar5 = ThumbnailCamera_FindByHash(this,0xab9eea1a,param_3);
        return CONCAT31((int3)((uint)uVar5 >> 8),1);
      }
    }
    goto LAB_00d570ec;
  }
  if (bVar4) {
    bVar4 = ((byte)param_2 & 0x7f) != 4;
    uVar6 = param_2 & 0xcf00;
    if (uVar6 < 0x501) {
      if (uVar6 == 0x500) {
        if (param_5 == 1) {
          if (bVar4) {
            uVar5 = 0x69658c1b;
          }
          else {
            uVar5 = 0xc552ad91;
          }
        }
        else if (bVar4) {
          uVar5 = 0xa0614095;
        }
        else {
          uVar5 = 0xad938a2b;
        }
      }
      else if (uVar6 == 0x200) {
        if (param_5 == 1) {
          if (bVar4) {
            uVar5 = 0xaac493d0;
          }
          else {
            uVar5 = 0x50ae0b3a;
          }
        }
        else if (bVar4) {
          uVar5 = 0x264f90e6;
        }
        else {
          uVar5 = 0x324f3600;
        }
      }
      else if (uVar6 == 0x300) {
        if (param_5 == 1) {
          if (bVar4) {
            uVar5 = 0x1dc4e7b9;
          }
          else {
            uVar5 = 0xb1c905cb;
          }
        }
        else if (bVar4) {
          uVar5 = 0x444986d3;
        }
        else {
          uVar5 = 0x9e375fa5;
        }
      }
      else {
        if (uVar6 != 0x400) goto LAB_00d56fa4;
        if (param_5 == 1) {
          if (bVar4) {
            uVar5 = 0xb124ea6f;
          }
          else {
            uVar5 = 0x350a5b55;
          }
        }
        else if (bVar4) {
          uVar5 = 0x3662bab9;
        }
        else {
          uVar5 = 0x2dec734f;
        }
      }
    }
    else if (uVar6 == 0x600) {
      if (bVar4) {
        uVar5 = 0xaaaa79dd;
      }
      else {
        uVar5 = 0x1562d553;
      }
    }
    else {
      if (uVar6 != 0x700) goto LAB_00d56fa4;
      if (bVar4) {
        uVar5 = 0xafcd1afe;
      }
      else {
        uVar5 = 0xd883e1f8;
      }
    }
  }
  else {
LAB_00d56fa4:
    uVar5 = 0xab633577;
  }
  pfVar8 = (float *)ThumbnailCamera_FindByHash(this,uVar5,param_3);
  if (param_1 == (int *)0x0) goto LAB_00d570ec;
  iVar9 = (**(code **)(*param_1 + 0xc))(0x17f1d88);
  pfVar8 = (float *)0x0;
  if (iVar9 == 0) goto LAB_00d570ec;
  local_d4 = 0.0;
  fStack_d0 = 0.0;
  fStack_cc = 0.0;
  fStack_c8 = 0.0;
  pvVar10 = (void *)SceneAnimation_GetRenderState(iVar9);
  if (pvVar10 == (void *)0x0) {
    iVar9 = FUN_006db500(iVar9 + 0x210);
    if ((((iVar9 != 0) && (iVar11 = GetNativeDescriptorTypeName_Field44(iVar9), iVar11 != 0)) &&
        (pvVar10 = (void *)SharedPointerOffset0x64_Load32(**(int **)(iVar9 + 0x40)),
        pvVar10 != (void *)0x0)) && (uVar6 = FUN_0070cf50(pvVar10,0x405ec0bd), uVar6 != 0xffffffff))
    {
      iVar9 = FUN_0068f130((int)pvVar10);
      iVar9 = Matrix4_InvertWithReplicatedDeterminant
                        ((undefined1 (*) [16])auStack_54,(undefined1 (*) [16])(iVar9 + uVar6 * 0x40)
                         ,afStack_a4);
      fStack_64 = *(float *)(iVar9 + 0x30);
      fStack_60 = *(float *)(iVar9 + 0x34);
      fStack_5c = *(float *)(iVar9 + 0x38);
      fStack_58 = *(float *)(iVar9 + 0x3c);
      goto LAB_00d5708b;
    }
  }
  else {
    iVar9 = FUN_00575c80(*(int *)((int)pvVar10 + 0x20) + 0x28);
    if (-1 < iVar9) {
      uVar5 = FUN_005735e0(pvVar10,iVar9,auStack_94);
      if ((char)uVar5 == '\0') {
        return uVar5;
      }
LAB_00d5708b:
      local_d4 = fStack_64;
      fStack_d0 = fStack_60;
      fStack_cc = fStack_5c;
      fStack_c8 = fStack_58;
    }
  }
  uVar5 = FUN_0055dd40(param_2 & 0xcf00);
  if ((char)uVar5 != '\0') {
    local_d4 = *param_3 + local_d4;
    fStack_d0 = param_3[1] + fStack_d0;
    fStack_cc = param_3[2] + fStack_cc;
    fStack_c8 = param_3[3] + fStack_c8;
  }
  *param_4 = local_d4 - 0.15;
  param_4[1] = fStack_d0 - 0.15;
  param_4[2] = fStack_cc - 0.15;
  param_4[3] = fStack_c8 - 0.15;
  param_4[4] = local_d4 + 0.15;
  param_4[5] = fStack_d0 + 0.15;
  param_4[6] = fStack_cc + 0.15;
  param_4[7] = fStack_c8 + 0.15;
  pfVar8 = param_4;
LAB_00d570ec:
  return CONCAT31((int3)((uint)pfVar8 >> 8),1);
}

