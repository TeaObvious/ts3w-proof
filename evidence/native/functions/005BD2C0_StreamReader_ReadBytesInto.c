/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 sparse blend instruction contract. thiscall reader ECX,destination,byteCount;RET8.
   Reads raw bytes through stream+8 and accumulates result in sticky status. Caller must check
   status separately; no useful return value established. */

void __thiscall StreamReader_ReadBytesInto(void *this,void *destination,uint byteCount)

{
  bool readSucceeded;
  
  readSucceeded = Stream_ReadExactBytes(*(void **)((int)this + 8),destination,byteCount);
  StreamReader_AccumulateStatus(this,readSucceeded);
  return;
}

