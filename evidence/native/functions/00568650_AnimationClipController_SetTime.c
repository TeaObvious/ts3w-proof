/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Copies start time to overall time
   +0x5e4, local clip time +0x5dc and accumulated time +0x5e0. Repeat count 1 sets loop iteration to
   0 while time<=duration, else 1; other counts repeatedly subtract duration and cap iteration at
   finite repeat count. Comparisons are x87 floating point; repeat-count clamp is unsigned. */

void __thiscall AnimationClipController_SetTime(void *this,float param_1)

{
  uint uVar1;
  float fVar2;
  
  uVar1 = *(uint *)((int)this + 0x5ec);
  *(float *)((int)this + 0x5e4) = param_1;
  *(float *)((int)this + 0x5dc) = param_1;
  *(float *)((int)this + 0x5e0) = param_1;
  if (uVar1 != 1) {
    *(undefined4 *)((int)this + 0x5f0) = 0;
    if (*(float *)((int)this + 0x5e8) < param_1) {
      do {
        *(int *)((int)this + 0x5f0) = *(int *)((int)this + 0x5f0) + 1;
        fVar2 = *(float *)((int)this + 0x5dc) - *(float *)((int)this + 0x5e8);
        *(float *)((int)this + 0x5dc) = fVar2;
      } while (*(float *)((int)this + 0x5e8) <= fVar2 && fVar2 != *(float *)((int)this + 0x5e8));
    }
    if ((uVar1 != 0) && (uVar1 < *(uint *)((int)this + 0x5f0))) {
      *(uint *)((int)this + 0x5f0) = uVar1;
    }
    return;
  }
  if (param_1 < *(float *)((int)this + 0x5e8) || param_1 == *(float *)((int)this + 0x5e8)) {
    *(undefined4 *)((int)this + 0x5f0) = 0;
    return;
  }
  *(undefined4 *)((int)this + 0x5f0) = 1;
  return;
}

