/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STARTUP_00ec84c0. Native startup advance: ECX object and two physical stack DWORD inputs,
   RET 8. Increments +0x25C, stores callback pair +0x2F0/+0x2F4, updates bar and (outside small
   mode) milestone. A real advance after strict copyright elapsed>+0x258 or dwell elapsed>+0x250
   admits captions, clears dwell clock, and coordinates the effect timer before starting caption.
   Posts completion only when caption and timed effect flags allow; small mode clears
   caption-active. This is native callback/timer sequencing, not host boot-work weighting. Existing
   prototype unchanged. */

void __thiscall AppLoadingScreen_Advance(void *this,undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  uint uVar2;
  float10 fVar3;
  
  *(int *)((int)this + 0x25c) = *(int *)((int)this + 0x25c) + 1;
  *(undefined4 *)((int)this + 0x2f4) = param_2;
  *(undefined4 *)((int)this + 0x2f0) = param_1;
  AppLoadingScreen_UpdateProgressClip((int)this);
  if (*(char *)((int)this + 0x2f8) == '\0') {
    fVar3 = AppLoadingScreen_RevealMilestone((int)this);
    *(float *)((int)this + 0x2d8) = (float)fVar3;
  }
  if (*(char *)((int)this + 0x2e1) == '\0') {
LAB_00ec854f:
    fVar3 = ElapsedClock_ReadScaledTicks((void *)((int)this + 0x2a8));
    if (fVar3 <= (float10)*(float *)((int)this + 0x250)) {
LAB_00ec85e4:
      if ((*(char *)((int)this + 0x2e0) == '\0') && (*(char *)((int)this + 0x2e2) == '\0')) {
        AppLoadingScreen_PostCallbackEvent((int)this);
      }
      goto LAB_00ec85fb;
    }
  }
  else {
    fVar3 = ElapsedClock_ReadScaledTicks((void *)((int)this + 0x2a8));
    if (fVar3 <= (float10)*(float *)((int)this + 600)) {
      if (*(char *)((int)this + 0x2e1) == '\0') goto LAB_00ec854f;
      goto LAB_00ec85e4;
    }
    *(undefined1 *)((int)this + 0x2e1) = 0;
    piVar1 = (int *)(**(code **)(**(int **)((int)this + 0x270) + 0x10))();
    (**(code **)(*piVar1 + 0x74))(1,0);
  }
  *(undefined4 *)((int)this + 0x2a8) = 0;
  *(undefined4 *)((int)this + 0x2ac) = 0;
  *(undefined4 *)((int)this + 0x2b0) = 0;
  *(undefined4 *)((int)this + 0x2b4) = 0;
  uVar2 = (int)(*(float *)((int)this + 0x2d8) - *(float *)((int)this + 0x254)) >> 0x1f;
  *(uint *)((int)this + 0x2d8) =
       ~uVar2 & (uint)*(float *)((int)this + 0x2d8) | (uint)*(float *)((int)this + 0x254) & uVar2;
  if (*(int *)((int)this + 0x2c0) == 0 && *(int *)((int)this + 0x2c4) == 0) {
    ElapsedClock_Restart((DWORD *)((int)this + 0x2c0));
    *(undefined1 *)((int)this + 0x2e2) = 1;
  }
  AppLoadingScreen_StartNextCaption((int)this);
LAB_00ec85fb:
  if (*(char *)((int)this + 0x2f8) != '\0') {
    *(undefined1 *)((int)this + 0x2e0) = 0;
  }
  return;
}

