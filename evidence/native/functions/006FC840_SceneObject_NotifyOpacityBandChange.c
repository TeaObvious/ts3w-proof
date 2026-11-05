/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  
  if (0.001 <= oldAlpha) {
    if (0.3 <= oldAlpha) {
      iVar3 = 2;
      if (0.999 <= oldAlpha) {
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
  if (0.001 <= newAlpha) {
    if (0.3 <= newAlpha) {
      iVar1 = 2;
      if (0.999 <= newAlpha) {
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
        Scene_AppendDirtyObject(*(void **)((int)this + 0x30),(int)this);
      }
    }
    if ((*(byte *)((int)this + 0x208) & 0x10) != 0) {
      SceneObject_VisitDescendantVisualCallbacks(this);
    }
    FUN_006fc7b0((int)this);
  }
  return;
}

