/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. 0x2c-byte controller retains held
   child at+0x28. Created when sequence Current lifetime<=0 and entry flags&8; held child is stopped
   while wrapper remains for pose evaluation. */

void * __thiscall AnimationHoldPoseController_Construct(void *this,undefined4 param_1,int param_2)

{
  AnimationController_ConstructBase(this,param_1);
  *(undefined ***)this = &PTR_FUN_00fc31e0;
  *(undefined ***)((int)this + 8) = &PTR_LAB_00fc31d8;
  *(undefined ***)((int)this + 0xc) = &PTR_LAB_00fc31d4;
  *(int *)((int)this + 0x28) = param_2;
  if (param_2 != 0) {
    *(int *)(param_2 + 4) = *(int *)(param_2 + 4) + 1;
  }
  return this;
}

