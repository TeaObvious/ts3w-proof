/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC1.67. Chain lookup compares fullGUID64 plus two rawuint16room ids atkey+8/+a;
   nextnode at+0x18. Multiple portals sharing object/roompair share directionalpermission entry. */

void * __cdecl PortalPermissionCache_FindObjectRoomKey(void *chain,void *key,uint unusedHash)

{
  while( true ) {
    if (chain == (int *)0x0) {
      return (void *)0x0;
    }
    if (key == chain) break;
    if ((((*(int *)key == *(int *)chain) && (*(int *)((int)key + 4) == *(int *)((int)chain + 4))) &&
        (*(short *)((int)key + 8) == (short)*(int *)((int)chain + 8))) &&
       (*(short *)((int)key + 10) == *(short *)((int)chain + 10))) {
      return chain;
    }
    chain = *(void **)((int)chain + 0x18);
  }
  return chain;
}

