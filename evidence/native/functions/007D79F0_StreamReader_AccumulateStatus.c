/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX reader, RET4 byte flag. Reader status byte+14 &=
   supplied low byte; false remains false. Caller must actually consume status; this leaf does not
   throw. */

void __thiscall StreamReader_AccumulateStatus(void *this,byte readSucceeded)

{
  *(byte *)((int)this + 0x14) = *(byte *)((int)this + 0x14) & readSucceeded;
  return;
}

