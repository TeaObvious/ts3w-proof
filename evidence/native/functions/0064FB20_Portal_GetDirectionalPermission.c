/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst: original PC 1.67 portal contract. Per-context cache key is fullobjectGUID plus two
   rawuint16room ids (12bytes), not portalserial; portals sharing object/roompair share decisions.
   Stores two directional bytes at record+0x10.1=Locked,2=Unlocked,3=Discouraged. Without
   context/follower returnsUnlocked2. For finitecost default locks when cost>=1000000 or route
   forbiddenGUID; original COMISS/JAE treats NaN as initialUnlocked2, contrary to decompiler
   cost-less-than expression. Non-boat followers additionally require full64 AGS inclusion in
   primary/variant; originalboat species bypass this availability rejection (Shark is not exempt).
   Cache is populated only after object/Location/lotgraph resolve. Active lotgraph+0x8f triggers
   managed event0x3b; valid1..3 overrides, invalid/0 disables lot callback activation and keeps
   default. Cache scopes outcome to this route context. */

uint __thiscall Portal_GetDirectionalPermission(void *this,void *routeContext,bool endSide)

{
  bool bVar1;
  short sourceRoom;
  void *pvVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  ulonglong uVar6;
  ushort rawRoom;
  uint local_28;
  void *local_24;
  void *local_20;
  int local_1c [3];
  undefined4 local_10;
  undefined4 local_c;
  undefined2 local_8;
  undefined2 local_6;
  
  if ((routeContext == (void *)0x0) || (*(int *)((int)routeContext + 0x40) == 0)) {
    return 2;
  }
  local_10 = *(undefined4 *)((int)this + 8);
  local_c = *(undefined4 *)((int)this + 0xc);
  local_8 = *(undefined2 *)((int)this + 0x48);
  local_6 = *(undefined2 *)((int)this + 0x4a);
  local_24 = (void *)((uint)local_24 & 0xffffff00);
  PortalPermissionCache_FindOrInsert(routeContext,local_1c,&local_10);
  local_28 = *(uint *)(local_1c[0] + 0x10);
  if (endSide) {
    local_28 = local_28 >> 8;
  }
  local_28 = local_28 & 0xff;
  if (local_28 == 0) {
    local_28 = 1;
    if (*(float *)((int)this + 0x2c) < _DAT_00fee088) {
      local_28 = 2;
    }
    uVar3 = **(uint **)((int)routeContext + 0x40);
    uVar6 = Routing_ConvertCASFlagsToPortalAvailability(uVar3);
    uVar5 = (uint)(uVar6 >> 0x20);
    bVar1 = Routing_IsBoatSpeciesForPortalPermission(uVar3 & 0xcf00);
    if (((!bVar1) && (local_28 != 1)) &&
       (uVar6 != CONCAT44(*(uint *)((int)this + 0x7c) & uVar5,
                          *(uint *)((int)this + 0x78) & (uint)uVar6))) {
      for (iVar4 = *(int *)((int)this + 0x5c); iVar4 != *(int *)((int)this + 0x60);
          iVar4 = iVar4 + 0x38) {
        if (uVar6 == CONCAT44(*(uint *)(iVar4 + 0x34) & uVar5,*(uint *)(iVar4 + 0x30) & (uint)uVar6)
           ) goto LAB_0064fc25;
      }
      local_28 = 1;
    }
LAB_0064fc25:
    iVar4 = thunk_FUN_00835d40();
    if (((iVar4 != 0) &&
        (pvVar2 = (void *)FUN_00828f00(*(int *)((int)routeContext + 0x40)), pvVar2 != (void *)0x0))
       && (bVar1 = RoutePortalContext_IsObjectForbidden
                             (pvVar2,CONCAT26((short)((uint)*(undefined4 *)((int)this + 0xc) >> 0x10
                                                     ),CONCAT15((char)((uint)*(undefined4 *)
                                                                              ((int)this + 0xc) >> 8
                                                                      ),*(undefined5 *)
                                                                         ((int)this + 8)))), bVar1))
    {
      local_28 = 1;
    }
    pvVar2 = ObjectRegistry_GetGlobal();
    if (pvVar2 != (void *)0x0) {
      local_24 = ObjectRegistry_FindBorrowed
                           (pvVar2,CONCAT26((short)((uint)*(undefined4 *)((int)this + 0xc) >> 0x10),
                                            CONCAT15((char)((uint)*(undefined4 *)((int)this + 0xc)
                                                           >> 8),*(undefined5 *)((int)this + 8))));
      if (local_24 != (void *)0x0) {
        LOCK();
        *(int *)((int)local_24 + 4) = *(int *)((int)local_24 + 4) + 1;
        UNLOCK();
        pvVar2 = Object_GetComponentByMask(local_24,DAT_011edf08);
        if (pvVar2 != (void *)0x0) {
          uVar6 = *(ulonglong *)((int)pvVar2 + 8);
          local_20 = LotRouteGraph_FindLotByGuid
                               (*(void **)((int)routeContext + 0x44),
                                CONCAT26((short)((uint)*(undefined4 *)((int)pvVar2 + 0xc) >> 0x10),
                                         CONCAT15((char)((uint)*(undefined4 *)((int)pvVar2 + 0xc) >>
                                                        8),*(undefined5 *)((int)pvVar2 + 8))));
          if (local_20 != (void *)0x0) {
            uVar3 = local_28;
            if (*(char *)((int)local_20 + 0x8f) != '\0') {
              if (endSide) {
                iVar4 = Routing_RawRoomToManagedRoomId(*(ushort *)((int)this + 0x4a));
                sourceRoom = (short)iVar4;
                rawRoom = *(ushort *)((int)this + 0x48);
              }
              else {
                iVar4 = Routing_RawRoomToManagedRoomId(*(ushort *)((int)this + 0x48));
                sourceRoom = (short)iVar4;
                rawRoom = *(ushort *)((int)this + 0x4a);
              }
              iVar4 = Routing_RawRoomToManagedRoomId(rawRoom);
              uVar3 = World_InvokePortalLockedCallback
                                (uVar6,*(ulonglong *)(*(int *)((int)routeContext + 0x40) + 8),
                                 *(ulonglong *)((int)this + 8),sourceRoom,(short)iVar4,local_28 == 1
                                );
              if ((uVar3 == 0) || (3 < uVar3)) {
                *(undefined1 *)((int)local_20 + 0x8f) = 0;
                uVar3 = local_28;
              }
            }
            if (endSide) {
              *(uint *)(local_1c[0] + 0x10) = *(uint *)(local_1c[0] + 0x10) | uVar3 << 8;
              FUN_007462e0((int *)&local_24);
              return uVar3;
            }
            *(uint *)(local_1c[0] + 0x10) = *(uint *)(local_1c[0] + 0x10) | uVar3;
            local_28 = uVar3;
          }
        }
      }
      FUN_007462e0((int *)&local_24);
    }
  }
  return local_28;
}

