/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX
   collection, signedselector and UInt32 ordinal RET8. Signedselector>=8 returnsnull; else count
   from28-byte row vector at+28+selector*10hex; unsignedordinal<count returnsbegin+ordinal*1Chex,
   otherwise null. No explicit negative-selector guard. Object-preset callers select1. */

int __thiscall ProductPresetCollection_GetRowByOrdinal(void *this,int param_1,uint param_2)

{
  int *piVar1;
  int iVar2;
  
  if (7 < param_1) {
    return 0;
  }
  piVar1 = (int *)(param_1 * 0x10 + 0x28 + (int)this);
  iVar2 = *piVar1;
  if ((uint)((piVar1[1] - iVar2) / 0x1c) <= param_2) {
    return 0;
  }
  return iVar2 + param_2 * 0x1c;
}

