/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Calls original world-to-lot transform and
   floor-below-height selector(mode0). Stores float localX and localZ; EAX signed selected level is
   MOVed into output+8, never converted to float. */

void __cdecl
Lot_WorldPositionToPortalLocalXZLevel(void *lot,void *worldVector,TS3WPortalXZLevel *outLocal)

{
  int iVar1;
  float local_20 [2];
  float fStack_18;
  
  Lot_WorldPositionToLocalVector(lot,worldVector,local_20);
  iVar1 = Lot_SelectFloorLevelBelowHeight(lot,local_20,'\0');
  outLocal->level = iVar1;
  outLocal->x = local_20[0];
  outLocal->z = fStack_18;
  return;
}

