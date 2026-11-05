/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 supplied lot identity/import counterpart): Analyst exact identity role. ECX
   manager plus GUIDlow/GUIDhigh/optional visit-counter pointer, RET0C; EAX first borrowed
   object/null. Reject both GUID words zero. Traverse root pointer array at manager+9C/+A0 in
   physical order and call C5F4C0(root,low,high,counter), returning first nonnull; no retained
   reference or cache is introduced. Array span arithmetic and existing malformed-array
   preconditions are preserved. Concrete key equality and recursive gating are established in child,
   not inferred from fuzzy matching. */

int * __thiscall WorldObjects_FindByGuid(void *this,uint guidLow,uint guidHigh,uint *visitCounter)

{
  int *piVar1;
  uint uVar2;
  
  if ((guidLow != 0 || guidHigh != 0) &&
     (uVar2 = 0, *(int *)((int)this + 0xa0) - *(int *)((int)this + 0x9c) >> 2 != 0)) {
    do {
      piVar1 = WorldObjects_FindGuidInSubtree
                         (*(int **)(*(int *)((int)this + 0x9c) + uVar2 * 4),guidLow,guidHigh,
                          visitCounter);
      if (piVar1 != (int *)0x0) {
        return piVar1;
      }
      uVar2 = uVar2 + 1;
    } while (uVar2 < (uint)(*(int *)((int)this + 0xa0) - *(int *)((int)this + 0x9c) >> 2));
  }
  return (int *)0x0;
}

