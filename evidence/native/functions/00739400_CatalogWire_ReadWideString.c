/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical cdecl two stack pointers
   reader/output UTF16 vector, plainRET, caller owns stack cleanup; only AL is defined success.
   Full70 instructions. Accumulates unchecked UInt32 bytecount by adding each seven-bit lane shifted
   using x86 CL modulo32; no five-byte varint ceiling. High bit continues. Divides bytecount by2,
   resizes output vector, then reads exactly that many unsigned16 units with endianflag0 (big
   endian), preserving raw code units. An odd bytecount does not consume an odd trailing byte.
   Failed byte/unit read returns AL0 after possibly resizing or partially writing output; no
   rollback or CLR exception equivalence. Common C93100 consumes two such strings, plus obsolete
   subsort string only for commonversion<6. Output is an engine vector, not a native wchar pointer
   or managed string. */

bool __cdecl CatalogWire_ReadWideString(void *reader,void *outputUnits)

{
  byte bVar1;
  bool bVar2;
  uint uVar3;
  int iVar4;
  byte bVar5;
  int iVar6;
  byte local_5;
  ushort local_4 [2];
  
  uVar3 = 0;
  bVar5 = 0;
  do {
    bVar2 = Stream_ReadByte(reader,&local_5);
    if (!bVar2) {
      return false;
    }
    bVar1 = bVar5 & 0x1f;
    bVar5 = bVar5 + 7;
    uVar3 = uVar3 + ((local_5 & 0x7f) << bVar1);
  } while ((char)local_5 < '\0');
  FUN_0040c640(outputUnits,uVar3 >> 1);
  iVar6 = 0;
  iVar4 = *(int *)((int)outputUnits + 4) - *(int *)outputUnits >> 1;
  if (0 < iVar4) {
    do {
      bVar2 = Stream_ReadUInt16(reader,local_4,0);
      if (!bVar2) {
        return false;
      }
      *(ushort *)(*(int *)outputUnits + iVar6 * 2) = local_4[0];
      iVar6 = iVar6 + 1;
    } while (iVar6 < iVar4);
  }
  return true;
}

