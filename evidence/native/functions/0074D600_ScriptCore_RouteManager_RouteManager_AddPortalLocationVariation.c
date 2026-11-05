/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161cd8 (TS3W.exe).
   ScriptCore.RouteManager::RouteManager_AddPortalLocationVariation [assembly=ScriptCore
   token=0x0600106C; objId: System.UInt64, portalHandle: System.UInt32, startPos:
   Sims3.SimIFace.Vector3, endPos: Sims3.SimIFace.Vector3, backwardsStartPos:
   Sims3.SimIFace.Vector3, backwardsEndPos: Sims3.SimIFace.Vector3, agsFlags: System.UInt64;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: original PC 1.67 portal contract. Requires handle high byte0x28, host resolution and
   interface0xf0464184. For four positions, lot is selected from forward start world X/Z; computed
   local X/Z is discarded, original world X/Z and selected signed level are passed to backend matrix
   transform. Backend stores directional AGS variant; object GUID argument is passed but not used by
   inspected backend. Invalid handle/context returns AL0. */

bool __cdecl
ScriptCore.RouteManager::RouteManager_AddPortalLocationVariation
          (ulonglong objectId,uint portalHandle,TS3WManagedVector3 start,TS3WManagedVector3 end,
          TS3WManagedVector3 backStart,TS3WManagedVector3 backEnd,ulonglong ags)

{
  TS3WPortalXZLevel start_00;
  TS3WPortalXZLevel end_00;
  TS3WPortalXZLevel backStart_00;
  TS3WPortalXZLevel backEnd_00;
  int iVar1;
  bool bVar2;
  int iVar3;
  int *piVar4;
  void *portal;
  void *lot;
  void *pvStack_120;
  TS3WPortalXZLevel local_118;
  TS3WPortalXZLevel TStack_10c;
  TS3WPortalXZLevel TStack_100;
  TS3WPortalXZLevel TStack_f4;
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  int iStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  
  iVar3 = thunk_FUN_00835d40();
  if (iVar3 == 0) {
    local_118.x = 0.0;
  }
  else {
    local_118.x = (float)FUN_008295c0(iVar3);
  }
  piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (((local_118.x != 0.0) && (piVar4 != (int *)0x0)) &&
     ((portalHandle & 0xff000000) == 0x28000000)) {
    piVar4 = (int *)(**(code **)(*piVar4 + 0xcc))(portalHandle);
    if (piVar4 != (int *)0x0) {
      portal = (void *)(**(code **)(*piVar4 + 0xc))(0xf0464184);
      if ((portal != (void *)0x0) && (DAT_011edbc4 != (void *)0x0)) {
        lot = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,start.lane0,start.lane2);
        if (lot != (void *)0x0) {
          FUN_0076c360(&start.lane0,&uStack_b8);
          local_118.x = DAT_00fab218;
          local_118.z = DAT_00fab218;
          local_118.level = 0;
          Lot_WorldPositionToPortalLocalXZLevel(lot,&uStack_b8,&local_118);
          iVar3 = local_118.level;
          uStack_48 = uStack_b8;
          uStack_44 = uStack_b4;
          uStack_40 = uStack_b0;
          uStack_3c = uStack_ac;
          uStack_28 = uStack_b8;
          uStack_24 = uStack_b4;
          uStack_20 = uStack_b0;
          uStack_1c = uStack_ac;
          FUN_0076c360(&end.lane0,&uStack_d8);
          TStack_100.x = DAT_00fab218;
          TStack_100.z = DAT_00fab218;
          TStack_100.level = 0;
          Lot_WorldPositionToPortalLocalXZLevel(lot,&uStack_d8,&TStack_100);
          iVar1 = TStack_100.level;
          uStack_88 = uStack_d8;
          uStack_84 = uStack_d4;
          uStack_80 = uStack_d0;
          uStack_7c = uStack_cc;
          uStack_68 = uStack_d8;
          uStack_64 = uStack_d4;
          uStack_60 = uStack_d0;
          uStack_5c = uStack_cc;
          FUN_0076c360(&backStart.lane0,&uStack_e8);
          TStack_10c.x = DAT_00fab218;
          TStack_10c.z = DAT_00fab218;
          TStack_10c.level = 0;
          Lot_WorldPositionToPortalLocalXZLevel(lot,&uStack_e8,&TStack_10c);
          uStack_38 = uStack_e8;
          uStack_34 = uStack_e4;
          uStack_30 = uStack_e0;
          uStack_2c = uStack_dc;
          uStack_58 = uStack_e8;
          uStack_54 = uStack_e4;
          uStack_50 = uStack_e0;
          uStack_4c = uStack_dc;
          iStack_9c = TStack_10c.level;
          FUN_0076c360(&backEnd.lane0,&uStack_c8);
          TStack_f4.x = DAT_00fab218;
          TStack_f4.z = DAT_00fab218;
          TStack_f4.level = 0;
          Lot_WorldPositionToPortalLocalXZLevel(lot,&uStack_c8,&TStack_f4);
          uStack_78 = uStack_c8;
          uStack_74 = uStack_c4;
          uStack_70 = uStack_c0;
          uStack_6c = uStack_bc;
          uStack_98 = uStack_c8;
          uStack_94 = uStack_c4;
          uStack_90 = uStack_c0;
          uStack_8c = uStack_bc;
          start_00.z = (float)uStack_40;
          start_00.x = (float)uStack_28;
          start_00.level = iVar3;
          end_00.z = (float)uStack_80;
          end_00.x = (float)uStack_68;
          end_00.level = iVar1;
          backStart_00.z = (float)uStack_30;
          backStart_00.x = (float)uStack_58;
          backStart_00.level = iStack_9c;
          backEnd_00.z = (float)uStack_c0;
          backEnd_00.x = (float)uStack_c8;
          backEnd_00.level = TStack_f4.level;
          bVar2 = LotRouteGraph_AddPortalLocationVariant
                            (pvStack_120,lot,objectId,portal,start_00,end_00,backStart_00,backEnd_00
                             ,ags,false);
          return bVar2;
        }
      }
    }
  }
  return false;
}

