/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163c20 (TS3W.exe).
   ScriptCore.World::World_UnloadHeightMapRelatedDataImpl [assembly=ScriptCore token=0x06000789;
   bForceRelease: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC 1.67 heightmap lifecycle. Native managed wrapper tests world singleton011edbc4,
   forwards forceRelease to World_ReleaseHeightmapRelatedData, and discards its AL result. Original
   cdecl RET with one4-byte caller-owned bool slot. Complete wrapper body ends00787454; no release
   when world missing. */

void __cdecl ScriptCore_World__World_UnloadHeightMapRelatedDataImpl(bool forceRelease)

{
  if (DAT_011edbc4 != (void *)0x0) {
    World_ReleaseHeightmapRelatedData(DAT_011edbc4,forceRelease);
  }
  return;
}

