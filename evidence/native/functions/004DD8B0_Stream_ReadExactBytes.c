/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 sparse blend instruction contract. cdecl stream,destination,count; RET without
   callee cleanup. ECX stream virtual+30 reads count bytes. Compare full EAX actual byte count
   against requested DWORD; only AL Boolean defined. No seek, bounds wrapper, endian conversion or
   exception in this leaf. */

bool __cdecl Stream_ReadExactBytes(void *stream,void *destination,uint byteCount)

{
  uint uVar1;
  
  uVar1 = (**(code **)(*(int *)stream + 0x30))(stream,destination,byteCount);
  return uVar1 == byteCount;
}

