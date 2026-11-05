/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163730 (TS3W.exe).
   ScriptCore.World::World_SetRoomMarkerSeed [assembly=ScriptCore token=0x060007E9; objId:
   System.UInt64, markerType: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC1.67 tomb/diving contract. Requires global registry, existing object Location
   component and owning lot. Uses Location local x/z/integer level then inserts/updates marker by
   full uint64 GUID. No world load or teleport; missing prerequisites no-op. */

void __cdecl ScriptCore.World::World_SetRoomMarkerSeed(ulonglong objectGuid,uint markerType)

{
  void *pvVar1;
  int *piVar2;
  LotXZLevel local_c;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if ((((pvVar1 != (void *)0x0) &&
       (pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,objectGuid), pvVar1 != (void *)0x0)) &&
      (pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011edf08), pvVar1 != (void *)0x0)) &&
     ((DAT_011edbc4 != (void *)0x0 &&
      (piVar2 = WorldObjects_FindLotByGuid
                          (DAT_011edbc4,*(uint *)((int)pvVar1 + 8),*(uint *)((int)pvVar1 + 0xc),
                           (uint *)0x0), piVar2 != (int *)0x0)))) {
    local_c.x = -1.0;
    local_c.z = -1.0;
    local_c.level = 0;
    ObjectLocation_CopyXZLevel(pvVar1,&local_c.x,&local_c.z,&local_c.level);
    LotPartition_SetRoomMarkerSeed((void *)piVar2[0xa6],markerType,objectGuid,&local_c);
  }
  return;
}

