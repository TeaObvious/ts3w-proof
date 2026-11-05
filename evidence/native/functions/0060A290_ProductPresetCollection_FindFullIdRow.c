/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX
   collection, signedselector and32-bit fullID stack args RET8. Signedselector>=8 returnsFFFFFFFF,
   otherwise ordered28-byte rows at+28+selector*10hex. Compare full32-bitID atrow+10hex; first match
   returnszero-based row index, absentFFFFFFFF. No explicit negative-selector guard. Queried
   object-preset callers use1. */

int __thiscall ProductPresetCollection_FindFullIdRow(void *this,int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  
  if (7 < param_1) {
    return -1;
  }
  iVar1 = *(int *)(param_1 * 0x10 + 0x28 + (int)this);
  iVar2 = iVar1;
  while( true ) {
    if (iVar2 == *(int *)((int)this + param_1 * 0x10 + 0x2c)) {
      return -1;
    }
    if (*(int *)(iVar2 + 0x10) == param_2) break;
    iVar2 = iVar2 + 0x1c;
  }
  return (iVar2 - iVar1) / 0x1c;
}

