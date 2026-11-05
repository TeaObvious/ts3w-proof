/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: Physical ECX tunables, NO stack input, RET; FLD binary32
   atcontext+10 returns through ST0 after lazy load if initial flag0. Context base1183EEC has
   initial binary32 value100 at1183EFC. float10 decompiler return denotes x87 register
   representation. */

float10 * __thiscall LotSettings_GetBasementTileCost(void *this,float10 *__return_storage_ptr__)

{
  float10 *in_EAX;
  
  if (*(char *)this == '\0') {
    in_EAX = (float10 *)LotSettings_LoadToolTunables(this);
  }
  return in_EAX;
}

