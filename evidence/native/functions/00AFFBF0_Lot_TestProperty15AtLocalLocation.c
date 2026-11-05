/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Encodes float local X/Z plus INTEGER level with00af7730,
   validates SIGNED compact X/Z bytes against half-open[0,width/depth), signed level against
   inclusive[min,max], then tests property selector0x0f via00ab6d10. Returns AL bool. Exact gameplay
   meaning of property15 is unresolved. */

bool __cdecl Lot_TestProperty15AtLocalLocation(void *lot,LotXZLevel *localPosition)

{
  void *this;
  bool bVar1;
  undefined3 local_4;
  undefined1 local_1;
  
  this = lot;
  if (lot != (void *)0x0) {
    lot = (void *)CONCAT13(lot._3_1_,0xffff);
    FUN_00af7730(&localPosition->x,(char *)&lot);
    if ((((-1 < (char)lot) && ((int)(char)lot < *(int *)((int)this + 0x174))) && (-1 < lot._1_1_))
       && ((int)lot._1_1_ < *(int *)((int)this + 0x178))) {
      if ((*(int *)((int)this + 0x17c) <= (int)lot._2_1_) &&
         ((int)lot._2_1_ <= *(int *)((int)this + 0x180))) {
        _local_4 = CONCAT13(0xf,(int3)lot);
        bVar1 = FUN_00ab6d10(this,(char *)&local_4);
        return bVar1;
      }
    }
  }
  return false;
}

