/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163738 (TS3W.exe).
   ScriptCore.World::World_ClearRoomMarkerSeed [assembly=ScriptCore token=0x060007EA; objId:
   System.UInt64, markerType: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC1.67 tomb/diving contract. Same object/Location/owning-lot prerequisites as setter.
   Removes typed seed by full uint64 GUID and rebuilds the affected room list. Missing prerequisites
   no-op. Native call consumes all three stack words; markerType is uint32, not a pointer. */

void __cdecl World_ClearRoomMarkerSeed(ulonglong objectGuid,uint markerType)

{
  void *pvVar1;
  int *piVar2;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if ((((pvVar1 != (void *)0x0) &&
       (pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,objectGuid), pvVar1 != (void *)0x0)) &&
      (pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011edf08), pvVar1 != (void *)0x0)) &&
     ((DAT_011edbc4 != (void *)0x0 &&
      (piVar2 = FUN_00c62810(DAT_011edbc4,*(int *)((int)pvVar1 + 8),*(int *)((int)pvVar1 + 0xc),
                             (int *)0x0), piVar2 != (int *)0x0)))) {
    LotPartition_ClearRoomMarkerSeed((void *)piVar2[0xa6],markerType,objectGuid);
  }
  return;
}

