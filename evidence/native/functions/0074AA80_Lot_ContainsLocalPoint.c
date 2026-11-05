/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 physical thiscall one point pointer/RET4. Full EAX0/1. Point fields0/4 are Float32 X/Z;
   field8 is SIGNED Int32 authored level (MOV/CMP JL/JG), NOT float cast as old decompiler implied.
   Inclusive local0..lotWidth174 and0..lotDepth178; inclusive LIVE min17C..max180. COMISS/JC rejects
   unordered X/Z. Analyst name limited to proved geometric predicate; it does not test build
   ownership or purchase policy. */

bool __thiscall Lot_ContainsLocalPoint(void *this,LotPaintPoint *point)

{
  if ((((0.0 <= point->x) && (point->x <= (float)*(int *)((int)this + 0x174))) && (0.0 <= point->z))
     && (((point->z <= (float)*(int *)((int)this + 0x178) &&
          (*(int *)((int)this + 0x17c) <= point->level)) &&
         (point->level <= *(int *)((int)this + 0x180))))) {
    return true;
  }
  return false;
}

