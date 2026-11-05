/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163780 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetSunriseTime [assembly=ScriptCore token=0x060007F4; ;
   return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_World__World_GetSunriseTime(void)

{
  if (DAT_011edbc4 != 0) {
    return (float10)*(float *)(DAT_011edbc4 + 300);
  }
  return (float10)DAT_00fb3f78;
}

