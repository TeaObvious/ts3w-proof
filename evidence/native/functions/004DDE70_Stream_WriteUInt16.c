/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. cdecl(stream,UInt16 value,UInt32 endianFlag). Full DWORD
   flag one writes native little-endian; otherwise swap two bytes. Virtual +38h receives buffer and
   size two. Return its raw low-byte status, not an actual-byte count. */

byte __cdecl Stream_WriteUInt16(void *stream,ushort value,uint endianFlag)

{
  byte bVar1;
  undefined2 in_stack_0000000a;
  
  if (endianFlag != 1) {
    _value = (uint)(ushort)(value << 8 | value >> 8);
  }
  bVar1 = (**(code **)(*(int *)stream + 0x38))(stream,&value,2);
  return bVar1;
}

