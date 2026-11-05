/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX actor with CAS flags+2F0; EAX uint32, RET.
   Mask7F, subtract1, unsigned compare3F; selector bytes005C978C..005C97CB index eight-entry jump
   table005C976C..005C978B. Exact age1/2/4/8/10/20/40
   hashes5BF9CDE9/9F4202B7/FFF75A95/C62C1B35/9994B2AE/A4135FF7/3A256B2B; other masked values0. Full
   required selector/jump data exported as nonowned bytes after code. */

undefined4 __fastcall AnimationActor_GetAgeParameterHash(int param_1)

{
  switch(*(uint *)(param_1 + 0x2f0) & 0x7f) {
  case 1:
    return 0x5bf9cde9;
  case 2:
    return 0x9f4202b7;
  default:
    return 0;
  case 4:
    return 0xfff75a95;
  case 8:
    return 0xc62c1b35;
  case 0x10:
    return 0x9994b2ae;
  case 0x20:
    return 0xa4135ff7;
  case 0x40:
    return 0x3a256b2b;
  }
}

