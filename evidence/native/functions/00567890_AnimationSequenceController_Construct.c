/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. 0x70-byte per-track controller. Owns
   transition wrapper+0x2c; pending sentinel+0x30; previous entry+0x3c; current entry+0x50; hold
   flags+0x6c=0x10; track+0x68. Special track10000 with owner component mask011ea0fc clears
   flag0x10; this special mode is bounded, not generalized. */

void * __thiscall AnimationSequenceController_Construct(void *this,undefined4 param_1,int param_2)

{
  undefined4 *puVar1;
  uint uVar2;
  void *this_00;
  undefined4 *puVar3;
  int iVar4;
  
  AnimationController_ConstructBase(this,param_1);
  *(undefined ***)((int)this + 0x28) = &PTR_FUN_00fc2a60;
  *(undefined ***)this = &PTR_FUN_00fc2b18;
  *(undefined ***)((int)this + 8) = &PTR_LAB_00fc2b0c;
  *(undefined ***)((int)this + 0xc) = &PTR_LAB_00fc2b08;
  *(undefined ***)((int)this + 0x28) = &PTR_FUN_00fc2b00;
  *(undefined4 *)((int)this + 0x2c) = 0;
  *(char **)((int)this + 0x38) = "Animation/SequenceController/NodeList";
  iVar4 = (int)this + 0x30;
  *(int *)iVar4 = iVar4;
  *(int *)((int)this + 0x34) = iVar4;
  *(undefined4 *)((int)this + 0x3c) = 0;
  *(undefined4 *)((int)this + 0x40) = 0;
  *(undefined4 *)((int)this + 0x44) = 0;
  *(undefined4 *)((int)this + 0x48) = 0;
  *(undefined4 *)((int)this + 0x4c) = 0;
  *(undefined4 *)((int)this + 0x50) = 0;
  *(undefined4 *)((int)this + 0x54) = 0;
  *(undefined4 *)((int)this + 0x58) = 0;
  *(undefined4 *)((int)this + 0x5c) = 0;
  *(undefined4 *)((int)this + 0x60) = 0;
  *(undefined4 *)((int)this + 100) = 0;
  *(undefined4 *)((int)this + 0x6c) = 0x10;
  this_00 = (void *)FUN_004e4500(0x38,"Animation/TransitionController",0);
  if (this_00 == (void *)0x0) {
    puVar3 = (undefined4 *)0x0;
  }
  else {
    puVar3 = FUN_0056c140(this_00,param_1);
  }
  puVar1 = *(undefined4 **)((int)this + 0x2c);
  if (puVar3 != puVar1) {
    if (puVar3 != (undefined4 *)0x0) {
      puVar3[1] = puVar3[1] + 1;
    }
    *(undefined4 **)((int)this + 0x2c) = puVar3;
    if ((puVar1 != (undefined4 *)0x0) &&
       (iVar4 = puVar1[1], puVar1[1] = iVar4 + -1, iVar4 + -1 == 0)) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
  }
  *(int *)((int)this + 0x68) = param_2;
  if (((param_2 == 10000) && (*(int **)((int)this + 0x1c) != (int *)0x0)) &&
     (iVar4 = (**(code **)(**(int **)((int)this + 0x1c) + 0x24))(), uVar2 = DAT_011ea0fc, iVar4 != 0
     )) {
    iVar4 = (**(code **)(**(int **)((int)this + 0x1c) + 0x24))();
    if ((*(uint *)(iVar4 + 0x2c) & uVar2) != 0) {
      *(uint *)((int)this + 0x6c) = *(uint *)((int)this + 0x6c) & 0xffffffef;
      return this;
    }
  }
  return this;
}

