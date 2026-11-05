/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. 0x50-byte wrapper retains child+0x2c
   and listens through subobject+0x28. Stores displacement magnitude at+0x40 and vector velocity
   (end-start)/child total duration at+0x30. SSE reads four aligned lanes; magnitude uses only xyz.
    */

void * __thiscall
AnimationProceduralMotionController_Construct
          (void *this,undefined4 param_1,int param_2,float *param_3,float *param_4)

{
  int *listener;
  float fVar1;
  float10 fVar2;
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined4 uStack_20;
  
  AnimationController_ConstructBase(this,param_1);
  *(undefined ***)((int)this + 0x28) = &PTR_FUN_00fc2c0c;
  listener = (int *)((int)this + 0x28);
  *(undefined ***)this = &PTR_FUN_00fc3248;
  *(undefined ***)((int)this + 8) = &PTR_LAB_00fc323c;
  *(undefined ***)((int)this + 0xc) = &PTR_LAB_00fc3238;
  *listener = (int)&PTR_AnimationWrapperListener_ForwardStarted_00fc3224;
  *(int *)((int)this + 0x2c) = param_2;
  if (param_2 != 0) {
    *(int *)(param_2 + 4) = *(int *)(param_2 + 4) + 1;
  }
  fVar2 = (float10)(**(code **)(**(int **)((int)this + 0x2c) + 0x20))();
  auVar5._0_4_ = *param_4 - *param_3;
  auVar5._4_4_ = param_4[1] - param_3[1];
  auVar5._8_4_ = param_4[2] - param_3[2];
  auVar5._12_4_ = param_4[3] - param_3[3];
  auVar3._0_4_ = auVar5._8_4_ * auVar5._8_4_ + auVar5._4_4_ * auVar5._4_4_ +
                 auVar5._0_4_ * auVar5._0_4_;
  auVar3._4_4_ = auVar3._0_4_;
  auVar3._8_4_ = auVar3._0_4_;
  auVar3._12_4_ = auVar3._0_4_;
  auVar3 = sqrtps(auVar3,auVar3);
  uStack_20 = auVar3._0_4_;
  *(undefined4 *)((int)this + 0x40) = uStack_20;
  fVar1 = (float)fVar2;
  auVar4._4_4_ = fVar1;
  auVar4._0_4_ = fVar1;
  auVar4._8_4_ = fVar1;
  auVar4._12_4_ = fVar1;
  auVar3 = divps(auVar5,auVar4);
  *(undefined1 (*) [16])((int)this + 0x30) = auVar3;
  if (*(int *)((int)this + 0x2c) != 0) {
    AnimationController_RegisterListener((void *)(*(int *)((int)this + 0x2c) + 0xc),listener,-1);
    return this;
  }
  AnimationController_RegisterListener((void *)0x0,listener,-1);
  return this;
}

