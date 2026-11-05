/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. AL=true only if owner+68 optimizer exists, optimizer+18
   pointer is nonnull and optimizer+8 side count nonzero. OtherEAX bytes unspecified; not a32-bit
   pointer-valued success result. */

bool __thiscall TerrainOptimizerOwner_HasVertices(void *this)

{
  int iVar1;
  
  iVar1 = *(int *)((int)this + 0x68);
  if ((iVar1 != 0) && (*(int *)(iVar1 + 0x18) != 0)) {
    return *(int *)(iVar1 + 8) != 0;
  }
  return false;
}

