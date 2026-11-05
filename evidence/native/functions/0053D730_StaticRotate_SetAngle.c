/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_0053d730. Notify attached windows through53D600 BEFORE storing caller angle
   at effect+20. Physical ECX plus one word/RET4. Existing inferred types/storage retained. */

void __thiscall StaticRotate_SetAngle(void *this,undefined4 param_1)

{
  StaticRotate_NotifyAttachedWindows((int)this);
  *(undefined4 *)((int)this + 0x20) = param_1;
  return;
}

