/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Initializes base locomotion body and animation
   listener; request storage starts+0xa0, current state+0x148=0, animation interface+0x14c,
   evaluator+0x120. Original dereferences animationinterface without null guard in this constructor;
   preconditions come from caller. */

void * __thiscall
AnimatedStairsBody_Initialize(void *this,void *steeringInterface,void *animationInterface)

{
  FUN_00839280(this,steeringInterface);
  *(undefined ***)((int)this + 0x18) = &PTR_FUN_00fc2c0c;
  *(undefined ***)this = &PTR_LAB_010283e8;
  *(undefined ***)((int)this + 4) = &PTR_LAB_010283e4;
  *(undefined ***)((int)this + 0x18) = &PTR_FUN_010283d0;
  FUN_007515c0((undefined4 *)((int)this + 0x1c));
  FUN_00859fe0((undefined4 *)((int)this + 0x120));
  *(undefined4 *)((int)this + 0x144) = 0;
  *(void **)((int)this + 0x14c) = animationInterface;
  *(undefined4 *)((int)this + 0x148) = 0;
  FUN_00839220(this,(int)this + 0x120);
  (**(code **)(**(int **)((int)this + 0x14c) + 0x2c))(1);
  return this;
}

