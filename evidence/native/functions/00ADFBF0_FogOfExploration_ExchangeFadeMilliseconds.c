/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst: PC1.67 tomb/diving contract. Original MULSS constant at01069cb0 is
   float999.99993896484375. FISTP int32 conversion obeys current x87 rounding mode; atomic
   XCHG011ec628 returns previous int32 in EAX. No finite/negative clamp in this function. ROUND
   decompiler syntax does not establish a language-level rounding policy. */

int __cdecl FogOfExploration_ExchangeFadeMilliseconds(float seconds)

{
  int iVar1;
  
  iVar1 = DAT_011ec628;
  LOCK();
  DAT_011ec628 = (int)ROUND(seconds * _DAT_01069cb0);
  UNLOCK();
  return iVar1;
}

