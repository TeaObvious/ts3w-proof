/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 sparse blend instruction contract. stdcall THREE stack slots
   stream,versionOut,endianOut, RET0C. Original old inferred two-arg C falsely overwrote stream
   vtable; actual third pointer receives1 ordinary or0 reversed. Raw read must return4. Low16 FFA5
   triggers BSWAP version; otherwise high16 mustA5FF. Unsigned lower boundA5FF0100, upper comparison
   masks low8 and accepts<=A5FF0300, i.e.normalized0100..03FF. No exactversion0300-only admission.
   Boolean onlyAL; stream/endian do not change two raw tile-index byte order. */

bool TerrainBlend_ReadVersionAndByteOrder(void *stream,uint *versionOut,uint *byteOrderOut)

{
  uint uVar1;
  
  *versionOut = 0;
  uVar1 = (**(code **)(*(int *)stream + 0x30))(stream,versionOut,4);
  if (uVar1 == 4) {
    *byteOrderOut = 1;
    if ((*versionOut & 0xffff) == 0xffa5) {
      *byteOrderOut = 0;
      uVar1 = *versionOut;
      *versionOut = uVar1 >> 0x18 | (uVar1 & 0xff0000) >> 8 | (uVar1 & 0xff00) << 8 | uVar1 << 0x18;
    }
    else if ((*versionOut & 0xffff0000) != 0xa5ff0000) {
      return false;
    }
    if (0xa5ff00ff < *versionOut) {
      return (*versionOut & 0xffffff00) < 0xa5ff0301;
    }
  }
  return false;
}

