/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Linear registered hash lookup; returns assigned bit mask
   orzero. Hash comparisons are32-bit equality.
   
   PC1.67 original static instructions. Called once per authored UInt32componenthash by936E20.
   Returns registered mask or0; parser ORs nonzero intoresource+28. Unknown/duplicatehashes
   therefore do not themselves produce a parse failure. CLR renderer family/admitted construction
   policy is independent. */

uint __thiscall ObjectRegistry_FindMaskByNameHash(void *this,uint nameHash)

{
  int iVar1;
  uint *puVar2;
  
  iVar1 = 0;
  if (0 < *(int *)((int)this + 0x11c8)) {
    puVar2 = (uint *)((int)this + 0x10c4);
    do {
      if (nameHash == *puVar2) {
        return *(uint *)((int)this + iVar1 * 4 + 0x1144);
      }
      iVar1 = iVar1 + 1;
      puVar2 = puVar2 + 1;
    } while (iVar1 < *(int *)((int)this + 0x11c8));
  }
  return 0;
}

