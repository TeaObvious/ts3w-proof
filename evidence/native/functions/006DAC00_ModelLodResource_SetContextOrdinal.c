/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 model-resource instruction contract. thiscall UInt16 ordinal in a four-byte stack
   slot, RET4; MOV AX stack/MOV WORD owner+74, no conversion. Caller MOVZX16 then SUB DX,1 wraps
   zero toFFFF; native material context calls elsewhere use their separately loaded DWORD. */

void __thiscall ModelLodResource_SetContextOrdinal(void *this,ushort ordinal)

{
  *(ushort *)((int)this + 0x74) = ordinal;
  return;
}

