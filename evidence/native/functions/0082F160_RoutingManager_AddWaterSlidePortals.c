/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Supplies kind6 to RoutingManager_ReconcileSlotPortals
   and returns its uint count; ECX this, packed GUID at stack+4/+8, RET8. */

uint __thiscall RoutingManager_AddWaterSlidePortals(void *this,ulonglong objectId)

{
  uint uVar1;
  
  uVar1 = RoutingManager_ReconcileSlotPortals(this,objectId,6);
  return uVar1;
}

