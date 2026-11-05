/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. cdecl native
   object pointer, AL boolean. Resolve key+18 through C8EBB0. True exactly when object+98
   bit02000000 set, build+D0 bit20000 clear, room+AC mask1800 clear, and32-bit level+F0 equals1.
   Null lookup returns false. This static predicate alone does not establish Shift/control input
   producers. */

bool __cdecl Object_IsLevelAboveFloorCutout(void *object)

{
  int iVar1;
  
  if (object != (void *)0x0) {
    iVar1 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)object + 0x18));
    if ((((iVar1 != 0) && ((*(uint *)(iVar1 + 0x98) >> 0x19 & 1) != 0)) &&
        ((*(uint *)(iVar1 + 0xd0) & 0x20000) == 0)) && ((*(uint *)(iVar1 + 0xac) & 0x1800) == 0)) {
      return *(int *)(iVar1 + 0xf0) == 1;
    }
  }
  return false;
}

