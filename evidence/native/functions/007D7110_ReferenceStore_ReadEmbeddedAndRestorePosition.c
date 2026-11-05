/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. ECX context, RET 4 reader. Read two UInt32 words; first
   is an absolute seek position, second is unused by this body. Save current position, seek first,
   read payload without regeneration, restore position. Payload Boolean is ignored. No bounded child
   is created from the second word here; its external meaning remains open. Absolute seek requests
   use the signed guard: high-bit offsets clear status and do not move the stream, yet this caller
   still invokes the payload reader and later requests restoration. */

void __thiscall ReferenceStore_ReadEmbeddedAndRestorePosition(void *this,void *reader)

{
  void *this_00;
  bool bVar1;
  int offset;
  void *local_4;
  
  this_00 = reader;
  local_4 = this;
  bVar1 = Stream_ReadUInt32(*(void **)((int)reader + 8),(uint *)&reader,
                            *(uint *)((int)reader + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&local_4,
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  offset = StreamContext_GetPositionAndMarkNegative(this_00);
  StreamContext_SeekWithSignedAbsoluteGuard(this_00,(int)reader,0);
  ReferenceStore_ReadPayload(this,this_00,0);
  StreamContext_SeekWithSignedAbsoluteGuard(this_00,offset,0);
  return;
}

