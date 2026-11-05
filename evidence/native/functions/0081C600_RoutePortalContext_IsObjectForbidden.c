/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Linear search stride8 of+0x68..+0x6c, both GUID32
   words must match. Boolean result is AL only. */

bool __thiscall RoutePortalContext_IsObjectForbidden(void *this,ulonglong objectId)

{
  int *piVar1;
  
  for (piVar1 = *(int **)((int)this + 0x68);
      (piVar1 != *(int **)((int)this + 0x6c) &&
      ((*piVar1 != (int)objectId || (piVar1[1] != objectId._4_4_)))); piVar1 = piVar1 + 2) {
  }
  return piVar1 != *(int **)((int)this + 0x6c);
}

