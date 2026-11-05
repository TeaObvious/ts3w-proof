/* Reports index exactly equal to 4, not greater-than-or-equal. Normal callers stop at 4. XOR
   EAX,EAX followed by SETZ AL produces a full EAX value of 0 or 1. Analyst-assigned name. */

bool __fastcall IsVertexRegionIteratorAtEnd(int *param_1)

{
  /* 00AF67C2: Exact equality with 4. A fabricated index 5 returns false; no such malformed producer is shown in AFF160 or AFEB00. */
  return *param_1 == 4;
}
