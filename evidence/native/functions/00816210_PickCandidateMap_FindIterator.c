/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 rendered-pick contract. ECX=candidate map, output iterator/key pointer RET8,
   returns output pointer EAX. Unsigned key modulo bucket count. Node fields
   key0,distance4,packed8,nextC. Missing returns sentinel bucket after ordinary buckets; no retain
   or zero-bucket guard. FFFFFFFF background is an ordinary map key. */

void * __thiscall PickCandidateMap_FindIterator(void *this,void *outputIterator,uint *keyPointer)

{
  int iVar1;
  uint uVar2;
  uint *local_8;
  undefined4 *local_4;
  
  uVar2 = *keyPointer % *(uint *)((int)this + 8);
  iVar1 = *(int *)((int)this + 4);
  local_4 = (undefined4 *)(iVar1 + uVar2 * 4);
  for (local_8 = *(uint **)(iVar1 + uVar2 * 4); local_8 != (uint *)0x0; local_8 = (uint *)local_8[3]
      ) {
    if (*keyPointer == *local_8) goto LAB_00816249;
  }
  local_4 = (undefined4 *)(iVar1 + *(uint *)((int)this + 8) * 4);
  local_8 = (uint *)*local_4;
LAB_00816249:
  *(uint **)outputIterator = local_8;
  *(undefined4 **)((int)outputIterator + 4) = local_4;
  return outputIterator;
}

