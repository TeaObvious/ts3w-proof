/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name describes bounded
   adjacency/product-design role, not recovered symbol. Physical thiscall ECX receiver, two pointer
   stackwords, both exits RET8; EAX returns selected resolved product+8 or original empty
   key011EC8C0. Second output may be null; successful lookup copies12 DWORDs of selected design only
   when nonnull. Position first two lanes are binary32 rounded by FISTP, third is byte; do not infer
   homogeneous float3 ABI from decompiler float pointer. Actual adjacent ring traversal uses
   owner64/6C and eligibility branches C5B830/C5B860. Best starts binary32 minus1 atFAB218. Calls
   C5BC60 atB4B208/B4B328, FST binary32 local WITHOUT pop, FLD previous rounded best, FXCH/FCOMIP,
   then JBE rejects equal/lower/unordered candidates. Therefore candidate remains extended x87
   during comparison, while saved best and winning stored height are binary32. Decompiler float10
   comparison is essential: replacing with two rounded floats can change winner. Winning branch
   preserves full four-DWORD product key and actual design selection. Final lookup allows default1;
   no claim complete current planning or cache lifetime parity. */

undefined4 * __thiscall
FencePostDesign_SelectTallestAdjacentProduct(void *this,float *param_1,undefined4 *param_2)

{
  int iVar1;
  uint *productKey;
  undefined4 uVar2;
  undefined4 *puVar3;
  void *pvVar4;
  byte *pbVar5;
  undefined4 *puVar6;
  float10 fVar7;
  char local_b4;
  undefined1 local_b3;
  undefined1 local_b2;
  undefined1 local_b1 [5];
  float local_ac;
  uint local_a8;
  uint local_a4;
  uint local_a0;
  uint local_9c;
  float local_98;
  byte *local_94;
  int local_90;
  int local_8c;
  undefined4 local_88 [4];
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  byte *local_58;
  float local_54;
  float local_50;
  float local_4c;
  float local_48;
  int local_44;
  undefined4 local_40 [4];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_a8 = DAT_011ec8c0;
  local_a4 = DAT_011ec8c4;
  local_a0 = DAT_011ec8c8;
  local_9c = DAT_011ec8cc;
  FUN_00afbba0(local_88);
  if ((*(void **)((int)this + 100) != (void *)0x0) &&
     (iVar1 = FUN_00c41860(*(void **)((int)this + 100),param_1), iVar1 != 0)) {
    pbVar5 = *(byte **)(iVar1 + 8);
    local_ac = FLOAT_00fab218;
    local_94 = pbVar5;
    local_58 = pbVar5;
    do {
      iVar1 = FUN_00c36010(local_94);
      local_44 = (int)*(char *)(iVar1 + 6);
      local_4c = (float)(int)*(char *)(iVar1 + 4);
      local_48 = (float)(int)*(char *)(iVar1 + 5);
      local_50 = *param_1;
      local_8c = (int)ROUND(local_50);
      local_54 = param_1[1];
      local_b4 = (char)local_8c;
      local_90 = (int)ROUND(local_54);
      local_b2 = *(undefined1 *)(param_1 + 2);
      local_b3 = (undefined1)local_90;
      FUN_00784da0(local_b1,&local_4c);
      iVar1 = FUN_00c418d0(*(void **)((int)this + 100),&local_b4);
      if (iVar1 == 0) {
        productKey = &DAT_011ec8c0;
      }
      else {
        productKey = FUN_00c44ff0(*(void **)((int)this + 0x6c));
      }
      uVar2 = WallProduct_HasNonzeroFieldE0(productKey);
      if ((char)uVar2 == '\0') {
        uVar2 = FUN_00c5b860(productKey);
        if ((char)uVar2 != '\0') {
          fVar7 = FenceCatalog_GetPostHeight(productKey);
          local_98 = (float)fVar7;
          if ((float10)local_ac < fVar7) {
            FUN_00b47d40(this,&local_b4,(undefined4 *)&local_b4);
            local_a8 = *productKey;
            local_a4 = productKey[1];
            local_a0 = productKey[2];
            local_9c = productKey[3];
            local_ac = local_98;
            puVar3 = FUN_00b4aa50(this,&local_b4);
            local_88[0] = *puVar3;
            local_88[1] = puVar3[1];
            local_88[2] = puVar3[2];
            local_88[3] = puVar3[3];
            puVar3 = FUN_00b4ab10(this,&local_b4);
            local_78 = *puVar3;
            local_74 = puVar3[1];
            local_70 = puVar3[2];
            local_6c = puVar3[3];
            puVar3 = FUN_00b4abd0(this,&local_b4);
            local_68 = *puVar3;
            local_64 = puVar3[1];
            local_60 = puVar3[2];
            local_5c = puVar3[3];
          }
        }
      }
      else {
        fVar7 = FenceCatalog_GetPostHeight(productKey);
        local_98 = (float)fVar7;
        if ((float10)local_ac < fVar7) {
          FUN_00b47d40(this,&local_b4,(undefined4 *)&local_b4);
          FUN_00afba70(local_40);
          puVar3 = (undefined4 *)FUN_00b4a0a0(this,&local_b4);
          if (puVar3 != (undefined4 *)0x0) {
            puVar6 = local_40;
            for (iVar1 = 0x10; pbVar5 = local_58, iVar1 != 0; iVar1 = iVar1 + -1) {
              *puVar6 = *puVar3;
              puVar3 = puVar3 + 1;
              puVar6 = puVar6 + 1;
            }
          }
          local_a8 = *productKey;
          local_a4 = productKey[1];
          local_a0 = productKey[2];
          local_9c = productKey[3];
          local_88[0] = local_30;
          local_88[1] = local_2c;
          local_88[2] = local_28;
          local_88[3] = local_24;
          local_78 = local_20;
          local_74 = local_1c;
          local_70 = local_18;
          local_6c = local_14;
          local_68 = local_10;
          local_ac = local_98;
          local_64 = local_c;
          local_60 = local_8;
          local_5c = local_4;
        }
      }
      local_94 = *(byte **)(local_94 + 4);
    } while (local_94 != pbVar5);
  }
  pvVar4 = ProductCatalog_LookupFenceProduct(DAT_011ee034,&local_a8,1);
  if (pvVar4 == (void *)0x0) {
    return &DAT_011ec8c0;
  }
  if (param_2 != (undefined4 *)0x0) {
    puVar3 = local_88;
    for (iVar1 = 0xc; iVar1 != 0; iVar1 = iVar1 + -1) {
      *param_2 = *puVar3;
      puVar3 = puVar3 + 1;
      param_2 = param_2 + 1;
    }
  }
  return (undefined4 *)((int)pvVar4 + 8);
}

