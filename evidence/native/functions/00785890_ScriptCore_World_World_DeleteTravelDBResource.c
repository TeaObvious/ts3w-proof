/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163778 (TS3W.exe).
   ScriptCore.World::World_DeleteTravelDBResource [assembly=ScriptCore token=0x060007F3; key:
   Sims3.SimIFace.ResourceKey; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   Travel proof review: cdecl 16-byte managed key is(type,group,instance64), reordered to
   internal(instance64,type,group) and passed by address to009c8b60. BooleanAL result; absent
   storage pointer+664 returnsfalse. Owner getter is dereferenced withoutnull guard.
   LifeEventManager/LifeEvent.Forget also consumes this API, so database deletion is not Sim-only.
    */

bool __cdecl ScriptCore_World__World_DeleteTravelDBResource(TravelManagedResourceKey key)

{
  bool bVar1;
  void *pvVar2;
  TravelNativeResourceKey local_10;
  
  pvVar2 = DownloadContent_GetOwnerFromGlobalLink();
  if (*(void **)((int)pvVar2 + 0x664) != (void *)0x0) {
    local_10.InstanceId._0_4_ = (undefined4)key.InstanceId;
    local_10.TypeId = key.TypeId;
    local_10.InstanceId._4_4_ = key.InstanceId._4_4_;
    local_10.GroupId = key.GroupId;
    bVar1 = SimStorage_DeleteTravelResource(*(void **)((int)pvVar2 + 0x664),&local_10);
    return bVar1;
  }
  return false;
}

