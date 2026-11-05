/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX tool, modifiers one word, RET4. UIControl2 maps tool1, Shift1 maps tool2, Alt4 retained. Only
   changed mode invokes virtual44(mode,0), then stores tool+10. */

void __thiscall UserTool_ApplyUiModifiers(void *this,byte param_1)

{
  uint uVar1;
  
  uVar1 = (uint)((param_1 & 2) != 0);
  if ((param_1 & 1) != 0) {
    uVar1 = uVar1 | 2;
  }
  if ((param_1 & 4) != 0) {
    uVar1 = uVar1 | 4;
  }
  if (uVar1 != *(uint *)((int)this + 0x10)) {
    (**(code **)(*(int *)this + 0x44))(uVar1,0);
    *(uint *)((int)this + 0x10) = uVar1;
  }
  return;
}

