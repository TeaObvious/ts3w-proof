/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Selected actual paint consumer: receives layer,x,z,addByte,otherDecreaseByte plus affordability
   output; after charge admission and dirty tracking forwards BOTH byte operands unchanged toAF0150,
   then marks lot changed. LotPaintTool CEE1E0 supplies literal1 as other decrease. Funds/undo
   scheduling and native pricing remain separate from layer mixing.
   
   Conditionalchargeclosure: undoable14=true meansfreeamount0, falseusespriceB0. CallsD1A8D0
   affordability, thenD1A8B0 actualcharge BEFOREcapture/mix. StoresALok; failure no mutation. D243C0
   capturesfirsttouch,AF0150mixes,lotaltered. A localbudgetonly withno householdcallback isNOT this
   nativeimplementation. This selectedbody doesnotwriteTotalCostB4; do notinfer
   allhistorybalancefromthisabsence alone. */

bool __thiscall
PaintUndoable_AddPaintAtSample
          (void *this,undefined *lot,uint layer,uint sampleX,uint sampleZ,byte addAlpha,
          byte otherDecrease,bool *ok)

{
  bool bVar1;
  float amount;
  
  if (*(char *)((int)this + 0x14) == '\0') {
    amount = *(float *)((int)this + 0xb0);
  }
  else {
    amount = 0.0;
  }
  bVar1 = ToolUndoable_CanCharge(this,amount);
  if (bVar1) {
    ToolUndoable_ApplyCharge(this,amount);
  }
  *ok = bVar1;
  if (!bVar1) {
    return false;
  }
  PaintUndoable_CaptureSampleBefore(this,sampleX,sampleZ);
  LotTerrain_AddPaintAtSample
            (*(void **)((int)this + 0x54),layer,sampleX,sampleZ,addAlpha,otherDecrease);
  FUN_00ab0940(lot,'\x01','\x01');
  return *ok;
}

