/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_0053d700. Notify attached windows through53D600 BEFORE copying aligned16B
   axis from caller. Physical ECX plus one word/RET4; native vector storage is not a two-dimensional
   managed vector ABI. */

void __thiscall StaticRotate_SetAxis(void *this,undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  StaticRotate_NotifyAttachedWindows((int)this);
  uVar1 = param_1[1];
  uVar2 = param_1[2];
  uVar3 = param_1[3];
  *(undefined4 *)((int)this + 0x10) = *param_1;
  *(undefined4 *)((int)this + 0x14) = uVar1;
  *(undefined4 *)((int)this + 0x18) = uVar2;
  *(undefined4 *)((int)this + 0x1c) = uVar3;
  return;
}

