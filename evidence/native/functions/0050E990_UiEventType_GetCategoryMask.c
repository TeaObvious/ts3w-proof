/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. One UInt32 incoming DWORD/plain RET / cdecl. UnsignedCMP
   eventType,20hex; below32 index32 DWORD table00FBB7B0; IDs>=32 return80hex. Actual table
   maps0->0,12->2,4097->80 fallback. Exact type signedness matters:FFFFFFFF takes
   unsignedfallback80, not a negative table index. This category mask is procedure admission,
   distinct from the exact event-membership set. */

uint __cdecl UiEventType_GetCategoryMask(uint eventType)

{
  if (eventType < 0x20) {
    return *(uint *)(&DAT_00fbb7b0 + eventType * 4);
  }
  return 0x80;
}

