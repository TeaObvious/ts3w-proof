/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 placed footprint selector. cdecl optional object stack word RET; FULL EAX0/1. Null
   object false. Resolve component via dynamic mask global11EDF08 (matching Location descriptor);
   null component false. Return1 iff component DWORD2C&20 nonzero, else0. No stored yaw
   read/refresh/transform or validity/generation ownership here. Object_GetComponentByMask remains
   separate. */

uint __cdecl Object_TestLocationFlag20(void *optionalObject)

{
  void *pvVar1;
  
  if (optionalObject != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(optionalObject,DAT_011edf08);
    if ((pvVar1 != (void *)0x0) && ((*(uint *)((int)pvVar1 + 0x2c) >> 5 & 1) != 0)) {
      return 1;
    }
  }
  return 0;
}

