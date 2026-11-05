/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163480 (TS3W.exe).
   ScriptCore.World::World_SetImposterMode [assembly=ScriptCore token=0x06000794; enable:
   System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC 1.67 map/lot detail contract. Null WorldManager global returns without action;
   otherwise forwards the low input byte to manager+0xd8. This imposter policy is independent of
   manager+0xda and camera map-view state. No synchronous lot transition here. */

void __cdecl ScriptCore_World__World_SetImposterMode(uchar enable)

{
  if (DAT_011edbc4 != (void *)0x0) {
    WorldManager_SetImposterMode(DAT_011edbc4,enable);
  }
  return;
}

