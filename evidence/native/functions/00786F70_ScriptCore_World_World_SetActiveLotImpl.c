/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011633f0 (TS3W.exe).
   ScriptCore.World::World_SetActiveLotImpl [assembly=ScriptCore token=0x0600077B; lotId:
   System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC 1.67 map/lot detail contract. cdecl UInt64 argument is stack low DWORD then high
   DWORD; forwards the full GUID to WorldManager_SetActiveLot. Null WorldManager is a no-op; this
   bridge returns no load-completion result. */

void __cdecl ScriptCore_World__World_SetActiveLotImpl(ulonglong lotGuid)

{
  if (DAT_011edbc4 != (void *)0x0) {
    WorldManager_SetActiveLot(DAT_011edbc4,lotGuid);
  }
  return;
}

