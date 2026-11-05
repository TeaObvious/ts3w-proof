/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX floor manager; two float output pointers and force byte; RET0C. If dirty +220 is clear and
   force is false, returns cached +210/+214. Otherwise follows the all-grid or A94A10 mask-produced
   traversal, caches extrema, clears dirty and frees temporary mask. Mask selection and
   empty/malformed-grid semantics are not established by this body alone. */

void __thiscall
FloorManager_ComputeCachedHeightExtrema(void *this,float *param_1,float *param_2,char param_3)

{
  float fVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  int *piVar6;
  void *local_30;
  undefined4 local_2c;
  undefined4 local_28;
  char *local_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if ((*(char *)((int)this + 0x220) == '\0') && (param_3 == '\0')) {
    *param_1 = *(float *)((int)this + 0x210);
    *param_2 = *(float *)((int)this + 0x214);
    return;
  }
  iVar2 = *(int *)((int)this + 0x24);
  piVar6 = (int *)(iVar2 + 0x10);
  local_30 = (void *)0x0;
  local_2c = 0;
  local_28 = 0;
  local_24 = "Lot/FloorManager/ComputeMinAndMaxHeights";
  if ((*(int *)((int)this + 0x10) == *(int *)((int)this + 0x14)) ||
     (uVar3 = FUN_00a94a10(this,(int *)&local_30), (char)uVar3 == '\0')) {
    fVar1 = *(float *)*piVar6;
    *param_2 = fVar1;
    *param_1 = fVar1;
    uVar5 = 1;
    uVar4 = *(int *)(iVar2 + 0x14) - *piVar6 >> 2;
    if (1 < uVar4) {
      do {
        fVar1 = *(float *)(*piVar6 + uVar5 * 4);
        if (fVar1 < *param_1) {
          *param_1 = fVar1;
        }
        if (*param_2 <= fVar1 && fVar1 != *param_2) {
          *param_2 = fVar1;
        }
        uVar5 = uVar5 + 1;
      } while (uVar5 < uVar4);
    }
    fStack_14 = *param_1;
    fStack_1c = *param_2;
  }
  else {
    uVar4 = 0;
    uVar5 = *(int *)(iVar2 + 0x14) - *piVar6 >> 2;
    if (uVar5 != 0) {
LAB_00a96b70:
      if (*(char *)((int)local_30 + uVar4) == '\0') goto code_r0x00a96b7a;
      fVar1 = *(float *)*piVar6;
      *param_2 = fVar1;
      *param_1 = fVar1;
      for (; uVar4 < uVar5; uVar4 = uVar4 + 1) {
        if (*(char *)((int)local_30 + uVar4) != '\0') {
          fVar1 = *(float *)(*piVar6 + uVar4 * 4);
          if (fVar1 < *param_1) {
            *param_1 = fVar1;
          }
          if (*param_2 <= fVar1 && fVar1 != *param_2) {
            *param_2 = fVar1;
          }
        }
      }
    }
LAB_00a96b88:
    fStack_14 = *param_1;
    fStack_1c = *param_2;
  }
  *(float *)((int)this + 0x210) = fStack_14;
  *(float *)((int)this + 0x214) = fStack_1c;
  *(float *)((int)this + 0x218) = fStack_14;
  *(float *)((int)this + 0x21c) = fStack_14;
  *(undefined1 *)((int)this + 0x220) = 0;
  if (local_30 != (void *)0x0) {
    local_20 = fStack_14;
    fStack_18 = fStack_14;
    Memory_FreeIfNonNull(local_30);
  }
  return;
code_r0x00a96b7a:
  uVar4 = uVar4 + 1;
  if (uVar5 <= uVar4) goto LAB_00a96b88;
  goto LAB_00a96b70;
}

