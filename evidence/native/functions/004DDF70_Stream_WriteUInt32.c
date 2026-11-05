/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. cdecl(stream,UInt32 value,UInt32 endianFlag). Flag one
   writes native little-endian; otherwise swap four bytes. Virtual +38h receives buffer and size
   four. Return raw low-byte status, not an actual-byte count. */

byte __cdecl Stream_WriteUInt32(void *stream,uint value,uint endianFlag)

{
  byte bVar1;
  
  if (endianFlag != 1) {
    value = (value & 0xff0000 | value >> 0x10) >> 8 | (value & 0xff00 | value << 0x10) << 8;
  }
  bVar1 = (**(code **)(*(int *)stream + 0x38))(stream,&value,4);
  return bVar1;
}

