/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst static routing contract: Initializes shared radial score contexts
   at011617d0/01161800(origin),01161830/01161860(center),011d5130(preferred radius). Computes
   distance/start-center, max(min,max), normalizing squared bounds and midpoint/explicit preferred
   radius. Returns count of positive weights among seven slots. Contexts are process globals; this
   is static evidence, no concurrency claim. */

char __thiscall
RadialRangeDestination_InitializeScoringContext(void *this,float *param_1,float *param_2)

{
  float fVar1;
  float fVar2;
  char cVar3;
  undefined1 auVar4 [16];
  float fVar5;
  float local_24;
  float local_20;
  
  _DAT_011617e0 = *param_1;
  fRam011617e4 = param_1[1];
  fRam011617e8 = param_1[2];
  fRam011617ec = param_1[3];
  fVar1 = *(float *)((int)this + 100);
  auVar4._0_4_ = (param_2[2] - fRam011617e8) * (param_2[2] - fRam011617e8) +
                 (param_2[1] - fRam011617e4) * (param_2[1] - fRam011617e4) +
                 (*param_2 - _DAT_011617e0) * (*param_2 - _DAT_011617e0);
  auVar4._4_4_ = auVar4._0_4_;
  auVar4._8_4_ = auVar4._0_4_;
  auVar4._12_4_ = auVar4._0_4_;
  auVar4 = sqrtps(auVar4,auVar4);
  fVar2 = *(float *)((int)this + 0x60);
  fVar5 = fVar2;
  if (fVar2 <= fVar1) {
    fVar5 = fVar1;
  }
  local_24 = (fVar2 + fVar1) * _DAT_00f9b5b4;
  if (DAT_010f4ccc <= *(float *)((int)this + 0x68)) {
    local_24 = *(float *)((int)this + 0x68);
  }
  local_20 = auVar4._0_4_;
  local_20 = local_20 + fVar5;
  _DAT_011617f0 = local_20 * local_20;
  _DAT_01161810 = *param_1;
  fRam01161814 = param_1[1];
  fRam01161818 = param_1[2];
  fRam0116181c = param_1[3];
  _DAT_01161820 = local_20 * local_20;
  _DAT_01161840 = *param_2;
  fRam01161844 = param_2[1];
  fRam01161848 = param_2[2];
  fRam0116184c = param_2[3];
  _DAT_01161850 = fVar5 * fVar5;
  _DAT_01161870 = *param_2;
  fRam01161874 = param_2[1];
  fRam01161878 = param_2[2];
  fRam0116187c = param_2[3];
  _DAT_01161880 = _DAT_01161850;
  RadialRangeScore_InitializeRadii
            (&DAT_011d5130,param_2,local_24,*(float *)((int)this + 0x60),fVar5);
  cVar3 = 0.0 < *(float *)((int)this + 0xc);
  if (0.0 < *(float *)((int)this + 0x10)) {
    cVar3 = cVar3 + '\x01';
  }
  if (0.0 < *(float *)((int)this + 0x14)) {
    cVar3 = cVar3 + '\x01';
  }
  if (0.0 < *(float *)((int)this + 0x18)) {
    cVar3 = cVar3 + '\x01';
  }
  if (0.0 < *(float *)((int)this + 0x1c)) {
    cVar3 = cVar3 + '\x01';
  }
  if (0.0 < *(float *)((int)this + 0x20)) {
    cVar3 = cVar3 + '\x01';
  }
  if (0.0 < *(float *)((int)this + 0x24)) {
    cVar3 = cVar3 + '\x01';
  }
  return cVar3;
}

