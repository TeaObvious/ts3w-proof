/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. 0x38-byte wrapper retains child
   at+0x2c, stores float scale+0x30, cached totalDuration=child totalDuration/scale at+0x34 without
   zero guard, registers borrowed listener subobject+0x28 on child. Self reference count starts0
   through base constructor. */

int * __thiscall
AnimationTimeScaleController_Construct
          (void *this,int *animationInterface,int *child,float timeScale)

{
  int *listener;
  float10 fVar1;
  
  AnimationController_ConstructBase(this,animationInterface);
  *(undefined ***)((int)this + 0x28) = &PTR_FUN_00fc2c0c;
  listener = (int *)((int)this + 0x28);
  *(undefined ***)this = &PTR_FUN_00fc3140;
  *(undefined ***)((int)this + 8) = &PTR_LAB_00fc3138;
  *(undefined ***)((int)this + 0xc) = &PTR_LAB_00fc3134;
  *listener = (int)&PTR_AnimationWrapperListener_ForwardStarted_00fc30c4;
  *(int **)((int)this + 0x2c) = child;
  if (child != (int *)0x0) {
    child[1] = child[1] + 1;
  }
  *(float *)((int)this + 0x30) = timeScale;
  fVar1 = (float10)(**(code **)(**(int **)((int)this + 0x2c) + 0x20))();
  *(float *)((int)this + 0x34) = (float)(fVar1 / (float10)*(float *)((int)this + 0x30));
  if (*(int *)((int)this + 0x2c) != 0) {
    AnimationController_RegisterListener((void *)(*(int *)((int)this + 0x2c) + 0xc),listener,-1);
    return this;
  }
  AnimationController_RegisterListener((void *)0x0,listener,-1);
  return this;
}

