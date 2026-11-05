/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst PC1.67 original contract. ECX cluster; camera vector, primary batch, optional secondary
   batch, low-byte context flags in two slots, RET14. Clears category submissions and derives
   distance/size LOD fractions, clamps for ordinary finite inputs, invokes7B98D0 then7B8BE0 to write
   per-instance LOD index/alpha fields+4C..6C. Distinct fade at+74 can be1 or distance-derived and
   is copied to shader opacity; +7C/+7E hold counters/flags. Complete code retains
   degenerate/nonfinite arithmetic and seasonal branches; do not replace with one universal linear
   fade or assert NaN safety. */

void __thiscall
Flora_BuildPerInstanceLodAndFade
          (void *this,float *param_1,int *param_2,int *param_3,char param_4,char param_5)

{
  int *piVar1;
  bool bVar2;
  undefined4 *puVar3;
  uint uVar4;
  void *pvVar5;
  void *this_00;
  float *pfVar6;
  float fVar7;
  float fVar9;
  float fVar10;
  undefined1 auVar8 [16];
  int local_f0;
  int *local_ec;
  int *local_e8;
  float local_e4;
  void *local_e0;
  float local_dc;
  uint local_d8;
  float local_d4;
  uint local_d0;
  float local_cc;
  float local_c8;
  undefined *local_c4;
  float local_c0;
  undefined4 local_bc;
  float local_b8;
  float local_b4;
  float local_b0;
  float local_ac;
  int *local_a8;
  float local_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  int local_8c;
  float local_88;
  float local_84;
  float local_80;
  float local_7c;
  float local_78;
  undefined4 local_74;
  float local_70;
  float local_6c;
  undefined4 local_68;
  float local_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  undefined1 local_40 [16];
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_e0 = this;
  FUN_0070eb10(this,(int)param_2);
  if (param_3 != (int *)0x0) {
    FUN_0070eb10(this_00,(int)param_3);
  }
  local_a0 = 1.0;
  fStack_9c = 0.0;
  *(undefined1 *)((int)param_2 + 0x55) = 0;
  *(undefined1 *)((int)param_2 + 0x56) = 0;
  local_30 = *param_1 * 1.0;
  fStack_2c = param_1[1] * 0.0;
  fStack_28 = param_1[2] * 1.0;
  fStack_24 = param_1[3] * 1.0;
  fStack_1c = 0.0;
  fStack_98 = local_a0;
  fStack_94 = local_a0;
  local_20 = local_a0;
  fStack_18 = local_a0;
  fStack_14 = local_a0;
  local_c4 = FUN_006de190();
  local_e4 = 1.0;
  local_8c = *(int *)(*(int *)((int)this + 0x4b0) + 0x17c);
  local_84 = *(float *)(local_c4 + 0x2c);
  if (local_8c == 0) {
    local_e4 = *(float *)(local_c4 + 0x20);
    local_dc = *(float *)(local_c4 + 0x1c);
  }
  else {
    local_dc = local_e4;
    if (local_8c == 1) {
      local_e4 = *(float *)(local_c4 + 0x28);
      local_dc = *(float *)(local_c4 + 0x24);
    }
  }
  puVar3 = (undefined4 *)Flora_GetTreeTypeLodDistanceRecord(PTR_DAT_0115c488,local_8c);
  local_74 = *puVar3;
  local_70 = (float)puVar3[1];
  local_6c = (float)puVar3[2];
  local_64 = (float)puVar3[4];
  local_68 = puVar3[3];
  local_80 = local_64 * local_64;
  local_d8 = local_d8 & 0xffffff00;
  if (((((PTR_DAT_0115c488 != (undefined *)0x0) && (PTR_DAT_0115c488[0x1da] != '\0')) &&
       ((PTR_DAT_0115c488[0x1d8] != '\0' || (PTR_DAT_0115c488[0x1d9] != '\0')))) &&
      ((PTR_DAT_0115c488[0x1db] == '\0' ||
       ((PTR_DAT_0115c488[0x1d8] == '\0' && (PTR_DAT_0115c488[0x1d9] == '\0')))))) &&
     ((*(int *)((int)this + 0x4b4) != 0 &&
      (uVar4 = FUN_00715d50(*(int *)((int)this + 0x4b4)), (char)uVar4 != '\0')))) {
    local_d8 = CONCAT31(local_d8._1_3_,1);
  }
  local_d0 = (uint)*(ushort *)(PTR_DAT_0115c488 + 0x16);
  if ((param_5 != '\0') || (bVar2 = false, PTR_DAT_0115c488[0x10] != '\0')) {
    bVar2 = true;
  }
  local_ec = (int *)*param_2;
  local_a8 = (int *)param_2[1];
  if (local_ec != local_a8) {
    do {
      local_f0 = *local_ec;
      local_cc = 1.0;
      pfVar6 = (float *)(local_f0 * 0x80 + *(int *)((int)this + 0x210));
      if (bVar2) {
        fVar7 = local_cc;
LAB_0071045b:
        *(byte *)((int)pfVar6 + 0x7e) = *(byte *)((int)pfVar6 + 0x7e) | 1;
        SpeedTree_SetLodFraction(*(void **)(*(int *)((int)this + 0x4b0) + 0x34),fVar7);
        SpeedTree_ComputeLodIndicesAndAlpha
                  (*(void **)(*(int *)((int)this + 0x4b0) + 0x34),pfVar6 + 0x13,-1.0,(uchar)local_d8
                  );
        if (0.0 < pfVar6[0x1b]) {
          *(undefined1 *)((int)param_2 + 0x55) = 1;
          if (pfVar6[0x1b] == 1.0) goto LAB_00710835;
        }
        local_e8 = param_2;
        if ((param_3 != (int *)0x0) || (param_4 != '\0')) {
          if (((local_8c != 0) && (local_8c != 1)) ||
             (((local_c4[0x3c] != '\x01' || (local_c4[0x3d] != '\0')) || (bVar2)))) {
            pfVar6[0x1d] = 1.0;
          }
          else {
            fVar7 = *pfVar6 * local_20 - local_30;
            fVar9 = pfVar6[1] * fStack_1c - fStack_2c;
            fVar10 = pfVar6[2] * fStack_18 - fStack_28;
            auVar8._0_4_ = fVar10 * fVar10 + fVar9 * fVar9 + fVar7 * fVar7;
            auVar8._4_4_ = auVar8._0_4_;
            auVar8._8_4_ = auVar8._0_4_;
            auVar8._12_4_ = auVar8._0_4_;
            local_40 = sqrtps(auVar8,auVar8);
            fStack_44 = pfVar6[8];
            local_50 = fStack_44 * 2.0;
            fStack_4c = fStack_44 * 2.0;
            fStack_48 = fStack_44 * 2.0;
            fStack_44 = fStack_44 * 2.0;
            local_78 = ((float)local_40._0_4_ - local_50 * local_dc) * local_e4;
            local_7c = -0.0 - local_78;
            local_b4 = (float)((uint)local_78 & (int)local_7c >> 0x1f);
            local_bc = 0;
            local_d4 = 1.0 - local_b4;
            local_88 = 1.0;
            local_a4 = (float)(~((int)local_d4 >> 0x1f) & (uint)local_b4 |
                              (int)local_d4 >> 0x1f & (uint)1.0);
            local_ac = local_b4;
            if ((local_a4 < 0.999) || (pfVar6[0x1d] <= 0.999 && pfVar6[0x1d] != 0.999)) {
              if (local_a4 < pfVar6[0x1d]) {
                pfVar6[0x1d] = local_a4;
              }
              if (local_a4 < 0.005) {
                pfVar6[0x1d] = 0.0;
                *(undefined2 *)(pfVar6 + 0x1f) = 0;
                goto LAB_00710835;
              }
              fStack_54 = local_a4;
              if (local_a4 < local_84) {
                fStack_54 = 0.0;
              }
              local_60 = pfVar6[0xc];
              fStack_5c = pfVar6[0xd];
              fStack_58 = pfVar6[0xe];
              pfVar6[0xc] = local_60;
              pfVar6[0xd] = fStack_5c;
              pfVar6[0xe] = fStack_58;
              pfVar6[0xf] = fStack_54;
              if (*(short *)(pfVar6 + 0x1f) == 0) {
                *(undefined2 *)(pfVar6 + 0x1f) = (undefined2)local_d0;
              }
              *(undefined1 *)((int)this + 0x538) = 1;
              if ((param_4 == '\0') || (fStack_54 <= 0.3)) {
                local_e8 = param_3;
              }
              else {
              }
            }
            else {
              pfVar6[0x1d] = 1.0;
            }
          }
        }
        if ((*(byte *)((int)pfVar6 + 0x7e) & 2) != 0) {
          local_e8 = (int *)0x0;
        }
        *(undefined1 *)((int)param_2 + 0x56) = 1;
        if (local_e8 != (int *)0x0) {
          local_c8 = pfVar6[0x16];
          fVar7 = pfVar6[0x13];
          local_b8 = pfVar6[0x18];
          fVar9 = pfVar6[0x15];
          fVar10 = pfVar6[0x17];
          local_c0 = pfVar6[0x19];
          local_b0 = pfVar6[0x1a];
          if ((-1 < (int)fVar7) && (pfVar6[0x14] <= 255.0 && pfVar6[0x14] != 255.0)) {
            pvVar5 = (void *)((int)fVar7 * 0x10 + local_e8[4]);
            piVar1 = *(int **)((int)pvVar5 + 4);
            if (piVar1 < *(int **)((int)pvVar5 + 8)) {
              *(int **)((int)pvVar5 + 4) = piVar1 + 1;
              if (piVar1 != (int *)0x0) {
                *piVar1 = local_f0;
              }
            }
            else {
              FUN_00982420(pvVar5,piVar1,&local_f0);
            }
          }
          if ((-1 < (int)fVar9) && (local_c8 < 255.0)) {
            pvVar5 = (void *)((int)fVar9 * 0x10 + local_e8[8]);
            piVar1 = *(int **)((int)pvVar5 + 4);
            if (piVar1 < *(int **)((int)pvVar5 + 8)) {
              *(int **)((int)pvVar5 + 4) = piVar1 + 1;
              if (piVar1 != (int *)0x0) {
                *piVar1 = local_f0;
              }
            }
            else {
              FUN_00982420(pvVar5,piVar1,&local_f0);
            }
          }
          if ((-1 < (int)fVar10) && (local_c0 < 255.0)) {
            pvVar5 = (void *)((int)fVar10 * 0x10 + local_e8[0xc]);
            piVar1 = *(int **)((int)pvVar5 + 4);
            if (piVar1 < *(int **)((int)pvVar5 + 8)) {
              *(int **)((int)pvVar5 + 4) = piVar1 + 1;
              if (piVar1 != (int *)0x0) {
                *piVar1 = local_f0;
              }
            }
            else {
              FUN_00982420(pvVar5,piVar1,&local_f0);
            }
          }
          this = local_e0;
          if ((-1 < (int)local_b8) && (local_b0 < 255.0)) {
            pvVar5 = (void *)((int)local_b8 * 0x10 + local_e8[0xc]);
            piVar1 = *(int **)((int)pvVar5 + 4);
            if (piVar1 < *(int **)((int)pvVar5 + 8)) {
              *(int **)((int)pvVar5 + 4) = piVar1 + 1;
              if (piVar1 != (int *)0x0) {
                *piVar1 = local_f0;
              }
            }
            else {
              FUN_00982420(pvVar5,piVar1,&local_f0);
              this = local_e0;
            }
          }
        }
      }
      else {
        local_a0 = (param_1[2] - pfVar6[2]) * (param_1[2] - pfVar6[2]) +
                   (param_1[1] - pfVar6[1]) * (param_1[1] - pfVar6[1]) +
                   (*param_1 - *pfVar6) * (*param_1 - *pfVar6);
        fStack_9c = local_a0;
        fStack_98 = local_a0;
        fStack_94 = local_a0;
        if (local_a0 < local_80) {
          fVar7 = (local_70 - SQRT(local_a0)) * local_6c;
          goto LAB_0071045b;
        }
        *(byte *)((int)pfVar6 + 0x7e) = *(byte *)((int)pfVar6 + 0x7e) & 0xfe;
      }
LAB_00710835:
      local_ec = local_ec + 1;
    } while (local_ec != local_a8);
  }
  if (param_3 != (int *)0x0) {
    *(undefined1 *)((int)param_3 + 0x56) = *(undefined1 *)((int)param_2 + 0x56);
  }
  return;
}

