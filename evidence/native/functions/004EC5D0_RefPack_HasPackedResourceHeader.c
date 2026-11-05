/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 packed-resource RefPack validation: physical ECX unused, two stack DWORDs, RET8. Reads
   first ushort from first stack pointer, swaps byte order, masks 1FFF and compares 10FB; full
   EAX0/1. Second size word is not inspected. Header bit0 must be zero under this mask. Caller4A7730
   uses decoder vtable+C; complete 29-byte body, following3CC excluded. No arbitrary-codec
   equivalence is established.
   Stored signature now records two physical stack words/header pointer and ignored size with
   stdcall RET8; ECX is unused and full EAX0/1 is returned. No receiver semantics or foreign
   prototype is invented. */

uint RefPack_HasPackedResourceHeader(ushort *header,uint ignoredSize)

{
  return (uint)((CONCAT11((char)*header,(char)(*header >> 8)) & 0x1fff) == 0x10fb);
}

