/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Tests any intersection of two32-bit requested mask halves.
   selector0 reads RouteOption at+0x28/+0x2c; selector1 reads RouteOption2+0x30/+0x34. Returns
   EAX0/1. This is OR-any-bit, not all-bits set. */

undefined4 __thiscall RoutingOptions_TestMask(void *this,uint param_1,uint param_2,char param_3)

{
  uint uVar1;
  uint uVar2;
  
  if (param_3 == '\0') {
    uVar1 = *(uint *)((int)this + 0x28);
    uVar2 = *(uint *)((int)this + 0x2c);
  }
  else {
    uVar1 = *(uint *)((int)this + 0x30);
    uVar2 = *(uint *)((int)this + 0x34);
  }
  if ((uVar1 & param_1) != 0 || (uVar2 & param_2) != 0) {
    return 1;
  }
  return 0;
}

