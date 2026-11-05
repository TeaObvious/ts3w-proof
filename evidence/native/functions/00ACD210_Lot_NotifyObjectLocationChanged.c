/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Loads64objectGUIDandcalls hostevent00761c90 withoperation2
   andlot context. Numericoperation preserved; broader managedcallbackdispatchoutside thiscontract.
    */

void __thiscall Lot_NotifyObjectLocationChanged(void *this,void *object)

{
  FUN_00acc920(this,object);
  FUN_00acc2b0(this,object);
  *(undefined1 *)((int)this + 0x425) = 1;
  return;
}

