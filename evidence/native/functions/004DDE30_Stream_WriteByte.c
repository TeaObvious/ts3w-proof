/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): Cdecl stream and bytevalue, caller cleans8.
   Virtual write38 requests one byte. Original SUB AL,1/NEG AL/SBB EAX,EAX/ADD EAX,1 tests only the
   low-byte returned count and yields0/1. Do not replace this proof with an assumed full32-bit count
   comparison; higher return bits are ignored by these original instructions. */

byte __cdecl Stream_WriteByte(undefined *stream,byte value)

{
  char cVar1;
  
  cVar1 = (**(code **)(*(int *)stream + 0x38))(&value,1);
  return 1 - (cVar1 != '\x01');
}

