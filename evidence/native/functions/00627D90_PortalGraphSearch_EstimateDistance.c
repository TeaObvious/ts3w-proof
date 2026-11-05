/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Original instruction FILD signed level difference,
   FMUL9, float X/Z differences, FSQRT. Heuristic uses sqrt(dx²+dz²+9*dLevel²). This does not
   establish optimality with preferred costs. */

float __thiscall
PortalGraphSearch_EstimateDistance
          (void *this,void *routeContext,void *lotGraph,uint fromKey,uint toKey)

{
  float fVar1;
  float fVar2;
  float fVar3;
  TS3WPortalXZLevel *pTVar4;
  TS3WPortalXZLevel *pTVar5;
  
  pTVar4 = PortalGraphSearch_GetNodePosition
                     (this,*(void **)((int)routeContext + 0x40),lotGraph,fromKey,false);
  pTVar5 = PortalGraphSearch_GetNodePosition
                     (this,*(void **)((int)routeContext + 0x40),lotGraph,toKey,false);
  fVar2 = (float)(pTVar4->level - pTVar5->level);
  fVar1 = pTVar4->z - pTVar5->z;
  fVar3 = pTVar4->x - pTVar5->x;
  return SQRT(fVar2 * fVar2 * DAT_00fbd020 + fVar3 * fVar3 + fVar1 * fVar1);
}

