/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Original Tree
   component (descriptor 0x0117cbd0, mask global 0x011ea290). Returns signed entry count in EAX,
   zero for null component+8 resource. Signed IMUL 0x66666667 / SAR5 plus sign correction divides
   vector byte difference by 0x50. */

int __fastcall TreeComponent_GetEntryCount(int param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 8);
  if (iVar1 != 0) {
    return (*(int *)(iVar1 + 0xc) - *(int *)(iVar1 + 8)) / 0x50;
  }
  return 0;
}

