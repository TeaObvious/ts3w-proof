/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Byte copy to this+0xda only; active lot GUID resides
   separately at+0x170/+0x174. Consumers are the imposter request pass, normal detail arbitration
   and terrain-update admission boolean. */

void __thiscall WorldManager_SetMapViewActiveLotMode(void *this,uchar enable)

{
  *(uchar *)((int)this + 0xda) = enable;
  return;
}

