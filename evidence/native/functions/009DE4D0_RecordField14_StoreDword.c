/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 slot contract. ECX record, oneDWORD stackvalue RET4; only writes[ECX+14]. Generic
   helper has many unrelated callers, hence generic name. Selected slotproducer950970 passes
   mappingrowaddress+4 here, so this use retains an auxiliary pointer without copying/decoding its
   payload. */

void __thiscall RecordField14_StoreDword(void *this,uint value)

{
  *(uint *)((int)this + 0x14) = value;
  return;
}

