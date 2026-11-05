/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Recovered complete38byte PC1.67 thiscall/noargs/plainRET ALBoolean. State60==0 returnsfalse;
   state60==1 AND captured-point-map begin8C==end90 returnsfalse; othercasesAL1. Status1alone isnot
   enough, nor status0withzero/nonzerohostcount. Native
   usesactualjournalpresence,hostsupportedepisodeusesacceptedpainted-samplecount;
   originalper-samplemutation/dirty andlayerreused/appendedstatusremainseparatelyowned. */

bool __thiscall PaintUndoable_HasLocalChanges(void *this)

{
  if (*(int *)((int)this + 0x60) == 0) {
    return false;
  }
  if ((*(int *)((int)this + 0x60) == 1) &&
     (*(int *)((int)this + 0x8c) == *(int *)((int)this + 0x90))) {
    return false;
  }
  return true;
}

