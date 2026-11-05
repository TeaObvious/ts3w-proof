/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscalloneFloat32heightdeltaRET4ALBoolean.
   AbsdeltaFABSstoredFloat32;ADDSSsum10C;paidcost108
   or0whenfree14;MULSStotal;SUBSSprior110givesincrementalcharge.
   D1A8D0ACTUALliveaffordability,D1A8B0ACTUALcallbackBEFOREsetting110newtotal.
   Onrefusalsum10Csubtractsabsdelta (notnecessarilybit-restoredstartdueFloatrounding),returnsAL0.
   This is not deferredrelease-onlycharge orprivatecapturedfunds.
   Completehistoryproducer/refund/failed-publication
   closureisaseparatemigrationunit,notfixedbyresponseextraction. */

bool __thiscall TerrainUndoable_ChargeHeightDifference(void *this,float signedHeightChange)

{
  bool bVar1;
  float fVar2;
  float fVar3;
  
  fVar2 = *(float *)((int)this + 0x10c) + ABS(signedHeightChange);
  *(float *)((int)this + 0x10c) = fVar2;
  if (*(char *)((int)this + 0x14) == '\0') {
    fVar3 = *(float *)((int)this + 0x108);
  }
  else {
    fVar3 = 0.0;
  }
  fVar2 = fVar2 * fVar3;
  fVar3 = fVar2 - *(float *)((int)this + 0x110);
  bVar1 = ToolUndoable_CanCharge(this,fVar3);
  if (bVar1) {
    ToolUndoable_ApplyCharge(this,fVar3);
    *(float *)((int)this + 0x110) = fVar2;
    return true;
  }
  *(float *)((int)this + 0x10c) = *(float *)((int)this + 0x10c) - ABS(signedHeightChange);
  return false;
}

