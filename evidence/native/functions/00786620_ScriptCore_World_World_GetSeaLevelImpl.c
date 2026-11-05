/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01163248 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetSeaLevelImpl [assembly=ScriptCore token=0x06000746; ;
   return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). Registered managed
   sea-level wrapper. Actual stored metadata body is one address byte with ZERO actual Listing
   instructions. Separate pristine bounded wrapper bytes show world-global null returns x87 zero,
   else C61090. Bounded window is not full stored-body or Listing coverage. Original managed LotPond
   constructor/startup/ID/corner/BuildBuy lifetime remains its authority. All IDs, physical ABI,
   prototypes/types/body/bytes/Listing/flow/analysis remain unchanged; current resource/cache policy
   is preserved. */

float10 ScriptCore_World__World_GetSeaLevelImpl(void)

{
  float10 fVar1;
  
  if (DAT_011edbc4 != 0) {
    fVar1 = WorldWater_GetSeaLevel(DAT_011edbc4);
    return fVar1;
  }
  return (float10)0;
}

