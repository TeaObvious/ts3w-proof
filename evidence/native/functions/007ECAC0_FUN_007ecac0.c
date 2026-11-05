/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: ECX receiver, two raw settings stackwords, RET8; EAX returns receiver. Stores primary vtable101E600, secondary101E5E8, reference field8=0, byteC=0, settings10/14. Callback primary+18 points to undefined entry7ECAF0; constructor does not itself attach or refresh a window. */

void __thiscall FUN_007ecac0(void *this,undefined4 param_1,undefined4 param_2)

{
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fbb1fc;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined1 *)((int)this + 0xc) = 0;
  *(undefined ***)this = &PTR_CountedReference_Retain_0101e600;
  *(undefined ***)((int)this + 4) = &PTR_LAB_0101e5e8;
  *(undefined4 *)((int)this + 0x10) = param_1;
  *(undefined4 *)((int)this + 0x14) = param_2;
  return;
}
