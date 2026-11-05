/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* thiscall no stack/plainRET ALBoolean, erasecharged-sample helper. amount=0whenfree14true elseB0;
   affordability D1A8D0; onadmission D1A8B0 actualcharge thenAL1,otherwiseAL0. UpperEAXignored. */

bool __thiscall PaintUndoable_TryChargeSample(void *this)

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
    return true;
  }
  return false;
}

