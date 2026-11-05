/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Requires all follower availability bits in primary
   mask; otherwise scans stride0x38 full64 variant masks. Four variant positions selected by
   forwardSide/exitSide. No matching variant falls back to primary start/end. Returns stored float
   X/Z/int32level triple. */

TS3WPortalXZLevel * __thiscall
Portal_SelectDirectionalPosition(void *this,void *follower,bool forwardSide,bool exitSide)

{
  TS3WPortalXZLevel *pTVar1;
  uint uVar2;
  ulonglong uVar3;
  
  if (follower != (void *)0x0) {
    uVar3 = Routing_ConvertCASFlagsToPortalAvailability(*(uint *)follower);
    uVar2 = (uint)(uVar3 >> 0x20);
    if (uVar3 != CONCAT44(*(uint *)((int)this + 0x7c) & uVar2,
                          *(uint *)((int)this + 0x78) & (uint)uVar3)) {
      for (pTVar1 = *(TS3WPortalXZLevel **)((int)this + 0x5c);
          pTVar1 != *(TS3WPortalXZLevel **)((int)this + 0x60);
          pTVar1 = (TS3WPortalXZLevel *)&pTVar1[4].level) {
        if (uVar3 == CONCAT44((uint)pTVar1[4].z & uVar2,(uint)pTVar1[4].x & (uint)uVar3)) {
          if (forwardSide) {
            if (exitSide) {
              pTVar1 = pTVar1 + 3;
            }
            return pTVar1;
          }
          if (exitSide) {
            return pTVar1 + 1;
          }
          return pTVar1 + 2;
        }
      }
    }
  }
  pTVar1 = (TS3WPortalXZLevel *)((int)this + 0x14);
  if (!forwardSide) {
    pTVar1 = (TS3WPortalXZLevel *)((int)this + 0x20);
  }
  return pTVar1;
}

