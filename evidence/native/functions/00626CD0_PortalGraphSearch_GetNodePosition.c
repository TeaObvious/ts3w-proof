/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst: original PC 1.67 portal contract. Node key high16=room, low16=portal index; lowfffe
   means start andffff goal. Other fff0..ffff are reserved, Invalid/reserved low index or null
   portal returns static fallback; high16room index is used without visible range check, so
   arbitrary malformed keys are not safe by contract. Uses directional variant selection for valid
   portal. */

TS3WPortalXZLevel * __thiscall
PortalGraphSearch_GetNodePosition
          (void *this,void *follower,void *lotGraph,uint nodeKey,bool exitSide)

{
  int iVar1;
  void *this_00;
  TS3WPortalXZLevel *pTVar2;
  uint uVar3;
  
  if ((nodeKey & 0xfff0) != 0xfff0) {
    uVar3 = nodeKey >> 0x10;
    iVar1 = *(int *)((int)lotGraph + 0x90);
    if (((nodeKey & 0xffff) <
         (uint)(*(int *)(iVar1 + 8 + uVar3 * 0x44) - *(int *)(iVar1 + 4 + uVar3 * 0x44) >> 2)) &&
       (this_00 = *(void **)(*(int *)(iVar1 + uVar3 * 0x44 + 4) + (nodeKey & 0xffff) * 4),
       this_00 != (void *)0x0)) {
      if ((*(short *)((int)this_00 + 0x48) == (short)(nodeKey >> 0x10)) ||
         (nodeKey._0_1_ = false, (*(byte *)((int)this_00 + 0x58) >> 1 & 1) != 0)) {
        nodeKey._0_1_ = true;
      }
      pTVar2 = Portal_SelectDirectionalPosition(this_00,follower,nodeKey._0_1_,exitSide);
      return pTVar2;
    }
  }
  if ((_DAT_011d0010 & 1) == 0) {
    _DAT_011d0010 = _DAT_011d0010 | 1;
  }
  if ((nodeKey & 0xffff) != 0xfffe) {
    if ((nodeKey & 0xffff) != 0xffff) {
      return (TS3WPortalXZLevel *)&DAT_011d0004;
    }
    return (TS3WPortalXZLevel *)((int)this + 0x14);
  }
  return (TS3WPortalXZLevel *)((int)this + 8);
}

