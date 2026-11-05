/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 stair collision and renderer contract): ECX manager; RET14 five stack slots:
   UInt32 flight ID, descriptor pointer, direction32, top and bottom LotXZLevel pointers. LotXZLevel
   third lane is signed Int32, established MOV/CMP/JG/JLE and original manager caller B21750; prior
   float lane inference was wrong. Calls AFC420, samples floor heights, walks descending levels and
   calls B19990. This builds collision shapes, not renderer admission, catalog resolution or
   wall-graph endpoint confidence. */

void __thiscall
ModularStairs_BuildFlightCollisionShapes
          (void *this,uint flightId,void *descriptor,int direction,LotXZLevel *top,
          LotXZLevel *bottom)

{
  uint uVar1;
  undefined4 uVar2;
  float selectedLevel;
  float10 fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  LotXZLevel local_104;
  LotXZLevel local_f8;
  undefined4 local_ec;
  uint local_e8;
  uint local_e4;
  LotXZLevel local_e0;
  float fStack_d4;
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float local_a8;
  float local_a4;
  float local_a0;
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
  
  ModularStairs_CountQuarterStepsAndWidth
            (direction,top,bottom,&local_e8,&local_e4,&local_a4,&local_a8);
  uVar1 = local_e8 >> 2;
  uVar2 = FUN_00afce20(direction);
  local_ec = CONCAT31(local_ec._1_3_,(char)uVar2);
  fVar8 = (float)top->level;
  selectedLevel = (float)((int)fVar8 + -1);
  if ((int)fVar8 <= bottom->level) {
    selectedLevel = fVar8;
  }
  FUN_00adc7c0(*(void **)((int)this + 0x18),&top->x,&local_c0,'\x01');
  if ((int)selectedLevel < 1) {
    fVar8 = 0.0;
  }
  else {
    local_d0 = local_c0;
    fStack_cc = fStack_bc;
    fStack_c8 = fStack_b8;
    fStack_c4 = fStack_b4;
    local_e0.x = local_c0;
    local_e0.z = fStack_bc;
    local_e0.level = (int)fStack_b8;
    fStack_d4 = fStack_b4;
    local_104.x = local_c0;
    local_104.z = fStack_b8;
    local_104.level = (int)selectedLevel;
    fVar3 = LotLevelHeight_SampleLocalPosition
                      (*(void **)(*(int *)((int)this + 0x18) + 0x290),&local_104);
    fVar8 = (float)fVar3;
  }
  local_f8.x = top->x;
  local_f8.z = top->z;
  local_f8.level = top->level;
  fVar9 = FLOAT_00fab218;
  fVar4 = local_c0;
  fVar5 = fStack_bc;
  fVar6 = fStack_b8;
  fVar7 = fStack_b4;
  if (bottom->level < local_f8.level) {
    for (; FLOAT_00fab218 = fVar9, local_c0 = fVar4, fStack_bc = fVar5, fStack_b8 = fVar6,
        fStack_b4 = fVar7, uVar1 != 0; uVar1 = uVar1 - 1) {
      FUN_00cb3fb0(direction,DAT_0106bd34,1.0,&local_70);
      local_c0 = fVar4 + local_70;
      fStack_bc = fVar5 + fStack_6c;
      fStack_b8 = fVar6 + fStack_68;
      fStack_b4 = fVar7 + fStack_64;
      if ((0 < (int)selectedLevel) &&
         (local_50 = fVar8 + DAT_0106bd30, local_a0 = fStack_bc, fStack_bc < local_50)) {
        fVar8 = (float)(int)local_e4;
        local_104.level = 0;
        if ((int)local_e4 < 0) {
          fVar8 = fVar8 + FLOAT_00f99948;
        }
        local_104.x = fVar9;
        local_104.z = fVar9;
        local_d0 = local_c0;
        fStack_cc = fStack_b8;
        fStack_c8 = selectedLevel;
        local_90 = local_c0;
        fStack_8c = fStack_bc;
        fStack_88 = fStack_b8;
        fStack_84 = fStack_b4;
        local_30 = local_c0;
        fStack_2c = fStack_bc;
        fStack_28 = fStack_b8;
        fStack_24 = fStack_b4;
        FUN_00cb40e0(&local_d0,&local_104.x,fVar8,(char)local_ec);
        ModularStairs_CreateFlightCollisionShape
                  (this,flightId,descriptor,direction,&local_f8,&local_104,(int)selectedLevel);
        local_80 = local_c0;
        fStack_7c = fStack_bc;
        fStack_78 = fStack_b8;
        fStack_74 = fStack_b4;
        local_60 = local_c0;
        fStack_5c = fStack_bc;
        fStack_58 = fStack_b8;
        fStack_54 = fStack_b4;
        selectedLevel = (float)((int)selectedLevel + -1);
        local_f8.x = local_c0;
        local_f8.z = fStack_b8;
        if ((int)selectedLevel < 1) {
          fVar8 = 0.0;
        }
        else {
          local_40 = local_c0;
          fStack_3c = fStack_bc;
          fStack_38 = fStack_b8;
          fStack_34 = fStack_b4;
          local_20 = local_c0;
          fStack_1c = fStack_bc;
          fStack_18 = fStack_b8;
          fStack_14 = fStack_b4;
          local_e0.x = local_c0;
          local_e0.z = fStack_b8;
          local_e0.level = (int)selectedLevel;
          fVar3 = LotLevelHeight_SampleLocalPosition
                            (*(void **)(*(int *)((int)this + 0x18) + 0x290),&local_e0);
          fVar8 = (float)fVar3;
        }
      }
      fVar9 = FLOAT_00fab218;
      fVar4 = local_c0;
      fVar5 = fStack_bc;
      fVar6 = fStack_b8;
      fVar7 = fStack_b4;
    }
  }
  if ((bottom->level == 0) || (bottom->level == top->level)) {
    ModularStairs_CreateFlightCollisionShape
              (this,flightId,descriptor,direction,&local_f8,bottom,(int)selectedLevel);
  }
  return;
}

