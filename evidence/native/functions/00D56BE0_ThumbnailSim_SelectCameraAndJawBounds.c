/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Type propagation algorithm not settling */
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
  bool bVar1;
  undefined4 uVar2;
  uint uVar3;
  int *piVar4;
  float *pfVar5;
  undefined3 extraout_var;
  int iVar6;
  void *pvVar7;
  int iVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
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
    uVar2 = FUN_0055dd40(param_2 & 0xcf00);
    if ((char)uVar2 == '\0') {
      uVar2 = ThumbnailCamera_FindByHash(this,0x4c7a14fd,param_3);
      return CONCAT31((int3)((uint)uVar2 >> 8),1);
    }
    uVar3 = FUN_00d52ac0(0,param_2,'\0',&DAT_011eed58);
    uVar2 = ThumbnailCamera_FindByHash(this,uVar3,param_3);
    if ((char)uVar2 == '\0') {
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
    fVar17 = local_d4;
    if (((local_d4 != 0.0) && (((uint)local_d4 & 3) == 0)) &&
       (local_bc[0] = uVar3,
       piVar4 = (int *)FUN_0057b250((void *)((int)local_d4 + 0x28),local_bc + 5,local_bc),
       *piVar4 != *(int *)((int)fVar17 + 0x6c))) {
      pfVar5 = (float *)FUN_0057b3d0((int)local_d4);
      fVar17 = *pfVar5;
      fVar13 = pfVar5[1];
      fVar14 = pfVar5[2];
      fVar11 = pfVar5[3];
      uStack_c4 = 0;
      fStack_cc = 0.0;
      fStack_d0 = 0.0;
      fStack_c8 = FLOAT_00f998f8;
      fVar12 = 0.0 - FLOAT_00f998f8;
      fVar9 = (fVar12 * fVar13 - fVar14 * 0.0) + fVar11 * 0.0;
      fVar10 = (fVar14 * 0.0 - fVar12 * fVar17) + fVar11 * 0.0;
      fVar11 = (fVar17 * 0.0 - fVar13 * 0.0) + fVar11 * fVar12;
      fVar15 = (fVar9 * fVar14 - fVar11 * fVar17) * DAT_0103fd88;
      fVar16 = (fVar10 * fVar17 - fVar9 * fVar13) * DAT_0103fd88;
      fVar17 = (fVar9 * fVar17 - fVar9 * fVar17) * DAT_0103fd88;
      param_3[4] = (fVar11 * fVar13 - fVar10 * fVar14) * DAT_0103fd88 + 0.0;
      param_3[5] = fVar15 + 0.0;
      param_3[6] = fVar16 + fVar12;
      param_3[7] = fVar17 + 0.0;
      pfVar5 = (float *)FUN_0057b390((int)local_d4);
      fVar17 = pfVar5[1];
      fVar13 = pfVar5[2];
      fVar14 = pfVar5[3];
      *param_3 = *pfVar5;
      param_3[1] = fVar17;
      param_3[2] = fVar13;
      param_3[3] = fVar14;
      *(undefined1 *)(param_3 + 0x1b) = 0;
    }
    uVar2 = FUN_00ec60d0((uint *)&local_d4);
    return CONCAT31((int3)((uint)uVar2 >> 8),1);
  }
  bVar1 = FUN_00595210(&DAT_011cede0,10);
  if (param_5 == 3) {
    pfVar5 = (float *)CONCAT31(extraout_var,bVar1);
    if ((bVar1) && (pfVar5 = (float *)FUN_0055dd40(param_2 & 0x200), (char)pfVar5 != '\0')) {
      if (((byte)param_2 & 0x7f) != 4) {
        uVar2 = ThumbnailCamera_FindByHash(this,0xab9eea1a,param_3);
        return CONCAT31((int3)((uint)uVar2 >> 8),1);
      }
      uVar2 = ThumbnailCamera_FindByHash(this,0x50716538,param_3);
      return CONCAT31((int3)((uint)uVar2 >> 8),1);
    }
    goto LAB_00d570ec;
  }
  if (bVar1) {
    bVar1 = ((byte)param_2 & 0x7f) != 4;
    uVar3 = param_2 & 0xcf00;
    if (uVar3 < 0x501) {
      if (uVar3 == 0x500) {
        if (param_5 == 1) {
          if (bVar1) {
            uVar2 = 0x69658c1b;
          }
          else {
            uVar2 = 0xc552ad91;
          }
        }
        else if (bVar1) {
          uVar2 = 0xa0614095;
        }
        else {
          uVar2 = 0xad938a2b;
        }
      }
      else if (uVar3 == 0x200) {
        if (param_5 == 1) {
          if (bVar1) {
            uVar2 = 0xaac493d0;
          }
          else {
            uVar2 = 0x50ae0b3a;
          }
        }
        else if (bVar1) {
          uVar2 = 0x264f90e6;
        }
        else {
          uVar2 = 0x324f3600;
        }
      }
      else if (uVar3 == 0x300) {
        if (param_5 == 1) {
          if (bVar1) {
            uVar2 = 0x1dc4e7b9;
          }
          else {
            uVar2 = 0xb1c905cb;
          }
        }
        else if (bVar1) {
          uVar2 = 0x444986d3;
        }
        else {
          uVar2 = 0x9e375fa5;
        }
      }
      else {
        if (uVar3 != 0x400) goto LAB_00d56fa4;
        if (param_5 == 1) {
          if (bVar1) {
            uVar2 = 0xb124ea6f;
          }
          else {
            uVar2 = 0x350a5b55;
          }
        }
        else if (bVar1) {
          uVar2 = 0x3662bab9;
        }
        else {
          uVar2 = 0x2dec734f;
        }
      }
    }
    else if (uVar3 == 0x600) {
      if (bVar1) {
        uVar2 = 0xaaaa79dd;
      }
      else {
        uVar2 = 0x1562d553;
      }
    }
    else {
      if (uVar3 != 0x700) goto LAB_00d56fa4;
      if (bVar1) {
        uVar2 = 0xafcd1afe;
      }
      else {
        uVar2 = 0xd883e1f8;
      }
    }
  }
  else {
LAB_00d56fa4:
    uVar2 = 0xab633577;
  }
  pfVar5 = (float *)ThumbnailCamera_FindByHash(this,uVar2,param_3);
  if (param_1 != (int *)0x0) {
    iVar6 = (**(code **)(*param_1 + 0xc))(0x17f1d88);
    pfVar5 = (float *)0x0;
    if (iVar6 != 0) {
      local_d4 = 0.0;
      fStack_d0 = 0.0;
      fStack_cc = 0.0;
      fStack_c8 = 0.0;
      pvVar7 = (void *)FUN_006f48e0(iVar6);
      if (pvVar7 == (void *)0x0) {
        iVar6 = FUN_006db500(iVar6 + 0x210);
        if (((iVar6 != 0) && (iVar8 = GetNativeDescriptorTypeName_Field44(iVar6), iVar8 != 0)) &&
           ((pvVar7 = (void *)FUN_0068f1e0(**(int **)(iVar6 + 0x40)), pvVar7 != (void *)0x0 &&
            (uVar3 = FUN_0070cf50(pvVar7,0x405ec0bd), uVar3 != 0xffffffff)))) {
          iVar6 = FUN_0068f130((int)pvVar7);
          iVar6 = Matrix4_InvertWithReplicatedDeterminant
                            ((undefined1 (*) [16])auStack_54,
                             (undefined1 (*) [16])(iVar6 + uVar3 * 0x40),afStack_a4);
          local_d4 = *(float *)(iVar6 + 0x30);
          fStack_d0 = *(float *)(iVar6 + 0x34);
          fStack_cc = *(float *)(iVar6 + 0x38);
          fStack_c8 = *(float *)(iVar6 + 0x3c);
        }
      }
      else {
        iVar6 = FUN_00575c80(*(int *)((int)pvVar7 + 0x20) + 0x28);
        if ((-1 < iVar6) &&
           (uVar2 = FUN_005735e0(pvVar7,iVar6,auStack_94), local_d4 = fStack_64,
           fStack_d0 = fStack_60, fStack_cc = fStack_5c, fStack_c8 = fStack_58, (char)uVar2 == '\0')
           ) {
          return uVar2;
        }
      }
      uVar2 = FUN_0055dd40(param_2 & 0xcf00);
      fVar17 = _DAT_0106c4e4;
      if ((char)uVar2 != '\0') {
        local_d4 = *param_3 + local_d4;
        fStack_d0 = param_3[1] + fStack_d0;
        fStack_cc = param_3[2] + fStack_cc;
        fStack_c8 = param_3[3] + fStack_c8;
      }
      fVar13 = fStack_d0 - _DAT_0106c4e4;
      fVar14 = fStack_cc - _DAT_0106c4e4;
      fVar11 = fStack_c8 - _DAT_0106c4e4;
      *param_4 = local_d4 - _DAT_0106c4e4;
      param_4[1] = fVar13;
      param_4[2] = fVar14;
      param_4[3] = fVar11;
      param_4[4] = fVar17 + local_d4;
      param_4[5] = fVar17 + fStack_d0;
      param_4[6] = fVar17 + fStack_cc;
      param_4[7] = fVar17 + fStack_c8;
      pfVar5 = param_4;
    }
  }
LAB_00d570ec:
  return CONCAT31((int3)((uint)pfVar5 >> 8),1);
}

