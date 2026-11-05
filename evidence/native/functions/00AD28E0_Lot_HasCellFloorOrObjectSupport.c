/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 cdecl lot/cell/ignoredObject/includeObjects fourstackwords plainRET ALbool. Signedlevel<1
   true; AD0040 room-floor support first, AD22C0 only if includeObjects nonzero. Unlike AD2930, this
   helper has NO partition/roof fallback. AFDB70 supplies ignoredObject0/includeObjects1 for each
   selected adjacent quarter. */

bool __cdecl
Lot_HasCellFloorOrObjectSupport
          (undefined *lot,char *cell,undefined *ignoredObject,bool includeObjects)

{
  bool bVar1;
  
  if (cell[2] < '\x01') {
    return true;
  }
  bVar1 = Lot_HasLoadBearingRoomFloorSupport(lot,cell);
  if (bVar1) {
    return true;
  }
  if ((includeObjects) && (bVar1 = Lot_HasObjectSupport(lot,cell,ignoredObject), bVar1)) {
    return true;
  }
  return false;
}

