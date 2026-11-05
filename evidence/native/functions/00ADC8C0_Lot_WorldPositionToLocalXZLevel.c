/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Outputs LotXZLevel{float localX;float localZ;int level}.
   Original00adc909 MOV[ECX+8],EAX stores INTEGER return of00ab5dc0, not float despite stale
   decompiler. Uses world→local vector then midpoint height selection with literal1. Preserve
   signed integer level. */

void __cdecl Lot_WorldPositionToLocalXZLevel(void *lot,float *worldPosition,LotXZLevel *output)

{
  int iVar1;
  float local_20 [2];
  float fStack_18;
  
  Lot_WorldPositionToLocalVector(lot,worldPosition,local_20);
  iVar1 = Lot_SelectLevelByMidpointHeight(lot,local_20,'\x01');
  output->level = iVar1;
  output->x = local_20[0];
  output->z = fStack_18;
  return;
}

