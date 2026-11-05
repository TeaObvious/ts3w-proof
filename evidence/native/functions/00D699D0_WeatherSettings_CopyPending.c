/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 weather snapshot instruction contract. ECXmanager, outputpointerstack RET4.
   Same980criticalsection, REP MOVSD23 manager+924 PENDING ->output, leave. This API returns
   submitted pending state; does not return active8C8 or render-prepared9EC snapshot and does not
   clear dirty9A0. Copies padding bytes too; semantic comparator separately ignorespadding. */

void __thiscall WeatherSettings_CopyPending(void *this,PCWeatherSettings *output)

{
  int iVar1;
  uint *puVar2;
  
  EnterCriticalSection((LPCRITICAL_SECTION)((int)this + 0x980));
  puVar2 = (uint *)((int)this + 0x924);
  for (iVar1 = 0x17; iVar1 != 0; iVar1 = iVar1 + -1) {
    output->precipitationType = *puVar2;
    puVar2 = puVar2 + 1;
    output = (PCWeatherSettings *)&output->precipitationStrength;
  }
  LeaveCriticalSection((LPCRITICAL_SECTION)((int)this + 0x980));
  return;
}

