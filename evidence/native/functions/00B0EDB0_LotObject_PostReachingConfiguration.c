/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Ifworld lot registryavailable resolveslotfromowner source
   key+18, invokes00b0bc60 and00b08180 forfoundlot. Distinctfrompreleaving sequence. */

void __cdecl LotObject_PostReachingConfiguration(void *object)

{
  int iVar1;
  
  if (object != (void *)0x0) {
    iVar1 = FUN_00c8ebb0(DAT_011ee034,(uint *)((int)object + 0x18));
    if (iVar1 != 0) {
      if (*(int *)(iVar1 + 0xd4) != *(int *)(iVar1 + 0xd8)) {
        FUN_00b0bc60(object);
        return;
      }
      if ((*(uint *)(iVar1 + 0x98) >> 0x19 & 1) != 0) {
        FUN_00b08180(object);
      }
    }
  }
  return;
}

