/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. cdecl(stream,outUInt16,UInt32 endianFlag), three stack
   words. Read two bytes; short read returns AL false. Full DWORD flag equal to one preserves native
   little-endian bytes, otherwise swap. Short read may partially modify output. */

bool __cdecl Stream_ReadUInt16(void *stream,ushort *outUInt16,uint endianFlag)

{
  bool bVar1;
  uint uVar2;
  
  uVar2 = (**(code **)(*(int *)stream + 0x30))(stream,outUInt16,2);
  if (uVar2 == 2) {
    bVar1 = true;
    if (endianFlag != 1) {
      *outUInt16 = *outUInt16 << 8 | *outUInt16 >> 8;
      return true;
    }
  }
  else {
    bVar1 = false;
  }
  return bVar1;
}

