/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. 0x30-byte wrapper retains child+0x2c
   but installs no child listener. PlayPose wraps zero-scale TimeScaleController in this object,
   suppressing propagated events while preserving evaluated pose. */

void * __thiscall
AnimationSuppressEventsController_Construct(void *this,undefined4 param_1,int param_2)

{
  AnimationController_ConstructBase(this,param_1);
  *(undefined ***)((int)this + 0x28) = &PTR_FUN_00fc2c0c;
  *(undefined ***)this = &PTR_FUN_00fc3190;
  *(undefined ***)((int)this + 8) = &PTR_LAB_00fc3188;
  *(undefined ***)((int)this + 0xc) = &PTR_FUN_00fc3184;
  *(undefined ***)((int)this + 0x28) = &PTR_FUN_00fc2c0c;
  *(int *)((int)this + 0x2c) = param_2;
  if (param_2 != 0) {
    *(int *)(param_2 + 4) = *(int *)(param_2 + 4) + 1;
  }
  return this;
}

