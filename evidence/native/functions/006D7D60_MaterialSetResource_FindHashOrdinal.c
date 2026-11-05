/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX full resource, UInt32 hash, RET4, signed ordinal result.
   Signed count=(end+5C-begin+58)/24; sequential exact raw hash comparison atentry+14; first match
   wins, otherwise-1. No hash-zero fallback in this leaf. */

int __thiscall MaterialSetResource_FindHashOrdinal(void *this,uint materialHash)

{
  int iVar1;
  int iVar2;
  uint *puVar3;
  
  iVar1 = (*(int *)((int)this + 0x5c) - *(int *)((int)this + 0x58)) / 0x18;
  iVar2 = 0;
  if (0 < iVar1) {
    puVar3 = (uint *)(*(int *)((int)this + 0x58) + 0x14);
    do {
      if (materialHash == *puVar3) {
        return iVar2;
      }
      iVar2 = iVar2 + 1;
      puVar3 = puVar3 + 6;
    } while (iVar2 < iVar1);
  }
  return -1;
}

