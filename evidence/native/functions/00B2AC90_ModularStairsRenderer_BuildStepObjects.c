/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst note (PC1.67 stair collision and renderer contract): ECX renderer; RET24 nine stack
   slots: UInt32 flight ID, descriptor pointer, direction32, top/bottom LotXZLevel pointers, byte
   flag6, retained word, meta-scene pointer, byte flag9. AFC420 computes total quarter-steps and
   width. Quotient is UInt32 total>>2; remainder total-4*quotient. Per width lane, immediate B234B0
   quotient callbacks B298A0 occur BEFORE remainder callbacks B29930, sharing advanced position.
   Copies 48 descriptor bytes from +10 into flight map; samples lot floor/wall state, uses half-lane
   side offset. Additional flag6/remainder-zero/quotient-nonzero branch emits edge-cap callbacks. No
   frontend .001 residual test, 64/16 cap or confidence tier is established here. Actual decompiler
   alias/SIMD lane artifacts remain. */

void __thiscall
ModularStairsRenderer_BuildStepObjects
          (void *this,uint flightId,void *descriptor,int direction,LotXZLevel *top,
          LotXZLevel *bottom,byte flag6,uint retainedWord,void *metaSceneObject,byte flag9)

{
  bool bVar1;
  uint flightId_00;
  LotXZLevel *pLVar2;
  byte bVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  int iVar6;
  undefined4 *puVar7;
  uint uVar8;
  LotXZLevel *pLVar9;
  undefined3 in_stack_00000025;
  undefined1 local_fc;
  undefined1 local_fb;
  undefined1 local_fa;
  undefined1 local_f9;
  undefined1 local_f8;
  undefined1 local_f7;
  undefined1 local_f6;
  undefined1 local_f5;
  uint local_f4;
  uint local_f0;
  float local_ec;
  float local_e8;
  char local_e4;
  undefined1 local_e3;
  undefined1 local_e2;
  undefined1 local_e1;
  undefined1 local_e0;
  undefined1 local_df;
  float local_dc;
  float local_d8;
  int local_d4;
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float local_b4;
  float local_b0;
  int local_ac;
  float local_a8;
  uint local_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  int local_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  int local_6c;
  uint local_68;
  void *local_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  int local_44;
  int local_40;
  int local_3c;
  undefined1 local_38;
  undefined3 uStack_37;
  float local_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  pLVar2 = bottom;
  pLVar9 = top;
  ModularStairs_CountQuarterStepsAndWidth
            (direction,top,bottom,&local_f4,&local_f0,&local_ec,&local_e8);
  local_a4 = local_f4 >> 2;
  local_68 = local_f4 + local_a4 * -4;
  local_d4 = pLVar9->level;
  local_dc = pLVar9->x;
  local_d8 = pLVar9->z;
  uVar4 = FUN_00afce20(direction);
  _local_38 = CONCAT31(uStack_37,(char)uVar4);
  local_84 = pLVar9->level;
  if (local_84 == pLVar2->level) {
    local_ac = local_84;
  }
  else {
    local_ac = local_84 + -1;
  }
  local_84 = local_84 - pLVar2->level;
  puVar5 = (undefined4 *)FUN_00a66f20((void *)((int)this + 0x60),&flightId);
  flightId_00 = flightId;
  puVar7 = (undefined4 *)((int)descriptor + 0x10);
  for (iVar6 = 0xc; iVar6 != 0; iVar6 = iVar6 + -1) {
    *puVar5 = *puVar7;
    puVar7 = puVar7 + 1;
    puVar5 = puVar5 + 1;
  }
  uVar8 = 0;
  local_b4 = 0.0;
  local_b0 = 0.0;
  bVar1 = false;
  if (local_f0 != 0) {
    do {
      if ((flightId_00 == 0xffffffff) && (local_f4 == 0x10)) {
        local_80 = local_dc;
        fStack_78 = (float)(local_d4 + -1);
        fStack_7c = local_d8;
        LotLocation_CopyXZAndSampleElevation(*(void **)((int)this + 0x1c),&local_80,&local_d0);
        fStack_cc = fStack_cc + 3.0;
      }
      else {
        LotLocation_CopyXZAndSampleElevation(*(void **)((int)this + 0x1c),&local_dc,&local_d0);
      }
      local_64 = (void *)FUN_00aa0aa0(*(void **)(*(int *)((int)this + 0x1c) + 0x230),top->level,
                                      '\x01');
      local_a0 = -1.0;
      fStack_9c = -1.0;
      fStack_98 = 0.0;
      FUN_00cb4380(&local_dc,&local_a0,(char)_local_38);
      local_40 = (int)ROUND(local_dc);
      local_e4 = (char)local_40;
      local_34 = local_d8;
      local_44 = (int)ROUND(local_d8);
      local_e3 = (undefined1)local_44;
      local_e2 = (undefined1)local_d4;
      local_3c = (int)ROUND(local_a0);
      local_e1 = (undefined1)local_3c;
      local_a8 = fStack_9c;
      local_6c = (int)ROUND(fStack_9c);
      local_e0 = (undefined1)local_6c;
      local_df = fStack_98._0_1_;
      local_f8 = 0xff;
      local_f7 = 0xff;
      local_f6 = 0;
      local_f5 = 0xff;
      local_fc = 0xff;
      local_fb = 0xff;
      local_fa = 0;
      local_f9 = 0xff;
      if (bVar1) {
LAB_00b2af5b:
        fStack_cc = fStack_cc + 0.1875;
        bVar1 = true;
      }
      else {
        WallLocator_QueryFirstAdjacentTile(&local_e4,(undefined2 *)&local_f8);
        WallLocator_QueryOtherAdjacentTile((undefined2 *)&local_e4,(undefined2 *)&local_fc);
        if ((local_64 != (void *)0x0) &&
           ((bVar3 = FUN_00a9cfc0(local_64,(undefined2 *)&local_f8), bVar3 != 0 ||
            (bVar3 = FUN_00a9cfc0(local_64,(undefined2 *)&local_fc), bVar3 != 0))))
        goto LAB_00b2af5b;
      }
      local_d0 = local_d0 + local_ec * 0.5;
      fStack_c8 = fStack_c8 + local_e8 * 0.5;
      if (uVar8 == 0) {
        local_60 = local_d0;
        fStack_5c = fStack_cc;
        fStack_58 = fStack_c8;
      }
      local_b0 = fStack_58 - fStack_c8;
      fStack_1c = fStack_58 - fStack_c8;
      fStack_18 = fStack_58 - fStack_c8;
      fStack_14 = fStack_58 - fStack_c8;
      local_b4 = local_60 - local_d0;
      fStack_2c = local_60 - local_d0;
      fStack_28 = local_60 - local_d0;
      fStack_24 = local_60 - local_d0;
      local_30 = local_b4;
      local_20 = local_b0;
      ModularStairsRenderer_RepeatStepCallback
                (this,flightId_00,local_ac,local_84,retainedWord,descriptor,&local_d0,direction,
                 local_a4,ModularStairsRenderer_AddFourStepBlock,metaSceneObject,(byte)_flag9,
                 &local_b4);
      ModularStairsRenderer_RepeatStepCallback
                (this,flightId_00,bottom->level,0,retainedWord,descriptor,&local_d0,direction,
                 local_68,ModularStairsRenderer_AddOneStepBlock,metaSceneObject,(byte)_flag9,
                 &local_b4);
      local_dc = local_a0;
      uVar8 = uVar8 + 1;
      local_d8 = fStack_9c;
      local_d4 = (int)fStack_98;
    } while (uVar8 < local_f0);
  }
  pLVar9 = top;
  if (((flag6 != 0) && (local_68 == 0)) && (local_a4 != 0)) {
    if ((flightId_00 == 0xffffffff) && (local_f4 == 0x10)) {
      local_80 = top->x;
      fStack_7c = top->z;
      fStack_78 = (float)(top->level + -1);
      LotLocation_CopyXZAndSampleElevation(*(void **)((int)this + 0x1c),&local_80,&local_d0);
      fStack_cc = fStack_cc + 3.0;
    }
    else {
      LotLocation_CopyXZAndSampleElevation(*(void **)((int)this + 0x1c),&top->x,&local_d0);
      pLVar9 = top;
    }
    if (bVar1) {
      fStack_cc = fStack_cc + 0.1875;
    }
    local_b0 = fStack_58 - fStack_c8;
    fStack_2c = fStack_58 - fStack_c8;
    fStack_28 = fStack_58 - fStack_c8;
    fStack_24 = fStack_58 - fStack_c8;
    local_b4 = local_60 - local_d0;
    fStack_1c = local_60 - local_d0;
    fStack_18 = local_60 - local_d0;
    fStack_14 = local_60 - local_d0;
    local_a0 = local_d0;
    fStack_9c = fStack_cc;
    fStack_98 = fStack_c8;
    local_30 = local_b0;
    local_20 = local_b4;
    ModularStairsRenderer_RepeatStepCallback
              (this,flightId_00,local_ac,local_84,retainedWord,descriptor,&local_d0,direction,
               local_a4,FUN_00b299c0,metaSceneObject,(byte)_flag9,&local_b4);
    local_a8 = (float)(int)local_f0;
    if ((int)local_f0 < 0) {
      local_a8 = local_a8 + 4.2949673e+09;
    }
    local_d0 = local_a8 * local_ec + pLVar9->x;
    fStack_c8 = local_a8 * local_e8 + pLVar9->z;
    fStack_7c = fStack_9c;
    fStack_cc = fStack_9c;
    local_b0 = fStack_58 - fStack_c8;
    fStack_2c = fStack_58 - fStack_c8;
    fStack_28 = fStack_58 - fStack_c8;
    fStack_24 = fStack_58 - fStack_c8;
    local_b4 = local_60 - local_d0;
    fStack_1c = local_60 - local_d0;
    fStack_18 = local_60 - local_d0;
    fStack_14 = local_60 - local_d0;
    fStack_c4 = local_d0;
    local_80 = local_d0;
    fStack_78 = fStack_c8;
    fStack_74 = local_d0;
    local_30 = local_b0;
    local_20 = local_b4;
    ModularStairsRenderer_RepeatStepCallback
              (this,flightId_00,local_ac,local_84,retainedWord,descriptor,&local_d0,direction,
               local_a4,FUN_00b299c0,metaSceneObject,(byte)_flag9,&local_b4);
  }
  return;
}

