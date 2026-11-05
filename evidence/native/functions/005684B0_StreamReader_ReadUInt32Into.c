/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 sparse blend instruction contract. thiscall reader ECX,outUInt32 stack,RET4. Reads
   through stream+8 using order+10 and accumulates Boolean into sticky status+14. No semantic value
   validation or exception; no useful return value established. */

void __thiscall StreamReader_ReadUInt32Into(void *this,uint *valueOut)

{
  bool readSucceeded;
  
  readSucceeded = Stream_ReadUInt32(*(void **)((int)this + 8),valueOut,*(uint *)((int)this + 0x10));
  StreamReader_AccumulateStatus(this,readSucceeded);
  return;
}

