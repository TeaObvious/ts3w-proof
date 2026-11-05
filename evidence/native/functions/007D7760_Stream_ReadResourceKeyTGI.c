/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. cdecl(stream,outKey16,endianFlag), three stack words.
   Read four UInt32 values into native offsets +8,+C,+0,+4, then combine Boolean results. Every read
   executes even after an earlier failure; output can be partial.
   
   Analyst note (PC1.67 construction persistence contract): cdecl stream,out16bytekey,byte-order
   flag. Read DWORDs into native offsets+8,+C,+0,+4: T,G,instance low,instance high. Every child
   executes even after failure, result combines status. Roof legacy inline-key reader B995E0
   consumes this exact wire order.
   
   PC1.67 original static instructions. cdecl3DWORDargs/RET, ALBoolean. Read UInt32type
   thenUInt32group thenUInt64instance using supplied endian. Native instance
   stores+0/+4,type+8,group+C. Membership-only validator may skip validated fixed16byte table rows
   without inventing any type restriction on their values.
   
   Ceiling legacy branch A48A3E uses this TGI reader for UNSIGNEDversion<2, including0; physical
   streamprefix isUInt32version plus16byte T,G,instance. Additionalbytes are not rejected by the
   ceiling owner. Existing native memorykeyoffsets differfrom wireorder as alreadyannotated.
   BinaryReader throwing early on truncation is a hostfailure adapter; native attempts allchildreads
   withsticky failure. */

bool __cdecl Stream_ReadResourceKeyTGI(void *stream,void *outKey,uint endianFlag)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  bool bVar4;
  
  bVar1 = Stream_ReadUInt32(stream,(uint *)((int)outKey + 8),endianFlag);
  bVar2 = Stream_ReadUInt32(stream,(uint *)((int)outKey + 0xc),endianFlag);
  bVar3 = Stream_ReadUInt32(stream,outKey,endianFlag);
  bVar4 = Stream_ReadUInt32(stream,(uint *)((int)outKey + 4),endianFlag);
  return bVar4 && ((bVar1 && bVar2) && bVar3);
}

