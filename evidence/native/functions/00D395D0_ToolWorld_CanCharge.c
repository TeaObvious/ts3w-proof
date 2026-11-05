/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* thiscallFloat32amountRET4,fullnormalizedEAX0/1. Calls791370 livequery, CVTSI2SS intfunds, SUBSS
   persistentremainder20, orderedamount<=availableFloat32. NaNcomparedoesnotadmit. Native
   useslivefunds,equalityaccepted; notstroke-startsnapshotminusprivatefloatcounter. */

bool __thiscall ToolWorld_CanCharge(void *this,float amount)

{
  int iVar1;
  
  iVar1 = WorldCallback_FamilyFundsQueryAvailable();
  if (amount <= (float)iVar1 - *(float *)((int)this + 0x20)) {
    return true;
  }
  return false;
}

