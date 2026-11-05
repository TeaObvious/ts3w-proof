/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX actor flags+2F0, maskCF00;
   exact100/200/300/400/500/600/700=>E7B516CC/E5C44E60/3A97A3BB/20953C2D/94BF68A1/75D5B2B9/06F93328;
   other masked values0. EAX32-bit/plain RET. This does not normalize missing species to Human; that
   normalization belongs rig-change comparison005E0B40. */

undefined4 __fastcall AnimationActor_GetSpeciesParameterHash(int param_1)

{
  uint uVar1;
  
  uVar1 = *(uint *)(param_1 + 0x2f0) & 0xcf00;
  if (uVar1 < 0x401) {
    if (uVar1 == 0x400) {
      return 0x20953c2d;
    }
    if (uVar1 == 0x100) {
      return 0xe7b516cc;
    }
    if (uVar1 == 0x200) {
      return 0xe5c44e60;
    }
    if (uVar1 == 0x300) {
      return 0x3a97a3bb;
    }
  }
  else {
    if (uVar1 == 0x500) {
      return 0x94bf68a1;
    }
    if (uVar1 == 0x600) {
      return 0x75d5b2b9;
    }
    if (uVar1 == 0x700) {
      return 0x6f93328;
    }
  }
  return 0;
}

