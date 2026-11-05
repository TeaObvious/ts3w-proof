/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 physical ECXproduct/plainRET EAX DWORD[ECX+A0], no stacked argument or mutation.
   Actual80D4C0 caller loads ECXproduct. thiscall product getter has no explicit formal;
   formerfastcall1 represented same physical input but hid owner role. No slot placement veto or
   upgrade policy is implemented by this leaf. */

uint __thiscall ObjectProduct_GetSlotPlacementFlags(void *this)

{
  return *(uint *)((int)this + 0xa0);
}

