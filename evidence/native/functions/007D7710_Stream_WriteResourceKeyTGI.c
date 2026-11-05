/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. cdecl(stream,key16,endianFlag), AL Boolean. Native key
   memory is instanceLow/instanceHigh/type/group; wire writes four UInt32 words in
   type/group/instanceLow/instanceHigh order. Execute all four writes and combine success low bytes.
   Wire and memory order differ.
   
   Analyst note (PC1.67 SACS migration contract): cdecl three physical stack words/plain RET. Writes
   original key layout type, group, instance low/high using original stream helpers. Key storage and
   stream mode widths, not inferred .NET object shape, define the contract. Existing reviewed
   comments are preserved. */

bool __cdecl Stream_WriteResourceKeyTGI(void *stream,void *key,uint endianFlag)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  
  bVar1 = Stream_WriteUInt32(stream,*(uint *)((int)key + 8),endianFlag);
  bVar2 = Stream_WriteUInt32(stream,*(uint *)((int)key + 0xc),endianFlag);
  bVar3 = Stream_WriteUInt32(stream,*(uint *)key,endianFlag);
  bVar4 = Stream_WriteUInt32(stream,*(uint *)((int)key + 4),endianFlag);
  return (bool)(bVar4 & bVar1 & 1 & bVar2 & bVar3);
}

