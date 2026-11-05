/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
    EncodeCellCoordinates(&localPosition->x,(char *)&lot);
    if ((((-1 < (char)lot) && ((int)(char)lot < *(int *)((int)this + 0x174))) && (-1 < lot._1_1_))
       && ((int)lot._1_1_ < *(int *)((int)this + 0x178))) {
      if ((*(int *)((int)this + 0x17c) <= (int)lot._2_1_) &&
         ((int)lot._2_1_ <= *(int *)((int)this + 0x180))) {
        _local_4 = CONCAT13(0xf,(int3)lot);
        bVar1 = LotBasement_TestAnyRequestedPart(this,(char *)&local_4);
        return bVar1;
      }
    }
  }
  return false;
}

