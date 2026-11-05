/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete17byte thiscall oneFloat32wordRET4void.
   RawMOVunitcostbitsinto108,zeroesaccumulatedabsheight10C.
   DoesNOTzero110currenttotalhere(constructorinitializes110zero);
   doNOTreconstructbodyasroundedintegerprice.
   SettercalledwithcatalogpricefromD1A400afteractualundoableBeginpaid/freepolicy. */

void __thiscall TerrainSculptUndoable_SetUnitCost(void *this,float unitCost)

{
  *(float *)((int)this + 0x108) = unitCost;
  return;
}

