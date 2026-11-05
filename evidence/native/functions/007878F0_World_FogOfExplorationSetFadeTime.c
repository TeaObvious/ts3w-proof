/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163748 (TS3W.exe).
   ScriptCore.World::World_FogOfExplorationSetFadeTime [assembly=ScriptCore token=0x060007ED;
   secondsToFade: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC1.67 tomb/diving contract. Forwards one float seconds value to partition fog-fade
   producer. Native producer multiplies by original999.99993896484375 then FISTP under current x87
   rounding control and atomically swaps global duration. */

void __cdecl World_FogOfExplorationSetFadeTime(float seconds)

{
  LotPartition_SetFogFadeSeconds(seconds);
  return;
}

