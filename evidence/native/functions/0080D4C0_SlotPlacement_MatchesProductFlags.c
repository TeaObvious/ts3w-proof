/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXslot+1stackproduct RET4 Boolean. Nonnull product rawA0flags; product andslot must both
   lackbit1(None); required=product&CFF38 mustnonzero; cardinalrotation02000000 mustagree; slot
   mustcontainALLrequired bits. ProductUpgrade01000000 is not in this selectedmask. This
   boundedpredicate does not prove that bit unused across entirebinary or all gameplay. No host
   floor capability mask inferred. */

bool __thiscall SlotPlacement_MatchesProductFlags(void *this,int param_1)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  
  if (param_1 != 0) {
    uVar2 = ObjectProduct_GetSlotPlacementFlags((void *)param_1);
    uVar1 = *(uint *)((int)this + 0x18);
    if (((((uVar1 & 1) == 0) && ((uVar2 & 1) == 0)) && (uVar3 = uVar2 & 0xcff38, uVar3 != 0)) &&
       (((uVar1 ^ uVar2) & 0x2000000) == 0)) {
      return (uVar1 & uVar3) == uVar3;
    }
  }
  return false;
}

