/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original instruction review; analyst name. thisECX and stack event-handle low/high plus
   scene-mask. Initializes0x28-byte notifier, event handle at+18/+1c and mask+20, virtual interfaces
   at0/+8/+c/+10/+14. Returns this pointer inEAX although previous decompiler prototype omitted
   return. Full event predicate/timing lies beyond constructor. */

void * __thiscall
SceneReadyNotifier_Construct(void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  *(undefined ***)this = &PTR_LAB_00ff4a78;
  LOCK();
  *(undefined4 *)((int)this + 4) = 0;
  UNLOCK();
  *(undefined ***)((int)this + 8) = &PTR_LAB_00fecfc0;
  *(undefined ***)((int)this + 0xc) = &PTR_LAB_00fa2b8c;
  *(undefined ***)((int)this + 0x10) = &PTR_FUN_00f9b454;
  *(undefined ***)((int)this + 0x14) = &PTR_LAB_00fe2ae4;
  *(undefined4 *)((int)this + 0x18) = param_1;
  *(undefined ***)this = &PTR_LAB_010f3218;
  *(undefined ***)((int)this + 8) = &PTR_LAB_010f3208;
  *(undefined ***)((int)this + 0xc) = &PTR_LAB_010f31f8;
  *(undefined ***)((int)this + 0x10) = &PTR_LAB_010f31ec;
  *(undefined ***)((int)this + 0x14) = &PTR_FUN_010f31e8;
  *(undefined4 *)((int)this + 0x1c) = param_2;
  *(undefined4 *)((int)this + 0x20) = param_3;
  return this;
}

