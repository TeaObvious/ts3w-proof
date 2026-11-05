/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 held footprint gate. ECX nonnull catalog, no stack args, RET; returns exact UInt64
   EDX:EAX with DWORD98 low/DWORD9C high. No mask/normalization/extra EDX input; previous fastcall
   parameter was wrong. Selected consumers compare BOTH words, not only98. No source original-symbol
   recovery claimed. */

ulonglong __thiscall Catalog_ReadTypeMask64(void *this)

{
  return *(ulonglong *)((int)this + 0x98);
}

