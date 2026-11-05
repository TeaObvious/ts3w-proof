/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. 0x600-byte ClipController
   constructor. Sets resource +0x5d0 null, duration +0x5e8 zero, repeat count +0x5ec=1, loop
   iteration +0x5f0=0, event cursor +0x5f4=-1 and state bytes +0x5f8..+0x5fe=0. Calls
   SetTime(startTime). Analyst names describe observed layout. */

void * __thiscall AnimationClipController_Construct(void *this,undefined4 param_1,float param_2)

{
  AnimationController_ConstructBase(this,param_1);
  *(undefined ***)this = &PTR_FUN_00fc2bb0;
  *(undefined ***)((int)this + 8) = &PTR_LAB_00fc2ba4;
  *(undefined ***)((int)this + 0xc) = &PTR_LAB_00fc2ba0;
  *(int *)((int)this + 0x2c) = (int)this + 0x38;
  *(int *)((int)this + 0x28) = (int)this + 0x38;
  *(int *)((int)this + 0x30) = (int)this + 0x4e8;
  FUN_00578e70((undefined4 *)((int)this + 0x4f0));
  *(undefined4 *)((int)this + 0x5d0) = 0;
  *(undefined4 *)((int)this + 0x5d4) = 0;
  *(undefined4 *)((int)this + 0x5d8) = 0;
  *(undefined4 *)((int)this + 0x5e4) = 0;
  *(undefined4 *)((int)this + 0x5e8) = 0;
  *(undefined4 *)((int)this + 0x5ec) = 1;
  *(undefined4 *)((int)this + 0x5f0) = 0;
  *(undefined4 *)((int)this + 0x5f4) = 0xffffffff;
  *(undefined1 *)((int)this + 0x5f8) = 0;
  *(undefined1 *)((int)this + 0x5f9) = 0;
  *(undefined1 *)((int)this + 0x5fa) = 0;
  *(undefined1 *)((int)this + 0x5fb) = 0;
  *(undefined1 *)((int)this + 0x5fc) = 0;
  *(undefined1 *)((int)this + 0x5fd) = 0;
  *(undefined1 *)((int)this + 0x5fe) = 0;
  AnimationClipController_SetTime(this,param_2);
  return this;
}

