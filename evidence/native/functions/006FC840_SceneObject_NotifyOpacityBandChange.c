/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original instruction review. Finite alpha bucket thresholds
   binary32(.001),(.3),(.999): belowfirst0,belowsecond1,belowthird2,otherwise3. Only when old/new
   bucket differs queues owner on dirtylist ifneeded, conditionally invokes descendant callbacks
   forbyte208 mask10, calls006FC7B0. This is render categorization, not object VisualState bit
   hiding. */

void __thiscall SceneObject_NotifyOpacityBandChange(void *this,float oldAlpha,float newAlpha)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  
  if (DAT_00ffacf4 <= oldAlpha) {
    if (DAT_00ffacf8 <= oldAlpha) {
      iVar3 = 2;
      if (DAT_00ffacf0 <= oldAlpha) {
        iVar3 = 3;
      }
    }
    else {
      iVar3 = 1;
    }
  }
  else {
    iVar3 = 0;
  }
  if (DAT_00ffacf4 <= newAlpha) {
    if (DAT_00ffacf8 <= newAlpha) {
      iVar1 = 2;
      if (DAT_00ffacf0 <= newAlpha) {
        iVar1 = 3;
      }
    }
    else {
      iVar1 = 1;
    }
  }
  else {
    iVar1 = 0;
  }
  if (iVar3 != iVar1) {
    if (this == (void *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = (int *)((int)this + 0x18);
    }
    if (*piVar2 == 0) {
      *piVar2 = (int)piVar2;
      piVar2[1] = (int)piVar2;
      if (*(void **)((int)this + 0x30) != (void *)0x0) {
        FUN_006e3f00(*(void **)((int)this + 0x30),(int)this);
      }
    }
    if ((*(byte *)((int)this + 0x208) & 0x10) != 0) {
      SceneObject_VisitDescendantVisualCallbacks(this);
    }
    FUN_006fc7b0((int)this);
  }
  return;
}

