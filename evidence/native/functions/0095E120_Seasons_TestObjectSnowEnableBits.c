/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

Decompiled function Seasons_TestObjectSnowEnableBits:


/* Analyst-assigned name. Queries object snow enable: script-only uses80000, otherwise mask1E0000;
   returns true when selected mask is clear. */

bool __thiscall Seasons_TestObjectSnowEnableBits(void *this,char param_1)

{
  return (bool)('\x01' - (((-(uint)(param_1 != '\0') & 0xffea0000) + 0x1e0000 &
                          *(uint *)((int)this + 8)) != 0));
}


