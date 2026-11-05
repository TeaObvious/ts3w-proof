/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 COMPLETE27-byte thiscall one stackword RET4void. ECX is interactive=WaterTool+28.
   CMPbyte+5E checks engaged; false returns immediately. True LEA+ D8 produces address of
   cachedX/Z/rawInt32level, replaces incoming argument slot+4 with thatpointer, ADD ECX,-28 recovers
   fullWaterTool and tailJMPD40480. The original tickword is never read; its semanticFloat32/time
   meaning is not inferred from storage. No cursor/floor query and no pointcache rewrite.
   Original7instructions already existed; exactfunctionmetadata only created, no Listing recovery.
   Vtable1088B00+28 points here. Every tick uses retainedpoint, so no point-update callback means no
   newlevel through this producerchain. */

void __thiscall WaterTool_TickRetainedPoint(void *this,uint ignoredTickWord)

{
  if (*(char *)((int)this + 0x5e) != '\0') {
    WaterTool_UpdateRetainedPoint((void *)((int)this + -0x28),(LotPaintPoint *)((int)this + 0xd8));
    return;
  }
  return;
}

