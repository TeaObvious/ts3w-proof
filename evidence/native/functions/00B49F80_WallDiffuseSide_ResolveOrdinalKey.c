/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX side owner; pointer to UInt16 ordinal stack word, RET4. Zero-extends ordinal. Zero returns
   associated map at owner+78, inline full key at map+40. Every nonzero value includingFFFF performs
   map+20 ordinal lookup and returns found node+8 or null. */

int __thiscall WallDiffuseSide_ResolveOrdinalKey(void *this,ushort *param_1)

{
  int iVar1;
  int local_8 [2];
  
  param_1 = (ushort *)(uint)*param_1;
  iVar1 = *(int *)((int)this + 0x78);
  if (param_1 == (ushort *)0x0) {
    return iVar1 + 0x40;
  }
  FUN_009d6c30((void *)(iVar1 + 0x20),local_8,(uint *)&param_1);
  if (local_8[0] != *(int *)(*(int *)(iVar1 + 0x24) + *(int *)(iVar1 + 0x28) * 4)) {
    return local_8[0] + 8;
  }
  return 0;
}

