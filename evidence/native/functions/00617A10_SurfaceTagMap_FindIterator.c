/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 rendered-pick contract. ECX=tag map, output iterator/key pointer RET8; returns
   output pointer EAX. Unsigned key modulo bucket count; match DWORD at node0, next at28. Missing
   returns sentinel bucket slot after ordinary buckets. Copies two-word iterator; no retain or
   zero-bucket guard. */

void * __thiscall SurfaceTagMap_FindIterator(void *this,void *outputIterator,uint *tagPointer)

{
  int iVar1;
  uint uVar2;
  uint *local_8;
  undefined4 *local_4;
  
  uVar2 = *tagPointer % *(uint *)((int)this + 8);
  iVar1 = *(int *)((int)this + 4);
  local_4 = (undefined4 *)(iVar1 + uVar2 * 4);
  for (local_8 = *(uint **)(iVar1 + uVar2 * 4); local_8 != (uint *)0x0;
      local_8 = (uint *)local_8[10]) {
    if (*tagPointer == *local_8) goto LAB_00617a49;
  }
  local_4 = (undefined4 *)(iVar1 + *(uint *)((int)this + 8) * 4);
  local_8 = (uint *)*local_4;
LAB_00617a49:
  *(uint **)outputIterator = local_8;
  *(undefined4 **)((int)outputIterator + 4) = local_4;
  return outputIterator;
}

