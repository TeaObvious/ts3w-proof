/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* thiscall noargs/plainRET AL1. Setsundoable10state1; calls7914D0 FamilyFundsCanBeCharged
   andsetsfree14=(AL==0).
   Constructorinitializedfree1isreplacedbythisactualBeginvirtualcalledafterpaintallocationCEE...;
   doNOTassumeallsamplesarefreefromconstructoralone. */

bool __thiscall ToolUndoable_Begin(void *this)

{
  bool bVar1;
  
  *(undefined4 *)((int)this + 0x10) = 1;
  bVar1 = WorldCallback_FamilyFundsCanBeCharged();
  *(bool *)((int)this + 0x14) = !bVar1;
  return true;
}

