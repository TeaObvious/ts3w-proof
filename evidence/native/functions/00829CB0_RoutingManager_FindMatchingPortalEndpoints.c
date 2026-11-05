/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst: original PC 1.67 portal contract. Compares candidate portal start X/Z within original
   epsilon and signed level equality; endpoint end is also compared unless nativeflags bit1 bypasses
   it. Returns vector iterator address through output, not retained portal reference. AL true means
   existing portal, not successful new allocation. */

bool __thiscall
RoutingManager_FindMatchingPortalEndpoints
          (void *this,void *portals,ulonglong lotId,TS3WPortalXZLevel *start,TS3WPortalXZLevel *end,
          void **outMatchIterator)

{
  undefined4 *puVar1;
  void *portal;
  bool bVar2;
  bool bVar3;
  undefined4 *puVar4;
  bool local_2d;
  TS3WPortalXZLevel local_18;
  TS3WPortalXZLevel local_c;
  
  *outMatchIterator = *(void **)((int)portals + 4);
  puVar4 = *(undefined4 **)portals;
  puVar1 = *(undefined4 **)((int)portals + 4);
  local_2d = false;
  bVar3 = false;
  do {
    if (puVar4 == puVar1) {
      return bVar3;
    }
    portal = (void *)*puVar4;
    if (portal != (void *)0x0) {
      bVar2 = Portal_BypassesEndPositionCheck(portal);
      LotRouteGraph_ApplyInverseLotPositionMatrix
                (*(void **)((int)this + 0x95c),lotId,(TS3WPortalXZLevel *)((int)portal + 0x14),
                 &local_18);
      bVar3 = local_2d;
      if ((((ABS(start->x - local_18.x) < _DAT_00fc24fc) &&
           (ABS(start->z - local_18.z) < _DAT_00fc24fc)) && (start->level == local_18.level)) &&
         ((bVar2 || (((LotRouteGraph_ApplyInverseLotPositionMatrix
                                 (*(void **)((int)this + 0x95c),lotId,
                                  (TS3WPortalXZLevel *)((int)portal + 0x20),&local_c),
                      ABS(end->x - local_c.x) < _DAT_00fc24fc &&
                      (ABS(end->z - local_c.z) < _DAT_00fc24fc)) && (end->level == local_c.level))))
         )) {
        local_2d = true;
        *outMatchIterator = puVar4;
        bVar3 = local_2d;
      }
    }
    puVar4 = puVar4 + 1;
  } while (bVar3 == false);
  return bVar3;
}

