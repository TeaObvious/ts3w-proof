/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Spawns missing ground splash effects for rain1/bewitching5/hail2. Target
   count truncates clamp(strength*30,0,30), no more than5 creations per tick. Placement retries are
   delegated toD67DB0. Hail on a floor uses rain-drop effect; off floor uses hail. Unsupported
   precipitation types return without new effects. */

void __fastcall Seasons_SpawnMissingGroundSplashes(void *param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  bool bVar3;
  uint uVar4;
  undefined4 uVar5;
  float fVar6;
  int iVar7;
  int local_c4;
  char local_bd;
  uint local_bc;
  void *local_b8;
  undefined4 local_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined4 local_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 *local_90;
  undefined1 local_8c;
  undefined1 local_8b;
  PCWeatherSettings local_80;
  float local_20 [7];
  
  if (DAT_011edbc4 == 0) {
    return;
  }
  if (*(void **)(DAT_011edbc4 + 0x74) == (void *)0x0) {
    return;
  }
  local_80.precipitationStrength = 1.0;
  local_80.precipitationType = 0;
  local_80.frostAmount = 0.0;
  local_80.currentSeason = 0;
  local_80.sunriseOffset = 0.0;
  local_80.sunsetOffset = 0.0;
  local_80.snowThickness = 0.0;
  local_80.snowRoadDepth = 0.0;
  local_80.wetAmount = 0.0;
  local_80.isSnowMelting = 0;
  local_80.treeLeafLoss = 0.0;
  local_80.useFallSet = 1;
  local_80.treeFallColor = 0.0;
  local_80.heatShimmerDistance = -1.0;
  local_80.precipitationFog = 0.0;
  local_80.pondFreeze = 0.0;
  local_80.worldLeaves = 0.0;
  local_80.cloudinessTarget = 0.0;
  local_80.windStrength = 0.0;
  local_80.normalFog = 0.0;
  local_b8 = param_1;
  WeatherSettings_CopyPending(*(void **)(DAT_011edbc4 + 0x74),&local_80);
  if (local_80.precipitationType != 1) {
    if (local_80.precipitationType == 2) {
      bVar3 = true;
      goto LAB_00d68987;
    }
    if (local_80.precipitationType != 5) {
      return;
    }
  }
  bVar3 = false;
LAB_00d68987:
  fVar6 = (float)((uint)(local_80.precipitationStrength * 30.0) &
                 (int)(-0.0 - local_80.precipitationStrength * 30.0) >> 0x1f);
  uVar4 = (int)(30.0 - fVar6) >> 0x1f;
  local_bc = 0x41f00000;
  iVar7 = (int)(float)(~uVar4 & (uint)fVar6 | uVar4 & 0x41f00000) -
          (*(int *)((int)param_1 + 0x10) - *(int *)((int)param_1 + 0xc) >> 5);
  if (0 < iVar7) {
    if (5 < iVar7) {
      iVar7 = 5;
    }
    local_c4 = 0;
    if (0 < iVar7) {
      while (uVar5 = FUN_00d67db0(local_b8,local_20,&local_bd), (char)uVar5 != '\0') {
        if (bVar3) {
          local_bc = CONCAT31(local_bc._1_3_,1);
          if (local_bd != '\0') goto LAB_00d68a70;
        }
        else {
LAB_00d68a70:
          local_bc = local_bc & 0xffffff00;
        }
        uStack_a4 = 0;
        uStack_a8 = 0;
        uStack_ac = 0;
        local_b0 = 0;
        local_a0 = 0;
        uStack_9c = 0;
        uStack_98 = 0;
        uStack_94 = 0;
        local_90 = (undefined4 *)0x0;
        local_8c = 0;
        local_8b = 0;
        uVar5 = FUN_00d67e60(&local_a0,local_20,local_bc);
        if ((char)uVar5 == '\0') {
          if (local_90 == (undefined4 *)0x0) {
            return;
          }
          piVar1 = local_90 + 1;
          LOCK();
          iVar7 = *piVar1;
          *piVar1 = *piVar1 + -1;
          UNLOCK();
          if (iVar7 == 1) {
            LOCK();
            *piVar1 = 1;
            UNLOCK();
            (**(code **)*local_90)(1);
            return;
          }
          return;
        }
        this = *(undefined4 **)((int)param_1 + 0x10);
        if (this < *(undefined4 **)((int)param_1 + 0x14)) {
          *(undefined4 **)((int)param_1 + 0x10) = this + 8;
          if (this != (undefined4 *)0x0) {
            FUN_00d67d10(this,&local_a0);
          }
        }
        else {
          FUN_00d682f0((void *)((int)param_1 + 0xc),this,&local_a0);
        }
        if (local_90 != (undefined4 *)0x0) {
          piVar1 = local_90 + 1;
          LOCK();
          iVar2 = *piVar1;
          *piVar1 = *piVar1 + -1;
          UNLOCK();
          if (iVar2 == 1) {
            LOCK();
            *piVar1 = 1;
            UNLOCK();
            (**(code **)*local_90)(1);
          }
        }
        local_c4 = local_c4 + 1;
        if (iVar7 <= local_c4) {
          return;
        }
      }
    }
  }
  return;
}

