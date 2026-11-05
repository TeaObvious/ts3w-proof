/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete259instructions/963ownedbytes. Physical ECX graph receiver plus3stackDWORD inputs,
   RET0C: first/second lot-local XY points carry Int32level at+8; third is optional hit output.
   Section endpoints use MOVSX signedbyte coordinates/level; first endpoint level compared as
   integer to first query point. Inclusive AABB admission then Float32 determinants. Wall endpoints
   may touch query line but may not be strictly same-side; query endpoints must be strictly nonzero
   opposite-side across wall, so end-only contact and collinear segments fail. COMISS/JBE sign
   sequences yield0 for unordered/NaN as well as either signedzero, despite misleading decompiler <=
   expressions. Result Boolean is AL only; optional hit output callsA64A80/A64AC0 on first hit.
   World785E40 supplies physical graphslot4 and tile centres+0.5;785EF0 selects room-definition
   graph and firstpoint level after world-to-lot conversion. Existing ABI/types and pointer/float
   decompiler artifacts are retained; no new input validation inferred. */

uint __thiscall
WallGraph_CrossesLocalSegment(void *this,float *param_1,float *param_2,void *param_3)

{
  float *pfVar1;
  int iVar2;
  float *pfVar3;
  float *pfVar4;
  int *piVar5;
  float local_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  float local_10c;
  float local_108;
  float *local_104;
  float local_100;
  float local_fc;
  float local_f8;
  float local_f4;
  float local_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  float local_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
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
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_120 = *param_2;
  local_c0 = *param_1;
  pfVar3 = param_2;
  if (local_120 <= local_c0) {
    pfVar3 = param_1;
  }
  local_f8 = *pfVar3;
  pfVar3 = param_2;
  if (local_c0 <= local_120) {
    pfVar3 = param_1;
  }
  local_100 = *pfVar3;
  pfVar1 = param_2 + 1;
  pfVar3 = param_1 + 1;
  pfVar4 = pfVar1;
  if (*pfVar1 < param_1[1] || *pfVar1 == param_1[1]) {
    pfVar4 = pfVar3;
  }
  local_fc = *pfVar4;
  pfVar4 = pfVar1;
  if (*pfVar3 < *pfVar1 || *pfVar3 == *pfVar1) {
    pfVar4 = pfVar3;
  }
  local_f4 = *pfVar4;
  piVar5 = *(int **)((int)this + 0x1c);
  fStack_bc = *pfVar3;
  fStack_11c = *pfVar1;
  fStack_118 = local_120;
  fStack_114 = local_120;
  local_d0 = local_120;
  fStack_cc = fStack_11c;
  fStack_c8 = local_120;
  fStack_c4 = local_120;
  fStack_b8 = local_c0;
  fStack_b4 = local_c0;
  if (piVar5 != *(int **)((int)this + 0x20)) {
    do {
      iVar2 = *(int *)(*piVar5 + 0xc);
      local_10c = (float)(int)*(char *)(iVar2 + 4);
      pfVar1 = (float *)(int)*(char *)(iVar2 + 6);
      local_108 = (float)(int)*(char *)(iVar2 + 5);
      if (pfVar1 == (float *)param_1[2]) {
        local_104 = pfVar1;
        iVar2 = FUN_00c36010((byte *)(*piVar5 + 4));
        local_120 = (float)(int)*(char *)(iVar2 + 4);
        fStack_11c = (float)(int)*(char *)(iVar2 + 5);
        fStack_118 = (float)(int)*(char *)(iVar2 + 6);
        pfVar1 = &local_120;
        if (local_10c <= local_120) {
          pfVar1 = &local_10c;
        }
        if (*pfVar1 <= local_f8) {
          pfVar1 = &local_120;
          if (local_120 <= local_10c) {
            pfVar1 = &local_10c;
          }
          if (local_100 < *pfVar1 || local_100 == *pfVar1) {
            pfVar1 = &fStack_11c;
            if (local_108 <= fStack_11c) {
              pfVar1 = &local_108;
            }
            if (*pfVar1 <= local_fc) {
              pfVar1 = &fStack_11c;
              if (fStack_11c <= local_108) {
                pfVar1 = &local_108;
              }
              if (local_f4 < *pfVar1 || local_f4 == *pfVar1) {
                fStack_ec = local_108;
                local_80 = local_120 - local_c0;
                fStack_7c = fStack_11c - fStack_bc;
                fStack_78 = local_120 - fStack_b8;
                fStack_74 = local_120 - fStack_b4;
                fStack_e4 = local_10c;
                fStack_e8 = local_10c;
                local_f0 = local_10c;
                local_50 = local_d0 - local_c0;
                fStack_4c = fStack_cc - fStack_bc;
                fStack_48 = fStack_c8 - fStack_b8;
                fStack_44 = fStack_c4 - fStack_b4;
                local_30 = local_10c - local_c0;
                fStack_2c = local_108 - fStack_bc;
                fStack_28 = local_10c - fStack_b8;
                fStack_24 = local_10c - fStack_b4;
                local_70 = fStack_2c * local_50 - local_30 * fStack_4c;
                fStack_6c = fStack_2c * local_50 - local_30 * fStack_4c;
                fStack_68 = fStack_2c * local_50 - local_30 * fStack_4c;
                fStack_64 = fStack_2c * local_50 - local_30 * fStack_4c;
                local_60 = local_120 - local_10c;
                fStack_5c = fStack_11c - local_108;
                fStack_58 = local_120 - local_10c;
                fStack_54 = local_120 - local_10c;
                if (local_70 <= 0.0) {
                  if (0.0 <= local_70) {
                    pfVar3 = (float *)0x0;
                  }
                  else {
                    pfVar3 = (float *)0xffffffff;
                  }
                }
                else {
                  pfVar3 = (float *)0x1;
                }
                local_a0 = fStack_7c * local_50 - local_80 * fStack_4c;
                fStack_9c = fStack_7c * local_50 - local_80 * fStack_4c;
                fStack_98 = fStack_7c * local_50 - local_80 * fStack_4c;
                fStack_94 = fStack_7c * local_50 - local_80 * fStack_4c;
                if (local_a0 <= 0.0) {
                  if (0.0 <= local_a0) {
                    iVar2 = 0;
                  }
                  else {
                    iVar2 = -1;
                  }
                }
                else {
                  iVar2 = 1;
                }
                local_e0 = local_120;
                fStack_dc = fStack_11c;
                fStack_d8 = local_120;
                fStack_d4 = local_120;
                if (((pfVar3 == (float *)0x0) || (iVar2 == 0)) ||
                   (pfVar1 = (float *)-iVar2, pfVar3 == pfVar1)) {
                  local_40 = 0.0 - local_30;
                  fStack_3c = 0.0 - fStack_2c;
                  fStack_38 = 0.0 - fStack_28;
                  fStack_34 = 0.0 - fStack_24;
                  local_90 = fStack_3c * local_60 - local_40 * fStack_5c;
                  fStack_8c = fStack_3c * local_60 - local_40 * fStack_5c;
                  fStack_88 = fStack_3c * local_60 - local_40 * fStack_5c;
                  fStack_84 = fStack_3c * local_60 - local_40 * fStack_5c;
                  local_20 = local_d0 - local_10c;
                  fStack_1c = fStack_cc - local_108;
                  fStack_18 = fStack_c8 - local_10c;
                  fStack_14 = fStack_c4 - local_10c;
                  if (local_90 <= 0.0) {
                    if (0.0 <= local_90) {
                      pfVar3 = (float *)0x0;
                    }
                    else {
                      pfVar3 = (float *)0xffffffff;
                    }
                  }
                  else {
                    pfVar3 = (float *)0x1;
                  }
                  local_b0 = fStack_1c * local_60 - local_20 * fStack_5c;
                  fStack_ac = fStack_1c * local_60 - local_20 * fStack_5c;
                  fStack_a8 = fStack_1c * local_60 - local_20 * fStack_5c;
                  fStack_a4 = fStack_1c * local_60 - local_20 * fStack_5c;
                  if (local_b0 <= 0.0) {
                    if (0.0 <= local_b0) {
                      pfVar1 = (float *)0x0;
                    }
                    else {
                      pfVar1 = (float *)0xffffffff;
                    }
                  }
                  else {
                    pfVar1 = (float *)0x1;
                  }
                  if (((pfVar3 != (float *)0x0) && (pfVar1 != (float *)0x0)) && (pfVar3 != pfVar1))
                  {
                    if (param_3 != (void *)0x0) {
                      FUN_00a64a80(param_3,&local_10c);
                      pfVar1 = (float *)FUN_00a64ac0(param_3,&local_120);
                    }
                    return CONCAT31((int3)((uint)pfVar1 >> 8),1);
                  }
                }
              }
            }
          }
        }
      }
      piVar5 = piVar5 + 1;
    } while (piVar5 != *(int **)((int)this + 0x20));
  }
  return (uint)pfVar1 & 0xffffff00;
}

