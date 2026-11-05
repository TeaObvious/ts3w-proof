/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161d90 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.RouteManager::RouteManager_SetSteeringOption [assembly=ScriptCore token=0x06001083;
   simObjId: System.UInt64, steeringOption: System.UInt32, isOn: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC1.67 original full routing wrapper recovered from one-byte placeholder. Physical
   cdecl4stackwords GUIDlo/high,option,enabledword/plainRET. Current registry ->
   fullGUIDborrowedobject -> selectedroutingcomponent -> setter. Originalbindingname retained; raw
   enabled stackword width kept without claiming a recovered full32bit Boolean meaning.
   Objectincarnation owns componentstate, not a global persistent hostrowbyGUID. */

void __cdecl
ScriptCore_RouteManager__RouteManager_SetSteeringOption
          (dword guidLow,dword guidHigh,dword option,dword enabledWord)

{
  void *pvVar1;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(guidHigh,guidLow));
    if (pvVar1 != (void *)0x0) {
      pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea138);
      if (pvVar1 != (void *)0x0) {
        FUN_009520f0(pvVar1,option,(char)enabledWord);
      }
    }
  }
  return;
}

