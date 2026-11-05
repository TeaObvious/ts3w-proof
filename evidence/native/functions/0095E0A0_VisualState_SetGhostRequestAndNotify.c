/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete59-byte thiscall twoUInt32 words RET8void. TESTghostType/JBE chooses zero
   vsANYnonzero includinghighbit; updates ONLY VisualState+8 bit10000 usingOR orANDFFFEFFFF.
   Constructs two rawDWORD payloadwords ghostType then ageGenderSpeciesFlags onstack,
   unconditionally calls ObjectEvents_Dispatch(event22,owner+4,payload). NO duplicate-request gate,
   style<27 normalization, object lookup or FP operation here. Native component dispatch occurs for
   repeated requests; host desired-state snapshot memoization is a distinct version/publication
   mechanism and must not be called native event parity. No claim about unselected event consumer
   ownership/timing follows from this leaf. */

void __thiscall
VisualState_SetGhostRequestAndNotify(void *this,uint ghostType,uint ageGenderSpeciesFlags)

{
  uint local_8;
  uint local_4;
  
  if (ghostType == 0) {
    *(uint *)((int)this + 8) = *(uint *)((int)this + 8) & 0xfffeffff;
  }
  else {
    *(uint *)((int)this + 8) = *(uint *)((int)this + 8) | 0x10000;
  }
  local_8 = ghostType;
  local_4 = ageGenderSpeciesFlags;
  ObjectEvents_Dispatch(0x22,*(void **)((int)this + 4),&local_8);
  return;
}

