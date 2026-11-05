/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. ECX finalized table (descriptor
   pointer+0,signed count+4,payload pointer+8); stack UInt32 nameHash,type, RET8; full EAX
   descriptor pointer orNULL. Signed indices/count and unsigned key comparison implement
   lower_bound. ONLY FIRST matching hash is checked for exact type+4; a wrong-type first duplicate
   hides later same-hash entries of the requested type. No scan for later duplicates or payload
   truth check. */

uint * __thiscall ParameterTable_FindFirstHashExactType(void *this,uint nameHash,uint requiredType)

{
  int iVar1;
  uint *puVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = 0;
  if (0 < *(int *)((int)this + 4)) {
    iVar4 = *(int *)((int)this + 4);
    do {
      iVar1 = iVar4 + iVar3 >> 1;
      if (*(uint *)(*(int *)this + iVar1 * 0x10) < nameHash) {
        iVar3 = iVar1 + 1;
        iVar1 = iVar4;
      }
      iVar4 = iVar1;
    } while (iVar3 < iVar1);
  }
                    /* Checks requiredType on FIRST equal-hash descriptor only; no later duplicate
                       search. */
  if (((*(int *)((int)this + 4) <= iVar3) ||
      (puVar2 = (uint *)(*(int *)this + iVar3 * 0x10), *puVar2 != nameHash)) ||
     (puVar2[1] != requiredType)) {
    puVar2 = (uint *)0x0;
  }
  return puVar2;
}

