/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX roof service; point/mode stack arguments; x87 height. Start at current
   floor, enumerate roof IDs, apply mode/property/containment predicates and virtual+0x2C sampling
   with0 or0.5, retain larger stored heights; no admitted roof queries next floor. Concrete
   virtual+0x2C/+0x50 subtypes and admission are not expanded. Descriptive analyst role, not a
   recovered original symbol. */

float10 __thiscall RoofHeight_SampleWithFloorFallback(void *param_1,float *param_2,char param_3)

{
  int *piVar1;
  int iVar2;
  bool bVar3;
  char cVar4;
  uint uVar5;
  uint *puVar6;
  void *pvVar7;
  float10 fVar8;
  int *piVar9;
  ulonglong uVar10;
  int *local_13c;
  int *local_138;
  void *local_134;
  float local_130;
  undefined4 local_12c;
  float local_128;
  uint *local_124;
  float local_120;
  float local_11c;
  int local_118;
  uint *local_114;
  uint *local_110;
  uint local_100 [64];
  
  local_114 = local_100;
  local_110 = local_100;
  if (-1 < (int)param_2[2]) {
    FUN_00bea160(param_1,&local_114,(int)param_2[2],0);
  }
  puVar6 = local_114;
  pvVar7 = *(void **)(*(int *)((int)param_1 + 0x28) + 0x230);
  local_124 = local_110;
  local_134 = pvVar7;
  if (pvVar7 == (void *)0x0) {
    if ((local_114 != (uint *)0x0) && (local_114 != local_100)) {
      Memory_FreeIfNonNull(local_114);
    }
    return (float10)0;
  }
  fVar8 = WallFloor_SampleLevelGridHeight(pvVar7,param_2);
  local_138 = (int *)(float)fVar8;
  bVar3 = false;
  if (puVar6 != local_124) {
    do {
      local_13c = (int *)0x0;
      uVar10 = FUN_00be7fd0(param_1,*puVar6,(int *)&local_13c);
      piVar1 = local_13c;
      if ((char)uVar10 == '\0') {
        if (local_13c != (int *)0x0) {
          piVar1 = local_13c + 1;
          LOCK();
          iVar2 = *piVar1;
          *piVar1 = *piVar1 + -1;
          UNLOCK();
          if (iVar2 == 1) {
            LOCK();
            *piVar1 = 1;
            UNLOCK();
            (**(code **)*local_13c)(1);
          }
        }
      }
      else {
        if ((param_3 == '\0') || (uVar5 = FUN_00c02f20(local_13c[0xb]), (char)uVar5 != '\0')) {
          bVar3 = true;
          if ((param_3 == '\0') || (cVar4 = FUN_00c02f70(piVar1,param_2), cVar4 != '\0')) {
            local_128 = *param_2;
            local_130 = param_2[1];
            piVar9 = (int *)0x0;
            if (piVar1 != (int *)0x0) {
              local_12c = 0;
              if (((int)param_2[2] < piVar1[6]) &&
                 (cVar4 = (**(code **)(*piVar1 + 0x50))(local_128,local_130), cVar4 != '\0')) {
                local_12c = 0x3f000000;
              }
              fVar8 = (float10)(**(code **)(*piVar1 + 0x2c))(local_128,local_130,local_12c);
              piVar9 = (int *)(float)fVar8;
              local_13c = piVar9;
            }
            if ((float)local_138 < (float)piVar9) {
              local_138 = piVar9;
            }
          }
          if (piVar1 == (int *)0x0) goto LAB_00bea9e7;
        }
        piVar9 = piVar1 + 1;
        LOCK();
        iVar2 = *piVar9;
        *piVar9 = *piVar9 + -1;
        UNLOCK();
        if (iVar2 == 1) {
          LOCK();
          *piVar9 = 1;
          UNLOCK();
          (**(code **)*piVar1)(1);
        }
      }
LAB_00bea9e7:
      puVar6 = puVar6 + 1;
    } while (puVar6 != local_124);
    pvVar7 = local_134;
    if (bVar3) {
      if ((local_114 != (uint *)0x0) && (local_114 != local_100)) {
        Memory_FreeIfNonNull(local_114);
      }
      return (float10)(float)local_138;
    }
  }
  local_120 = *param_2;
  local_118 = (int)param_2[2] + 1;
  local_11c = param_2[1];
  fVar8 = WallFloor_SampleLevelGridHeight(pvVar7,&local_120);
  local_134 = (void *)(float)fVar8;
  if ((local_114 != (uint *)0x0) && (local_114 != local_100)) {
    Memory_FreeIfNonNull(local_114);
  }
  return (float10)(float)local_134;
}

