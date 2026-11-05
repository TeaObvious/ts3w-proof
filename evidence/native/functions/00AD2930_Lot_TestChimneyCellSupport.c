/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 chimney-query boundary. cdecl lot/packedcell/ignoredObject three
   words/plainRET/ALBoolean. Signedlevel<=0 returns1. Aboveground tries AD0040, AD22C0 with
   ignoredObject, ACEC50, then B98530 roof query; first admitted support succeeds. Those children
   cover different physical support owners; current roof-and-room approximation is not full
   equivalence.
   
   PC1.67 cdecl lot/packed cell/IGNORED OBJECT POINTER, plainRET AL bool. Signed byte level<=0
   admits; otherwise ordered AD0040 room-floor reference, AD22C0 object support, ACEC50 partition
   support, B98530 roof support. Third word is NOT flags: AD22C0 compares it to lot shell Object*
   +2E8 and inserts its raw pointer into the exclusion set. Actual chimney callerCE21CF PUSH0 before
   callCE21D7. Aboveground short-circuit order preserved; roof owner ECXlot+2AC. */

bool __cdecl Lot_TestChimneyCellSupport(undefined *lot,char *cell,undefined *ignoredObject)

{
  bool bVar1;
  
  if ('\0' < cell[2]) {
    bVar1 = Lot_HasLoadBearingRoomFloorSupport(lot,cell);
    if (!bVar1) {
      bVar1 = Lot_HasObjectSupport(lot,cell,ignoredObject);
      if (!bVar1) {
        bVar1 = Lot_HasLowerPartitionSupport(lot,cell);
        if (!bVar1) {
          bVar1 = RoofManager_HasCellSupportBelow(*(void **)(lot + 0x2ac),cell);
          return bVar1;
        }
      }
    }
  }
  return true;
}

