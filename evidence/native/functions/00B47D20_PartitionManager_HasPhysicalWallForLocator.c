/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: ECX partition owner, stack+4 locator pointer, RET4. Loads physical graph at
   owner+64, calls C418D0, normalizes any nonzero returned EAX wall pointer to full EAX1 else0 using
   NEG/SBB/NEG. Pointer presence, not serialized section ID or unique-row cardinality. */

bool __thiscall PartitionManager_HasPhysicalWallForLocator(void *this,char *param_1)

{
  int iVar1;
  
  iVar1 = WallGraph_FindWallForPackedLocator(*(void **)((int)this + 100),param_1);
  return iVar1 != 0;
}

