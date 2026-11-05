/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX state,no stack words/plain RET,EAX unsigned
   word of bits0..8. Maps
   public+4F,entry+51,exit+52,loop+50,oneShot+53,hold+54,sync+4C,join+4D,explicit+4E to 1..100. Pure
   getter; caller007FD650 uses it after authored mutation. */

uint __fastcall SacsState_PackEffectiveFlags(int param_1)

{
  uint uVar1;
  
  uVar1 = (uint)(*(char *)(param_1 + 0x4f) != '\0');
  if (*(char *)(param_1 + 0x51) != '\0') {
    uVar1 = uVar1 | 2;
  }
  if (*(char *)(param_1 + 0x52) != '\0') {
    uVar1 = uVar1 | 4;
  }
  if (*(char *)(param_1 + 0x50) != '\0') {
    uVar1 = uVar1 | 8;
  }
  if (*(char *)(param_1 + 0x53) != '\0') {
    uVar1 = uVar1 | 0x10;
  }
  if (*(char *)(param_1 + 0x54) != '\0') {
    uVar1 = uVar1 | 0x20;
  }
  if (*(char *)(param_1 + 0x4c) != '\0') {
    uVar1 = uVar1 | 0x40;
  }
  if (*(char *)(param_1 + 0x4d) != '\0') {
    uVar1 = uVar1 | 0x80;
  }
  if (*(char *)(param_1 + 0x4e) != '\0') {
    uVar1 = uVar1 | 0x100;
  }
  return uVar1;
}

