/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 painting contract. ECX=allocated fixup; key pointer and DWORD stage; RET 8,
   returns SAME this in EAX. Writes base vtable FF0FDC, atomic XCHG of refcount+4 to zero, final
   vtable FF7FDC, key16 at +8..+17 and full stage at +18. No resource loading, normalization or
   range check. Vtable cell FF7FEC points to 6DD4D0. PaintingFixupLOD is supported by original
   allocation/diagnostic strings; the method name is analyst assigned. */

void * __thiscall PaintingFixup_Construct(void *this,byte *nativePaintingKey,uint levelToReveal)

{
  *(undefined ***)this = &PTR_FUN_00ff0fdc;
  LOCK();
  *(undefined4 *)((int)this + 4) = 0;
  UNLOCK();
  *(undefined ***)this = &PTR_FUN_00ff7fdc;
  *(undefined4 *)((int)this + 8) = *(undefined4 *)nativePaintingKey;
  *(undefined4 *)((int)this + 0xc) = *(undefined4 *)(nativePaintingKey + 4);
  *(undefined4 *)((int)this + 0x10) = *(undefined4 *)(nativePaintingKey + 8);
  *(undefined4 *)((int)this + 0x14) = *(undefined4 *)(nativePaintingKey + 0xc);
  *(uint *)((int)this + 0x18) = levelToReveal;
  return this;
}

