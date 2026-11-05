/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 domain-owner static comparison. ECX solver; five physical words, RET14.
   Iterates0x30-byte samples, invokes69FF70 visibility/source evaluation; enclosed-only branch
   applies exposure/compression/fill, sunny branch keeps raw sourceRGB and zeroalpha, clamp and
   packed output through60D360. Global scratch occluder vectors are native state; project
   request-local arrays are separate implementation. */

void __thiscall
RoomLight_WriteSurfaceSamples
          (void *this,int *param_1,int *param_2,char *param_3,void *param_4,char param_5)

{
  ushort uVar1;
  ushort uVar2;
  int iVar3;
  int iVar4;
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  float *pfVar7;
  float *pfVar8;
  float10 fVar9;
  float fVar10;
  int local_e4;
  int *local_e0;
  uint local_d8;
  int *local_d4;
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float local_b4;
  undefined4 local_b0;
  float local_ac;
  float local_a8;
  float local_a4;
  float local_a0;
  undefined4 local_9c;
  float local_98;
  float local_94;
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
  undefined1 local_60 [16];
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30 [4];
  undefined4 local_20 [7];
  
  if ((_DAT_011d1378 & 1) == 0) {
    _DAT_011d1378 = _DAT_011d1378 | 1;
    _DAT_011d1368 = 0;
    _DAT_011d136c = 0;
    _DAT_011d1370 = 0;
    _DAT_011d1374 = "Lighting/LightingOccluder/m2DOccluders";
    FUN_00f7f381((_onexit_t)&LAB_00f92b10);
  }
  if ((_DAT_011d1378 & 2) == 0) {
    _DAT_011d1378 = _DAT_011d1378 | 2;
    _DAT_011d1358 = 0;
    _DAT_011d135c = 0;
    _DAT_011d1360 = 0;
    _DAT_011d1364 = "Lighting/LightingOccluder/m3DOccluders";
    FUN_00f7f381((_onexit_t)&LAB_00f92b00);
  }
  local_d8 = (param_1[1] - *param_1) / 0x30;
  local_e0 = (int *)0x0;
  local_d4 = (int *)0x0;
  if (((*param_3 != '\0') || (param_3[1] != '\0')) && (3 < local_d8)) {
    FUN_0069f3f0((undefined1 (*) [16])&local_d0,param_1);
    if (*param_3 != '\0') {
      local_e0 = (int *)&DAT_011d1368;
      FUN_006a30a0(this,&local_d0,(uint *)&DAT_011d1368);
    }
    if (param_3[1] != '\0') {
      local_d4 = (int *)&DAT_011d1358;
      FUN_006a3130(this,&local_d0,(uint *)&DAT_011d1358);
    }
  }
  if (local_d8 != 0) {
    local_80 = 1.0;
    fStack_7c = 1.0;
    fStack_78 = 1.0;
    fStack_74 = 1.0;
    local_e4 = 0;
    do {
      pfVar8 = (float *)(*param_1 + local_e4);
      uVar1 = *(ushort *)((int)pfVar8 + 0x22);
      iVar3 = param_2[1];
      uVar2 = *(ushort *)(pfVar8 + 8);
      iVar4 = *param_2;
      FUN_0069ff70(this,&local_d0,local_e0,local_d4,param_3,pfVar8);
      fVar10 = 0.0;
      if (*(char *)((int)this + 0x18) == '\0') {
        fStack_34 = *(float *)((int)this + 0x160);
        local_40 = fStack_34 * local_d0;
        fStack_3c = fStack_34 * fStack_cc;
        fStack_38 = fStack_34 * fStack_c8;
        fStack_34 = fStack_34 * fStack_c4;
        pfVar7 = (float *)FUN_0069ee50(local_30,&local_40);
        local_d0 = *pfVar7;
        fStack_cc = pfVar7[1];
        fStack_c8 = pfVar7[2];
        fStack_c4 = pfVar7[3];
        fVar10 = local_80 * local_d0;
        local_50 = fStack_78 * fStack_c8 + fStack_7c * fStack_cc + fVar10;
        fStack_4c = fVar10 + fVar10 + fStack_7c * fStack_cc;
        fStack_48 = fVar10 + fVar10 + fStack_78 * fStack_c8;
        fStack_44 = fVar10 + fVar10 + fStack_74 * fStack_c4;
        pfVar7 = (float *)FUN_007e51a0(&DAT_011d1ba0);
        fStack_64 = *pfVar7;
        local_94 = local_50 * fStack_64;
        fStack_6c = local_50 * fStack_64;
        fStack_68 = local_50 * fStack_64;
        fStack_64 = local_50 * fStack_64;
        local_ac = -0.0 - local_94;
        local_a8 = (float)((uint)local_94 & (int)local_ac >> 0x1f);
        local_b0 = 0;
        local_98 = 1.0 - local_a8;
        local_b4 = 1.0;
        local_a4 = (float)(~((int)local_98 >> 0x1f) & (uint)local_a8 |
                          (int)local_98 >> 0x1f & (uint)1.0);
        local_a0 = local_a8;
        local_70 = local_94;
        fVar9 = FUN_006ab410(param_4,(int)pfVar8);
        fVar10 = (float)(((float10)1 - (float10)local_a4) * fVar9);
        if (param_5 != '\0') {
          pfVar8 = (float *)FUN_006ab310(param_4,local_20);
          local_d0 = fVar10 * *pfVar8 + local_d0;
          fStack_cc = fVar10 * pfVar8[1] + fStack_cc;
          fStack_c8 = fVar10 * pfVar8[2] + fStack_c8;
          fStack_c4 = fVar10 * pfVar8[3] + fStack_c4;
        }
      }
      local_90 = local_d0;
      fStack_8c = fStack_cc;
      fStack_88 = fStack_c8;
      auVar5._4_4_ = fStack_cc;
      auVar5._0_4_ = local_d0;
      auVar5._8_4_ = fStack_c8;
      auVar5._12_4_ = fVar10;
      auVar6._4_4_ = fStack_7c;
      auVar6._0_4_ = local_80;
      auVar6._8_4_ = fStack_78;
      auVar6._12_4_ = fStack_74;
      local_60 = minps(auVar5,auVar6);
      fStack_84 = fVar10;
      FUN_0060d360(&local_9c,(float *)local_60);
      local_e4 = local_e4 + 0x30;
      local_d8 = local_d8 - 1;
      *(undefined4 *)((uint)uVar1 * iVar3 + (uint)uVar2 * 4 + iVar4) = local_9c;
    } while (local_d8 != 0);
  }
  return;
}

