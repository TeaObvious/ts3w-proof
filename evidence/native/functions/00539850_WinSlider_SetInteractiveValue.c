/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: requires returned AL mask0x02 from IWindow virtual+0x28; Enabled interpretation
   provisional; signed max-then-min clamp, optional changed event and invalidate; value-interface
   receiver complete+250, IWindow receiver complete+4; ABI void RET8.
   The literal admission is returned AL & 0x02 from IWindow virtual +0x28. Calling this Enabled is
   provisional: the WindowBase property/flag mapping is not established by this pair. The
   value-interface receiver is complete object +0x250; IWindow is complete object +4. No return
   value is assigned by contract; RET 8. Inferred metadata is preserved.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

void __thiscall WinSlider_SetInteractiveValue(void *this,int param_1,char param_2)

{
  int iVar1;
  uint uVar2;
  undefined1 auStack_1c [8];
  undefined4 uStack_14;
  int iStack_10;
  int iStack_c;
  int iStack_8;
  
  uVar2 = (**(code **)(*(int *)((int)this + -0x24c) + 0x28))();
  if ((uVar2 & 2) != 0) {
    iVar1 = *(int *)((int)this + 4);
    if (*(int *)((int)this + 0xc) < param_1) {
      param_1 = *(int *)((int)this + 0xc);
    }
    if (param_1 < *(int *)((int)this + 8)) {
      param_1 = *(int *)((int)this + 8);
    }
    if (param_1 != iVar1) {
      *(int *)((int)this + 4) = param_1;
      if (param_2 != '\0') {
        iStack_10 = *(int *)((int)this + -0x214);
        uStack_14 = 0xef00a884;
        if (iStack_10 == 0) {
          iStack_10 = *(int *)((int)this + -0x218);
        }
        iStack_c = iVar1;
        iStack_8 = param_1;
        (**(code **)(*(int *)((int)this + -0x24c) + 0x118))(auStack_1c);
      }
      (**(code **)(*(int *)((int)this + -0x250) + 0x9c))();
    }
  }
  return;
}

