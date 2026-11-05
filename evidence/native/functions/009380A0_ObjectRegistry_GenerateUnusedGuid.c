/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Calls original Guid producer withflag0; rejects currently
   registered IDs in a loop and invokes004e1830 withvalue1 on collision. Returns64 EDX:EAX. No
   random-generation claim. */

ulonglong __thiscall ObjectRegistry_GenerateUnusedGuid(void *this)

{
  ulonglong uVar1;
  DWORD local_14;
  ulonglong local_10;
  int local_8 [2];
  
  uVar1 = FUN_007cfe00('\0');
  while( true ) {
    local_10 = uVar1;
    ObjectHash_FindGuid((void *)((int)this + 0x10),local_8,&local_10);
    if ((local_8[0] == *(int *)((int)this + 0x1034)) || (local_8[0] == 0)) break;
    local_14 = 1;
    FUN_004e1830(&local_14);
    uVar1 = FUN_007cfe00('\0');
  }
  return uVar1;
}

