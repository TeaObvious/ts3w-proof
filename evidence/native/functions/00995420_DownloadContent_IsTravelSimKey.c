/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original instruction review: stdcall pointer to internalkey, RET 4; full EAX=1 if TypeId at +8
   equals04f88964 andGroupId bit0 at+c is set, else 0. Functorvtable 01049ef8 used
   byGetImportedSimResourceKeys(true). */

uint DownloadContent_IsTravelSimKey(uint *nativeKey)

{
  if ((nativeKey[2] == 0x4f88964) && ((nativeKey[3] & 1) != 0)) {
    return 1;
  }
  return 0;
}

