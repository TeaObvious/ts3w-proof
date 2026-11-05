/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original instruction review. Object event26 listener registered0094FBC2. Resolves
   SIM component mask011EA0FC (not Lighting/Effect). Forwards payload through0094F200. Null
   object/component accepted no-op, bool result inAL. */

bool __cdecl Sim_OnOpacityTransition(void *object,uint *payload16)

{
  bool bVar1;
  void *this;
  
  if (object != (void *)0x0) {
    this = Object_GetComponentByMask(object,DAT_011ea0fc);
    if (this != (void *)0x0) {
      bVar1 = Sim_ForwardOpacityTransition(this,payload16);
      return bVar1;
    }
  }
  return true;
}

