/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. ECX context, RET 8: reader,outUInt32. Nonzero width +82h
   reads UInt32. Zero width reads UInt16 into a zeroed temporary and MOVZX writes output. No sign
   extension or count-based choice. Accumulate each read's low-byte status. */

void __thiscall ReferenceStore_ReadHandle(void *this,void *reader,uint *outHandle)

{
  bool bVar1;
  void *local_4;
  
  if (*(char *)((int)this + 0x82) != '\0') {
    local_4 = this;
    bVar1 = Stream_ReadUInt32(*(void **)((int)reader + 8),outHandle,*(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar1);
    return;
  }
  local_4 = (void *)0x0;
  bVar1 = Stream_ReadUInt16(*(void **)((int)reader + 8),(ushort *)&local_4,
                            *(uint *)((int)reader + 0x10));
  StreamReader_AccumulateStatus(reader,bVar1);
  *outHandle = (uint)local_4 & 0xffff;
  return;
}

