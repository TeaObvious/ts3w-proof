/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 weather-resource static comparison. ECX points to an object with a UInt32 word at
   +4. The sole stack word is ANDed with that word; NEG/SBB/NEG returns EAX 0 or 1; RET4. Both
   cached literal-mask readers use this body. Descriptor producers, full class identity,
   expansion/platform names and capacity meaning are not established. */

bool __thiscall FlagWord_TestAnyMask(void *this,uint param_1)

{
  return (*(uint *)((int)this + 4) & param_1) != 0;
}

