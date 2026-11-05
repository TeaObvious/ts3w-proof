/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst static routing contract: Slot vtable+0x10 expansion uses target ObjectGuid, slot
   component(DAT_011ea114), transform component(DAT_011ea158). Missing target/components emits no
   candidate. Iterates8-byte hash/weight records; unavailable/disabled slot(its byte+8 bit1)
   skipped. Transforms local facing/point to world; optional AGS portal offset; candidate
   weight=slotWeight*destinationWeight, slot hash+0x28, tag+0x2c. Obstruction-check result sends
   records to candidate or noncandidate vector and may fill blocker metadata. */

uint __thiscall
SlotArrayDestination_ExpandCandidates
          (void *this,uint param_1,void *param_2,undefined4 param_3,int *param_4,void *param_5,
          undefined4 param_6,int param_7,void *param_8)

{
  int iVar1;
  undefined4 uVar2;
  void *pvVar3;
  int *this_00;
  float *pfVar4;
  int *piVar5;
  uint uVar6;
  int *piVar7;
  float10 fVar8;
  void **ppvVar9;
  void *local_154;
  int local_150;
  int local_14c;
  void *local_144;
  int *local_140;
  void *local_13c;
  void *local_138;
  undefined4 local_134;
  float local_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  float afStack_120 [2];
  int iStack_118;
  int iStack_114;
  float fStack_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float fStack_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  float fStack_f0;
  undefined4 uStack_ec;
  int iStack_e8;
  undefined4 uStack_e4;
  float fStack_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float fStack_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  undefined1 local_50 [32];
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  uVar2 = RoutingOptions_TestMask(param_2,0x1004,0,'\0');
  local_134 = CONCAT31(local_134._1_3_,(char)uVar2);
  piVar7 = *(int **)((int)this + 0x30);
  if (*(int **)((int)this + 0x30) != *(int **)((int)this + 0x34)) {
    pvVar3 = ObjectRegistry_GetGlobal();
    local_154 = pvVar3;
    local_138 = (void *)thunk_FUN_00835d40();
    this_00 = ObjectRegistry_FindBorrowed(pvVar3,*(ulonglong *)((int)this + 0x48));
    piVar7 = this_00;
    if (this_00 != (int *)0x0) {
      LOCK();
      this_00[1] = this_00[1] + 1;
      UNLOCK();
      local_13c = Object_GetComponentByMask(this_00,DAT_011ea114);
      if ((local_13c == (void *)0x0) ||
         (pvVar3 = Object_GetComponentByMask(this_00,DAT_011ea158), pvVar3 == (void *)0x0)) {
        piVar7 = this_00 + 1;
        LOCK();
        iVar1 = *piVar7;
        *piVar7 = *piVar7 + -1;
        UNLOCK();
        if (iVar1 == 1) {
          LOCK();
          *piVar7 = 1;
          UNLOCK();
          piVar7 = (int *)(**(code **)*this_00)(1);
        }
      }
      else {
        local_144 = (void *)0x0;
        TransformComponent_GetWorldMatrix(pvVar3,&local_90);
        ppvVar9 = &local_144;
        pfVar4 = TransformComponent_GetWorldPosition(pvVar3,&local_130);
        RoutePoint_ResolveLotAndLevel(pfVar4,ppvVar9);
        local_140 = *(int **)((int)this + 0x34);
        piVar7 = *(int **)((int)this + 0x30);
        local_150 = 0;
        local_14c = 0;
        if (piVar7 != local_140) {
          do {
            piVar5 = (int *)FUN_0094fe70(local_13c,*piVar7);
            if ((piVar5 != (int *)0x0) && ((*(byte *)(piVar5 + 2) & 1) == 0)) {
              (**(code **)(*piVar5 + 0x14))(local_50);
              fStack_b0 = fStack_2c * fStack_80 + fStack_30 * local_90 + fStack_28 * fStack_70 +
                          fStack_24 * fStack_60;
              fStack_ac = fStack_2c * fStack_7c + fStack_30 * fStack_8c + fStack_28 * fStack_6c +
                          fStack_24 * fStack_5c;
              fStack_a8 = fStack_2c * fStack_78 + fStack_30 * fStack_88 + fStack_28 * fStack_68 +
                          fStack_24 * fStack_58;
              fStack_a4 = fStack_2c * fStack_74 + fStack_30 * fStack_84 + fStack_28 * fStack_64 +
                          fStack_24 * fStack_54;
              fStack_a0 = fStack_1c * fStack_80 + fStack_20 * local_90 + fStack_18 * fStack_70 +
                          fStack_14 * fStack_60;
              fStack_9c = fStack_1c * fStack_7c + fStack_20 * fStack_8c + fStack_18 * fStack_6c +
                          fStack_14 * fStack_5c;
              fStack_98 = fStack_1c * fStack_78 + fStack_20 * fStack_88 + fStack_18 * fStack_68 +
                          fStack_14 * fStack_58;
              fStack_94 = fStack_1c * fStack_74 + fStack_20 * fStack_84 + fStack_18 * fStack_64 +
                          fStack_14 * fStack_54;
              FUN_00651100(&fStack_110);
              fStack_110 = fStack_a0;
              fStack_10c = fStack_9c;
              fStack_108 = fStack_98;
              fStack_104 = fStack_98;
              if (*(char *)((int)this + 0x54) != '\0') {
                FUN_0076f160(&fStack_110,this_00,*(uint *)((int)this + 0x50),'\0');
              }
              uVar2 = FUN_00624940(param_1 & 0xcf00);
              if (((char)uVar2 != '\0') && (DAT_011edbc4 != 0)) {
                fVar8 = WorldWater_GetSeaLevel(DAT_011edbc4);
                local_130 = fStack_110;
                fStack_128 = fStack_108;
                fStack_124 = fStack_104;
                fStack_12c = (float)fVar8;
                fStack_10c = fStack_12c;
              }
              uStack_e4 = *(undefined4 *)((int)this + 0x28);
              iStack_e8 = *piVar7;
              fStack_100 = fStack_b0;
              fStack_fc = fStack_ac;
              fStack_f8 = fStack_a8;
              fStack_f4 = fStack_a4;
              uStack_ec = FUN_00845e40(&fStack_110);
              fStack_f0 = (float)piVar7[1] * *(float *)((int)this + 0x2c);
              uVar6 = FUN_00aff9d0(local_144,&fStack_110,(int *)0x0,1);
              if (((char)uVar6 == '\0') &&
                 (FUN_00831070(local_138,afStack_120,local_144,this_00,&fStack_110,param_2,param_1,
                               local_134,*(undefined4 **)((int)this + 0x40),
                               *(int *)((int)this + 0x44)), afStack_120[0] != 0.0)) {
                if (iStack_118 != 0 || iStack_114 != 0) {
                  local_150 = iStack_118;
                  local_14c = iStack_114;
                }
                FUN_00654980(param_5,&fStack_110);
                if (param_8 != (void *)0x0) {
                  FUN_0074c860(param_8,(int)&fStack_110,1);
                }
              }
              else {
                FUN_00654980(param_4,&fStack_110);
              }
            }
            piVar7 = piVar7 + 2;
          } while (piVar7 != local_140);
        }
        if (*param_4 != param_4[1]) {
          piVar7 = this_00 + 1;
          LOCK();
          iVar1 = *piVar7;
          *piVar7 = *piVar7 + -1;
          UNLOCK();
          if (iVar1 == 1) {
            LOCK();
            *piVar7 = 1;
            UNLOCK();
            piVar7 = (int *)(**(code **)*this_00)(1);
          }
          return CONCAT31((int3)((uint)piVar7 >> 8),1);
        }
        if (local_150 != 0 || local_14c != 0) {
          local_154 = ObjectRegistry_FindBorrowed(local_154,CONCAT44(local_14c,local_150));
          if (local_154 != (void *)0x0) {
            LOCK();
            *(int *)((int)local_154 + 4) = *(int *)((int)local_154 + 4) + 1;
            UNLOCK();
            pvVar3 = (void *)Object_GetTransformComponentOrNull(local_154);
            if (pvVar3 != (void *)0x0) {
              *(int *)(param_7 + 0x20) = local_150;
              *(int *)(param_7 + 0x24) = local_14c;
              pfVar4 = TransformComponent_GetWorldPosition(pvVar3,&local_130);
              FUN_0076c100((void *)(param_7 + 0x2c),pfVar4);
            }
          }
          FUN_007462e0((int *)&local_154);
        }
        piVar7 = this_00 + 1;
        LOCK();
        iVar1 = *piVar7;
        *piVar7 = *piVar7 + -1;
        UNLOCK();
        if (iVar1 == 1) {
          LOCK();
          *piVar7 = 1;
          UNLOCK();
          uVar6 = (**(code **)*this_00)(1);
          return uVar6 & 0xffffff00;
        }
      }
    }
  }
  return (uint)piVar7 & 0xffffff00;
}

