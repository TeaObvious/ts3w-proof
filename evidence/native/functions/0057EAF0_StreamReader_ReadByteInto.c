/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 sparse blend instruction contract. thiscall reader ECX,outByte stack,RET4. Byte
   read ignores multibyte endian setting and accumulates result in sticky reader status. No useful
   return value established. */

void __thiscall StreamReader_ReadByteInto(void *this,uchar *valueOut)

{
  bool readSucceeded;
  
  readSucceeded = Stream_ReadByte(*(void **)((int)this + 8),valueOut);
  StreamReader_AccumulateStatus(this,readSucceeded);
  return;
}

