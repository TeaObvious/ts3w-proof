/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: PC 1.67 original contract. Loads64objectGUIDandcalls hostevent00761c90 withoperation2
   andlot context. Numericoperation preserved; broader managedcallbackdispatchoutside thiscontract.
    */

void __thiscall Lot_NotifyObjectLocationChanged(void *this,void *object)

{
  FUN_00acc920(this,object);
  Lot_InsertObjectTileMembership(this,object);
  *(undefined1 *)((int)this + 0x425) = 1;
  return;
}

