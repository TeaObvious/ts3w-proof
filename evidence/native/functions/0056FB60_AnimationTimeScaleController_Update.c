/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Retains self, calls child vtable+8
   with scale*delta, releases self. No zero/negative scale guard in update. */

void __thiscall AnimationTimeScaleController_Update(void *this,float param_1)

{
  int iVar1;
  
  if (this != (void *)0x0) {
    *(int *)((int)this + 4) = *(int *)((int)this + 4) + 1;
  }
  (**(code **)(**(int **)((int)this + 0x2c) + 8))(*(float *)((int)this + 0x30) * param_1);
  iVar1 = *(int *)((int)this + 4) + -1;
  *(int *)((int)this + 4) = iVar1;
  if (iVar1 == 0) {
    *(undefined4 *)((int)this + 4) = 1;
    (*(code *)**(undefined4 **)this)(1);
  }
  return;
}

