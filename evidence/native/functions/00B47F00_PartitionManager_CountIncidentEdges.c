/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXpartitionmanager +LotXZLevel*/graphslot two words RET8, fullEAXuint32. Selects graph
   pointer +54+slot*4, lookup C41860; null graph/vertex returns0, else raw vertexDWORD+C count.
   ACEC50 uses slot1 and unsigned >1. */

uint __thiscall
PartitionManager_CountIncidentEdges(void *this,LotXZLevel *localPosition,uint graphSlot)

{
  void *this_00;
  int iVar1;
  
  this_00 = *(void **)((int)this + graphSlot * 4 + 0x54);
  if (this_00 != (void *)0x0) {
    iVar1 = FUN_00c41860(this_00,&localPosition->x);
    if (iVar1 != 0) {
      return *(uint *)(iVar1 + 0xc);
    }
  }
  return 0;
}

