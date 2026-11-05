/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX side table; UInt32 section identity and Int32 selector stack words, RET8. Existing row
   returns zero-extended UInt16 at node+8 for selector0 or node+6 for selector1. Missing row or
   other selector returns low word0; high return bits are not an ordinal identity. */

uint __thiscall WallSideTable_GetOrdinal(void *this,undefined4 param_1,int param_2)

{
  uint uVar1;
  int local_8 [2];
  
  PickCandidateMap_FindIterator((void *)((int)this + 0x18),local_8,&param_1);
  uVar1 = *(uint *)((int)this + 0x1c);
  if (local_8[0] != *(int *)(uVar1 + *(int *)((int)this + 0x20) * 4)) {
    if (param_2 == 0) {
      return (uint)*(ushort *)(local_8[0] + 8);
    }
    uVar1 = param_2 - 1;
    if (uVar1 == 0) {
      return (uint)*(ushort *)(local_8[0] + 6);
    }
  }
  return uVar1 & 0xffff0000;
}

