/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* thiscallFloat32amountRET4,ALBoolean. Checkspositiveamountonlywhenfree14false
   ANDtoolworldCnonnull; thenD395D0 comparesagainstlivecallbackfundsminusfractionalremainder.
   OtherwiseAL1. UpperEAXnotcontract. No captured-start integerfunds or ever-growing
   privatechargedtotal is established by this nativegate. */

bool __thiscall ToolUndoable_CanCharge(void *this,float amount)

{
  bool bVar1;
  
  if (((*(char *)((int)this + 0x14) == '\0') && (0.0 < amount)) &&
     (*(void **)((int)this + 0xc) != (void *)0x0)) {
    bVar1 = ToolWorld_CanCharge(*(void **)((int)this + 0xc),amount);
    return bVar1;
  }
  return true;
}

