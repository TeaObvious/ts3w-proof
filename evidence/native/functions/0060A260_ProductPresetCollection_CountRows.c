/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX
   collection, signed32-bit selector stack arg RET4. Signed selector>=8 returns0; no explicit
   negative guard. Vector descriptor atcollection+28+selector*10hex; count=(end-begin)/1Chex using
   signed division sequence. Query callers use selector1; rows are28bytes. Do not generalize caller
   domain to arbitrary negative selectors. */

int __thiscall ProductPresetCollection_CountRows(void *this,int param_1)

{
  int *piVar1;
  
  if (7 < param_1) {
    return 0;
  }
  piVar1 = (int *)(param_1 * 0x10 + 0x28 + (int)this);
  return (piVar1[1] - *piVar1) / 0x1c;
}

