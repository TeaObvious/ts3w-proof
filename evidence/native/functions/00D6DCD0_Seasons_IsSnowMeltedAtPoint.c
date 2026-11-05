/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

Decompiled function Seasons_IsSnowMeltedAtPoint:


/* Analyst-assigned name. Locked snow-melt point predicate: empty CPU melting grid returns false.
   Samples world X/Z at 1/512, scales by 1/255, adds 0.5 and subtracts
   1.25*saturate(1-saturate(2*snow)). Saturated result <=0.3 removes snow. The copied-grid stack ABI
   in pseudocode is imperfect. */

undefined4 __thiscall Seasons_IsSnowMeltedAtPoint(void *this,float *param_1,float param_2)

{
  LPCRITICAL_SECTION lpCriticalSection;
  float fVar1;
  uint uVar2;
  undefined4 extraout_EAX;
  uint extraout_EAX_00;
  float fVar3;
  float10 fVar4;
  undefined4 in_stack_ffffff6c;
  undefined4 in_stack_ffffff70;
  int in_stack_ffffff74;
  undefined4 in_stack_ffffff78;
  int in_stack_ffffff7c;

  lpCriticalSection = (LPCRITICAL_SECTION)((int)this + 0x9c8);
  EnterCriticalSection(lpCriticalSection);
  if (*(int *)((int)this + 0xb50) * *(int *)((int)this + 0xb4c) != 0) {
    fVar3 = *param_1;
    fVar1 = param_1[2];
    FUN_00d6dc00(&stack0xffffff6c,(undefined4 *)((int)this + 0xb4c));
    fVar4 = Seasons_SampleWrappedCpuGrid
                      (fVar3 * 0.001953125,fVar1 * 0.001953125,*(uint *)((int)this + 0xb9c),
                       in_stack_ffffff6c,in_stack_ffffff70,in_stack_ffffff74,in_stack_ffffff78,
                       in_stack_ffffff7c);
    fVar3 = (float)((uint)(param_2 * 2.0) & (int)(-0.0 - param_2 * 2.0) >> 0x1f);
    uVar2 = (int)(1.0 - fVar3) >> 0x1f;
    fVar3 = 1.0 - (float)(~uVar2 & (uint)fVar3 | uVar2 & 0x3f800000);
    fVar3 = (float)((uint)fVar3 & (int)(-0.0 - fVar3) >> 0x1f);
    uVar2 = (int)(1.0 - fVar3) >> 0x1f;
    fVar3 = ((float)fVar4 * 0.003921569 + 0.5) -
            (float)(~uVar2 & (uint)fVar3 | uVar2 & 0x3f800000) * 1.25;
    fVar3 = (float)((uint)fVar3 & (int)(-0.0 - fVar3) >> 0x1f);
    uVar2 = (int)(1.0 - fVar3) >> 0x1f;
    if ((float)(~uVar2 & (uint)fVar3 | uVar2 & 0x3f800000) <= 0.3) {
      LeaveCriticalSection(lpCriticalSection);
      return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
    }
  }
  LeaveCriticalSection(lpCriticalSection);
  return extraout_EAX_00 & 0xffffff00;
}


