/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX tool, two stack words, RET8/AL1. Pressed byte8B selects D05050; otherwise calls D02460 with a
   third zero word. This gates raw-pointer writer versus pressed-direction consumer; no new
   synchronous game-tick ordering inferred. */

undefined4 __thiscall ObjectTool_UpdatePointerPlacement(void *this,float param_1,float *param_2)

{
  undefined4 uVar1;
  
  if (*(char *)((int)this + 0x8b) != '\0') {
    uVar1 = ObjectTool_UpdatePressedRotationOrHeight(this,param_1,param_2);
    return CONCAT31((int3)((uint)uVar1 >> 8),1);
  }
  uVar1 = ObjectTool_UpdateUnpressedPlacement(this,param_1,param_2);
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}

