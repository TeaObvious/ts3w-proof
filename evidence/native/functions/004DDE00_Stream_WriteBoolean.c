/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. cdecl(stream,byte value). Normalize value != 0 to one
   byte and call virtual +38h. Original SUB/NEG/SBB/ADD converts the returned low byte to true only
   when it equals one. Do not replace this with arbitrary nonzero success. */

bool __cdecl Stream_WriteBoolean(void *stream,byte value)

{
  byte bVar1;
  
  value = value != 0;
  bVar1 = (**(code **)(*(int *)stream + 0x38))(stream,&value,1);
  return (bool)('\x01' - (bVar1 != 1));
}

