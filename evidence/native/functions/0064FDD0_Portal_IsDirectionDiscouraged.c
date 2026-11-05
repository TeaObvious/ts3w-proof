/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Tests directional permission==3; graph cost adds500
   for discouraged entry/exit. */

bool __thiscall Portal_IsDirectionDiscouraged(void *this,void *routeContext,bool endSide)

{
  uint uVar1;
  
  uVar1 = Portal_GetDirectionalPermission(this,routeContext,endSide);
  return uVar1 == 3;
}

