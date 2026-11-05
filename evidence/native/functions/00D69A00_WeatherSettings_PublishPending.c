/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 weather snapshot instruction contract. ECXmanager, onepointerstack RET4.
   EnterCriticalSection(manager+980), REP MOVSD23 (92bytes) settings ->manager+924 PENDING, XCHG
   DWORD(manager+9A0),1 (atomic dirty flag), leave. No renderer/shader/effect update here; no queue
   of every intermediate packet, fullsnapshot latestwritewins. Caller owns valid source
   size/lifetime. Lock syntax is original mechanism; portable equivalent need preserve coherent
   publication, not Windows API dependency. */

void __thiscall WeatherSettings_PublishPending(void *this,PCWeatherSettings *settings)

{
  int iVar1;
  uint *puVar2;
  
  EnterCriticalSection((LPCRITICAL_SECTION)((int)this + 0x980));
  puVar2 = (uint *)((int)this + 0x924);
  for (iVar1 = 0x17; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar2 = settings->precipitationType;
    settings = (PCWeatherSettings *)&settings->precipitationStrength;
    puVar2 = puVar2 + 1;
  }
  LOCK();
  *(undefined4 *)((int)this + 0x9a0) = 1;
  UNLOCK();
  LeaveCriticalSection((LPCRITICAL_SECTION)((int)this + 0x980));
  return;
}

