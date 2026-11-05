/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. cdecl native
   object pointer, AL boolean. Resolve object key+18 through C8EBB0. True exactly when build+D0
   bit20000 is set and object+98 bit02000000 is clear. Null object/product returns AL0; upper EAX
   bits on those paths are unspecified. */

bool __cdecl Object_IsSpiralStaircaseWithoutFloorCutout(void *object)

{
  int iVar1;
  
  if (object != (void *)0x0) {
    iVar1 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)object + 0x18));
    if (iVar1 != 0) {
      if (((*(uint *)(iVar1 + 0xd0) & 0x20000) != 0) && ((*(uint *)(iVar1 + 0x98) >> 0x19 & 1) == 0)
         ) {
        return true;
      }
      return false;
    }
  }
  return false;
}

