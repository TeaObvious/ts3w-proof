/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161cc8 (TS3W.exe).
   ScriptCore.RouteManager::RouteManager_AddPortal [assembly=ScriptCore token=0x0600106A; objId:
   System.UInt64, startPos: Sims3.SimIFace.Vector3, endPos: Sims3.SimIFace.Vector3, portalCost:
   System.Single, portalType: System.UInt32, flags: System.Int32, agsFlags: System.UInt64;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: original PC 1.67 portal contract. Managed by-value ABI: GUID64, Vector3x2, float cost,
   uint type/int flags, AGS64. Selects one lot from world start X/Z; computes each signed lot floor
   level but discards converted local X/Z. Downstream triples carry original world X/Z plus level;
   graph builder applies its selected-lot matrix. Existing same-lot endpoint match returns handle0.
   Only low-byte bit0 of flags reaches constructor. Successful portal is retained and wrapped in
   host handle family0x28; failure0. */

uint __cdecl
ScriptCore.RouteManager::RouteManager_AddPortal
          (ulonglong objectId,TS3WManagedVector3 start,TS3WManagedVector3 end,float cost,
          uint portalType,int flags,ulonglong ags)

{
  TS3WPortalXZLevel start_00;
  TS3WPortalXZLevel end_00;
  bool bVar1;
  void *lot;
  uint uVar2;
  undefined4 *local_e0;
  void *local_dc;
  TS3WPortalXZLevel local_d8;
  TS3WPortalXZLevel local_cc;
  int local_c0 [3];
  char *local_b4;
  int *local_b0;
  void *local_ac;
  TS3WPortalXZLevel local_a8;
  TS3WPortalXZLevel local_9c;
  undefined8 local_90;
  undefined4 local_88;
  uint local_84;
  undefined2 local_80;
  undefined2 local_7e;
  undefined2 local_7c;
  undefined8 local_78;
  undefined4 local_70;
  uint local_6c;
  undefined2 local_68;
  undefined2 local_66;
  undefined2 local_64;
  float local_60;
  undefined4 uStack_5c;
  float fStack_58;
  undefined4 uStack_54;
  float local_50;
  undefined4 uStack_4c;
  float fStack_48;
  undefined4 uStack_44;
  void *local_34;
  float local_30;
  undefined4 uStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  float local_20;
  undefined4 uStack_1c;
  float fStack_18;
  undefined4 uStack_14;
  
  local_b0 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (local_b0 != (int *)0x0) {
    local_ac = (void *)thunk_FUN_00835d40();
    if (local_ac != (void *)0x0) {
      local_dc = (void *)FUN_008295c0((int)local_ac);
      if ((local_dc != (void *)0x0) && (DAT_011edbc4 != (void *)0x0)) {
        lot = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,start.lane0,start.lane2);
        if (lot != (void *)0x0) {
          FUN_0076c360(&start.lane0,&local_20);
          local_a8.x = DAT_00fab218;
          local_a8.z = DAT_00fab218;
          local_a8.level = 0;
          Lot_WorldPositionToPortalLocalXZLevel(lot,&local_20,&local_a8);
          local_60 = local_20;
          uStack_5c = uStack_1c;
          fStack_58 = fStack_18;
          uStack_54 = uStack_14;
          local_50 = local_20;
          uStack_4c = uStack_1c;
          fStack_48 = fStack_18;
          uStack_44 = uStack_14;
          local_d8.x = local_20;
          local_d8.z = fStack_18;
          local_d8.level = local_a8.level;
          FUN_0076c360(&end.lane0,&local_30);
          local_9c.x = DAT_00fab218;
          local_9c.z = DAT_00fab218;
          local_9c.level = 0;
          Lot_WorldPositionToPortalLocalXZLevel(lot,&local_30,&local_9c);
          local_50 = local_30;
          uStack_4c = uStack_2c;
          fStack_48 = fStack_28;
          uStack_44 = uStack_24;
          local_60 = local_30;
          uStack_5c = uStack_2c;
          fStack_58 = fStack_28;
          uStack_54 = uStack_24;
          local_cc.x = local_30;
          local_cc.z = fStack_28;
          local_cc.level = local_9c.level;
          local_c0[0] = 0;
          local_c0[1] = 0;
          local_c0[2] = 0;
          local_b4 = "Routing/existingPortals";
          LotRouteGraph_CollectObjectPortals(local_dc,lot,objectId,local_c0);
          bVar1 = RoutingManager_FindMatchingPortalEndpoints
                            (local_ac,local_c0,*(ulonglong *)((int)lot + 0x48),&local_d8,&local_cc,
                             &local_34);
          if (!bVar1) {
            local_6c = portalType;
            local_84 = portalType;
            local_68 = 0;
            local_66 = 0;
            local_64 = 0;
            local_70 = 0;
            local_80 = 0;
            local_7e = 0;
            local_7c = 0;
            local_88 = 0;
            local_e0 = (undefined4 *)0x0;
            start_00.z = local_d8.z;
            start_00.x = local_d8.x;
            start_00.level = local_d8.level;
            end_00.z = local_cc.z;
            end_00.x = local_cc.x;
            end_00.level = local_cc.level;
            local_78 = objectId;
            local_90 = objectId;
            LotRouteGraph_CreatePortal
                      (local_dc,lot,objectId,start_00,&local_78,end_00,&local_90,cost,0,
                       (bool)((byte)flags & 1),ags,&local_e0,false,0xffffffff);
            if (local_e0 != (undefined4 *)0x0) {
              (**(code **)*local_e0)();
              uVar2 = (**(code **)(*local_b0 + 200))(local_e0,0x28);
              FUN_00626e50((int *)&local_cc.z);
              return uVar2;
            }
          }
          FUN_00626e50(local_c0);
        }
      }
    }
  }
  return 0;
}

