/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 roof numeric instruction contract. thiscall ECX polygon, no explicit stack slots
   RET; UInt32 sum of low bit from bytes+4C,+54,+5C. Does not initialize atlas index+40 or
   mirrorbyte+44. Bit meaning requires its writer; this leaf establishes count and storage only. */

uint __thiscall RoofPolygon_CountFlagBit0(void *this)

{
  uint uVar1;
  
  uVar1 = (uint)((*(byte *)((int)this + 0x4c) & 1) != 0);
  if ((*(byte *)((int)this + 0x54) & 1) != 0) {
    uVar1 = uVar1 + 1;
  }
  if ((*(byte *)((int)this + 0x5c) & 1) != 0) {
    uVar1 = uVar1 + 1;
  }
  return uVar1;
}

