/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX actor flags+2F0;
   mask3000.1000=>B976E27E,2000=>83651CD5, otherwise0. SETNE CL; SUB ECX,1; AND83651CD5 explains
   apparent Boolean-minus-one expression in C. EAX32-bit result/plain RET; no sign extension of
   hash. */

uint __fastcall AnimationActor_GetSexParameterHash(int param_1)

{
  uint uVar1;
  
  uVar1 = *(uint *)(param_1 + 0x2f0) & 0x3000;
  if (uVar1 != 0x1000) {
    return (uVar1 != 0x2000) - 1 & 0x83651cd5;
  }
  return 0xb976e27e;
}

