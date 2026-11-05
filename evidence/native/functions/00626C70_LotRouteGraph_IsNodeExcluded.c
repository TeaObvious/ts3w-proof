/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Checks current exclusion map for packed unsigned node
   key. Neighbor generator can omit these intra-room candidates; cross-room counterpart appended
   separately. */

bool __thiscall LotRouteGraph_IsNodeExcluded(void *this,uint *nodeKey)

{
  int iVar1;
  uint uVar2;
  uint *in_stack_00000008;
  
  uVar2 = *in_stack_00000008;
  if ((uVar2 & 0xfff0) != 0xfff0) {
    iVar1 = nodeKey[0x24] + (uVar2 >> 0x10) * 0x44;
    if (((uVar2 & 0xffff) < (uint)(*(int *)(iVar1 + 8) - *(int *)(iVar1 + 4) >> 2)) &&
       (iVar1 = *(int *)(*(int *)(iVar1 + 4) + (uVar2 & 0xffff) * 4), iVar1 != 0)) {
      return (bool)(*(byte *)(iVar1 + 0x58) >> 1 & 1);
    }
  }
  return false;
}

