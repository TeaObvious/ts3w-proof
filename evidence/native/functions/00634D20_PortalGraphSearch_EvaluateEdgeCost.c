/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst: original PC 1.67 portal contract. Same-portal room crossing rejects wrong one-way
   direction, locked permissions and unreachable entry; nativeflags bit1 bypasses exit reachability.
   Allowed cost=portal float32 cost +500 if either side discouraged. Preferred GUID crossing=1
   (without500 penalty); other crossings multiply portal cost4 only when preferredObject is nonzero.
   Different portals use sqrt(dx²+dz²+9*dLevel²) plus directional500 penalty. Rejected crossing
   returns1000000. Output x87 ST0 rounded by caller to float32. Reused pointer-typed locals carrying
   penalty bits are decompiler artifacts; original FLD/FADD operates on float32 500, not numeric
   pointer conversion. */

float __thiscall
PortalGraphSearch_EvaluateEdgeCost
          (void *this,void *routeContext,void *lotGraph,uint fromKey,uint toKey,
          ulonglong preferredObject)

{
  byte bVar1;
  int iVar2;
  float fVar3;
  float fVar4;
  void *routeContext_00;
  bool bVar5;
  bool bVar6;
  TS3WPortalXZLevel *pTVar7;
  TS3WPortalXZLevel *pTVar8;
  uint uVar9;
  short sVar10;
  short sVar11;
  void *portal;
  void *this_00;
  float fVar12;
  
  routeContext_00 = routeContext;
  if ((fromKey & 0xfff0) == 0xfff0) {
LAB_00634d72:
    portal = (void *)0x0;
  }
  else {
    uVar9 = fromKey >> 0x10;
    iVar2 = *(int *)((int)lotGraph + 0x90);
    if ((uint)(*(int *)(iVar2 + 8 + uVar9 * 0x44) - *(int *)(iVar2 + 4 + uVar9 * 0x44) >> 2) <=
        (fromKey & 0xffff)) goto LAB_00634d72;
    portal = *(void **)(*(int *)(iVar2 + uVar9 * 0x44 + 4) + (fromKey & 0xffff) * 4);
  }
  if ((toKey & 0xfff0) == 0xfff0) {
LAB_00634dbb:
    this_00 = (void *)0x0;
  }
  else {
    uVar9 = toKey >> 0x10;
    iVar2 = *(int *)((int)lotGraph + 0x90);
    if ((uint)(*(int *)(iVar2 + 8 + uVar9 * 0x44) - *(int *)(iVar2 + 4 + uVar9 * 0x44) >> 2) <=
        (toKey & 0xffff)) goto LAB_00634dbb;
    this_00 = *(void **)(*(int *)(iVar2 + uVar9 * 0x44 + 4) + (toKey & 0xffff) * 4);
  }
  sVar11 = (short)(fromKey >> 0x10);
  sVar10 = (short)(toKey >> 0x10);
  if (portal == this_00) {
    if ((((sVar11 == *(short *)((int)portal + 0x48)) || ((*(byte *)((int)portal + 0x58) & 1) == 0))
        && ((sVar11 != *(short *)((int)portal + 0x48) ||
            (bVar5 = Portal_IsDirectionLocked(portal,routeContext,false), !bVar5)))) &&
       ((sVar10 != *(short *)((int)portal + 0x48) ||
        (bVar5 = Portal_IsDirectionLocked(portal,routeContext,true), !bVar5)))) {
      bVar1 = *(byte *)((int)portal + 0x58);
      pTVar7 = Portal_SelectDirectionalPosition
                         (portal,*(void **)((int)routeContext + 0x40),
                          sVar11 == *(short *)((int)portal + 0x48),false);
      pTVar8 = Portal_SelectDirectionalPosition
                         (portal,*(void **)((int)routeContext + 0x40),
                          sVar10 == *(short *)((int)portal + 0x48),true);
      bVar5 = PortalGraphSearch_TestEndpointReachability
                        (this,routeContext,*(ulonglong *)lotGraph,pTVar7);
      if ((bVar5) &&
         (((bVar1 >> 1 & 1) != 0 ||
          (bVar5 = PortalGraphSearch_TestEndpointReachability
                             (this,routeContext,*(ulonglong *)lotGraph,pTVar8), bVar5)))) {
        routeContext = (void *)0x0;
        bVar5 = Portal_IsDirectionDiscouraged(portal,routeContext_00,false);
        if ((bVar5) || (bVar5 = Portal_IsDirectionDiscouraged(portal,routeContext_00,true), bVar5))
        {
          routeContext = (void *)FLOAT_00fec63c;
        }
        if (preferredObject != 0) {
          if ((*(int *)((int)portal + 8) == (int)preferredObject) &&
             (*(int *)((int)portal + 0xc) == preferredObject._4_4_)) {
            return 1.0;
          }
          return *(float *)((int)portal + 0x2c) * DAT_00fb3f7c + (float)routeContext;
        }
        return *(float *)((int)portal + 0x2c) + (float)routeContext;
      }
    }
    return _DAT_00fec638;
  }
  if (portal == (void *)0x0) {
    if ((this_00 != (void *)0x0) && ((short)fromKey == -2)) {
      if ((*(short *)((int)this_00 + 0x48) == sVar10) ||
         (bVar5 = false, (*(byte *)((int)this_00 + 0x58) >> 1 & 1) != 0)) {
        bVar5 = true;
      }
      pTVar7 = Portal_SelectDirectionalPosition
                         (this_00,*(void **)((int)routeContext + 0x40),bVar5,false);
      routeContext = (void *)0x0;
      bVar5 = Portal_IsDirectionDiscouraged(this_00,routeContext_00,false);
      if (bVar5) {
        routeContext = (void *)FLOAT_00fec63c;
      }
      fVar12 = PortalLocalPosition_Distance((TS3WPortalXZLevel *)((int)this + 8),pTVar7);
      return fVar12 + (float)routeContext;
    }
    return 0.0;
  }
  if (this_00 != (void *)0x0) {
    lotGraph._0_1_ = *(byte *)((int)this_00 + 0x58) >> 1 & 1;
    if ((*(short *)((int)portal + 0x48) == sVar11) ||
       ((*(byte *)((int)portal + 0x58) >> 1 & 1) != 0)) {
      bVar5 = true;
    }
    else {
      bVar5 = false;
    }
    pTVar7 = Portal_SelectDirectionalPosition
                       (portal,*(void **)((int)routeContext + 0x40),bVar5,true);
    if ((*(short *)((int)this_00 + 0x48) == sVar10) || ((byte)lotGraph != 0)) {
      bVar5 = true;
    }
    else {
      bVar5 = false;
    }
    pTVar8 = Portal_SelectDirectionalPosition
                       (this_00,*(void **)((int)routeContext + 0x40),bVar5,false);
    routeContext = (void *)0x0;
    bVar5 = Portal_IsDirectionDiscouraged(portal,routeContext_00,true);
    if ((bVar5) || (bVar5 = Portal_IsDirectionDiscouraged(this_00,routeContext_00,false), bVar5)) {
      routeContext = (void *)FLOAT_00fec63c;
    }
    fVar3 = (float)(pTVar7->level - pTVar8->level);
    fVar12 = pTVar7->z - pTVar8->z;
    fVar4 = pTVar7->x - pTVar8->x;
    return SQRT(fVar3 * fVar3 * DAT_00fbd020 + fVar4 * fVar4 + fVar12 * fVar12) +
           (float)routeContext;
  }
  if ((short)toKey != -1) {
    return 0.0;
  }
  if (*(short *)((int)portal + 0x48) != sVar11) {
    bVar6 = Portal_BypassesEndPositionCheck(portal);
    bVar5 = false;
    if (!bVar6) goto LAB_006350a0;
  }
  bVar5 = true;
LAB_006350a0:
  pTVar7 = Portal_SelectDirectionalPosition(portal,*(void **)((int)routeContext + 0x40),bVar5,true);
  routeContext = (void *)0x0;
  bVar5 = Portal_IsDirectionDiscouraged(portal,routeContext_00,true);
  if (bVar5) {
    routeContext = (void *)FLOAT_00fec63c;
  }
  fVar12 = PortalLocalPosition_Distance(pTVar7,(TS3WPortalXZLevel *)((int)this + 0x14));
  return fVar12 + (float)routeContext;
}

