/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Static PC1.67 original combo-control comparison; no execution. ECX control and two stack words;
   RET8. Selected complete body starts width40/height10, measures every stored value through
   existing font helpers, adds8 to measured width, computes height+6 and the one-third width branch,
   clamps width to minimum30, writes size and returns low-byte success; selected allocation failure
   returns low-byte false before output. C EAX/argument types remain inferred. Current
   cache/font/border and float/pixel behavior is separately qualified. */

undefined4 __thiscall WinComboBox_MeasureAutoSize(void *this,undefined4 param_1,float *param_2)

{
  int iVar1;
  void *this_00;
  undefined4 *puVar2;
  int iVar3;
  float *pfVar4;
  int iVar5;
  float10 fVar6;
  float fVar7;
  float fVar8;
  float local_3ac;
  float local_3a8;
  float local_3a4;
  float local_3a0;
  float local_39c;
  int local_398 [4];
  float local_388;
  float local_384;
  undefined4 local_37c [223];
  
  local_3a0 = 40.0;
  local_3a8 = 10.0;
  fVar7 = 10.0;
  fVar8 = 40.0;
  if (*(int *)((int)this + 0x294) != *(int *)((int)this + 0x298)) {
    this_00 = (void *)FUN_0044da50('\x01');
    if (this_00 == (void *)0x0) {
      return 0;
    }
    puVar2 = FUN_0045f4b0(this_00,*(undefined4 *)((int)this + 0x8c),(undefined4 *)0x0);
    fVar7 = local_3a8;
    fVar8 = local_3a0;
    if (*(int *)((int)this + 0x8c) != 0) {
      FUN_0045b1f0(local_37c);
      iVar3 = *(int *)((int)this + 0x298) - *(int *)((int)this + 0x294) >> 4;
      if (iVar3 != 0) {
        iVar5 = 0;
        do {
          iVar1 = *(int *)(*(int *)((int)this + 0x294) + iVar5);
          fVar6 = FUN_0045af50(local_37c,iVar1,
                               *(int *)(*(int *)((int)this + 0x294) + iVar5 + 4) - iVar1 >> 1,
                               (int)puVar2,local_398);
          local_39c = (float)fVar6;
          local_3a4 = local_388 - local_384;
          local_3ac = local_39c + 8.0;
          pfVar4 = &local_3ac;
          if (local_39c + 8.0 <= local_3a0) {
            pfVar4 = &local_3a0;
          }
          local_3a0 = *pfVar4;
          pfVar4 = &local_3a4;
          if (local_388 - local_384 <= local_3a8) {
            pfVar4 = &local_3a8;
          }
          local_3a8 = *pfVar4;
          iVar5 = iVar5 + 0x10;
          iVar3 = iVar3 + -1;
        } while (iVar3 != 0);
      }
      FUN_0045a810((int)local_37c);
      fVar7 = local_3a8;
      fVar8 = local_3a0;
    }
  }
  param_2[1] = fVar7 + 6.0;
  pfVar4 = &local_3a4;
  if (fVar8 * 0.33333334 <= fVar7) {
    local_3a4 = fVar8 * 2.0 + 4.0;
    local_3ac = 30.0;
  }
  else {
    local_3a4 = fVar7 + fVar8 + 4.0;
    local_3ac = 30.0;
  }
  if (local_3a4 <= 30.0) {
    pfVar4 = &local_3ac;
  }
  *param_2 = *pfVar4;
  return CONCAT31((int3)((uint)pfVar4 >> 8),1);
}

