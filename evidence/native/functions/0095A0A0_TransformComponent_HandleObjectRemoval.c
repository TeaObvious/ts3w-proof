/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: PC 1.67 original contract. Calls00959fa0 and009589f0 with boolean inverse of Transform
   flag8. ReturnsAL1. Full detach helper semantics remain open. */

bool __thiscall TransformComponent_HandleObjectRemoval(void *this)

{
  FUN_00959fa0((int)this);
  TransformComponent_DetachParentSlotLink(this,~(byte)(*(uint *)((int)this + 0x34) >> 3) & 1);
  return true;
}

