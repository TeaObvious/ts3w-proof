/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: finds the first lot containing a world X/Z point. Calls
   LotSpatialIndex_FindBucketAtWorldXZ; for each non-null candidate pointer it converts world X/Z to
   that lot's local coordinates and accepts both local components in inclusive [0, lot width/height]
   bounds at +0x174/+0x178. Returns the lot pointer or null in EAX. The candidate bucket is only a
   coarse filter; ordering of overlapping lots follows bucket order. */

void * __thiscall LotSpatialIndex_FindContainingLotAtWorldXZ(void *this,float param_1,float param_2)

{
  undefined4 *puVar1;
  void *this_00;
  undefined4 *puVar2;
  float local_8;
  float local_4;
  
  puVar2 = (undefined4 *)LotSpatialIndex_FindBucketAtWorldXZ(this,param_1,param_2);
  if (puVar2 == (undefined4 *)0x0) {
    return (void *)0x0;
  }
  puVar1 = (undefined4 *)puVar2[1];
  puVar2 = (undefined4 *)*puVar2;
  while( true ) {
    if (puVar2 == puVar1) {
      return (void *)0x0;
    }
    this_00 = (void *)*puVar2;
    if ((((this_00 != (void *)0x0) &&
         (Lot_WorldXZToLocalXZ(this_00,param_1,param_2,&local_8,&local_4), 0.0 <= local_8)) &&
        (local_8 <= (float)*(int *)((int)this_00 + 0x174))) &&
       ((0.0 <= local_4 && (local_4 <= (float)*(int *)((int)this_00 + 0x178))))) break;
    puVar2 = puVar2 + 1;
  }
  return this_00;
}

