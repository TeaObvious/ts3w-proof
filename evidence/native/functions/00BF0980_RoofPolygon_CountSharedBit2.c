/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 roof numeric instruction contract. thiscall ECX polygon, no explicit stack slots
   RET; UInt32 count of bit 2 in DWORDs+4C,+54,+5C. Does not mutate atlas/mirror state. The name
   Shared is analyst vocabulary matching selected consumers; complete producer population remains
   separate. */

uint __thiscall RoofPolygon_CountSharedBit2(void *this)

{
  uint uVar1;
  
  uVar1 = (uint)((*(uint *)((int)this + 0x4c) >> 2 & 1) != 0);
  if ((*(uint *)((int)this + 0x54) >> 2 & 1) != 0) {
    uVar1 = uVar1 + 1;
  }
  if ((*(uint *)((int)this + 0x5c) >> 2 & 1) != 0) {
    uVar1 = uVar1 + 1;
  }
  return uVar1;
}

