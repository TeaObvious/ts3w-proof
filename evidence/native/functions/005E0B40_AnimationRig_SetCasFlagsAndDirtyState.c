/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX rig, one flags dword RET4. Dirty2000 iff XOR
   old/new has307F bits, or CF00 species differ after independently normalizing0 to100. Always
   OR4700, write raw flags+24, reset fields+14/+18 to1F; if actor+20 exists call005C9650. Current
   RequiresRigReset models only dirty2000 predicate, not all these side effects. */

void __thiscall AnimationRig_SetCasFlagsAndDirtyState(void *this,uint param_1)

{
  uint uVar1;
  uint uVar2;
  
  uVar2 = *(uint *)((int)this + 0x24);
  if (((uVar2 ^ param_1) & 0x307f) == 0) {
    uVar1 = param_1;
    if ((param_1 & 0xcf00) == 0) {
      uVar1 = param_1 | 0x100;
    }
    if ((uVar2 & 0xcf00) == 0) {
      uVar2 = uVar2 | 0x100;
    }
    if (((uVar1 ^ uVar2) & 0xcf00) == 0) goto LAB_005e0b80;
  }
  *(uint *)((int)this + 0x1c) = *(uint *)((int)this + 0x1c) | 0x2000;
LAB_005e0b80:
  *(uint *)((int)this + 0x1c) = *(uint *)((int)this + 0x1c) | 0x4700;
  *(uint *)((int)this + 0x24) = param_1;
  *(undefined4 *)((int)this + 0x14) = 0x1f;
  *(undefined4 *)((int)this + 0x18) = 0x1f;
  if (*(void **)((int)this + 0x20) != (void *)0x0) {
    AnimationActor_SetCasFlags(*(void **)((int)this + 0x20),param_1);
  }
  return;
}

