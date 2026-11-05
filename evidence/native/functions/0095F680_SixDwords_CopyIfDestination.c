/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 painting contract. Two stack pointers; RET 8, returns destination in EAX. Incoming
   metadata ECX is unused and replaced, so this leaf is modeled stdcall. NULL destination returns
   NULL; otherwise six DWORDs (24 bytes) are copied with no source-NULL guard. For Painting,
   key16+stage4 initialize only 20 bytes, so the sixth copied DWORD is padding/unspecified here.
   Physical virtual-call ABI still includes the unused ECX; six semantic fields are not established.
    */

void * SixDwords_CopyIfDestination(byte *destination,byte *source)

{
  if (destination != (byte *)0x0) {
    *(undefined4 *)destination = *(undefined4 *)source;
    *(undefined4 *)(destination + 4) = *(undefined4 *)(source + 4);
    *(undefined4 *)(destination + 8) = *(undefined4 *)(source + 8);
    *(undefined4 *)(destination + 0xc) = *(undefined4 *)(source + 0xc);
    *(undefined4 *)(destination + 0x10) = *(undefined4 *)(source + 0x10);
                    /* Copies sixth DWORD at +14 also. Selected Painting producer initializes
                       key16+stage4 only. */
    *(undefined4 *)(destination + 0x14) = *(undefined4 *)(source + 0x14);
  }
  return destination;
}

