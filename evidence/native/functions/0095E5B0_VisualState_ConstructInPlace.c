/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 VisualState initial fields. cdecl two stackwords destination/owner, caller
   cleanup, pointer EAX, RET. No allocation here. NULL destination returnsNULL without writes.
   Nonnull writesowner+4, vtable01045AC4+0, fullDWORDflags00000939+8, FFFFFFFF+C, zero+10/+14,
   binary32 1.0 from00F998F8+18. Returns same destination. This is raw initial storage, not proof
   later visibility, renderer notification, component dependency or complete construction success.
   Explicit60byte body includes both RET exits; originalbytes verified. Names are analyst
   assignments. */

void * __cdecl VisualState_ConstructInPlace(void *destination,void *owner)

{
  float fVar1;
  
  fVar1 = FLOAT_00f998f8;
  if (destination != (void *)0x0) {
    *(void **)((int)destination + 4) = owner;
    *(undefined ***)destination = &PTR_FUN_01045ac4;
                    /* Full DWORD initialflags=00000939, not an 8-bit visibility Boolean. Later
                       setters/derived consumers own separate state. */
    *(undefined4 *)((int)destination + 8) = 0x939;
    *(undefined4 *)((int)destination + 0xc) = 0xffffffff;
    *(undefined4 *)((int)destination + 0x10) = 0;
    *(undefined4 *)((int)destination + 0x14) = 0;
    *(float *)((int)destination + 0x18) = fVar1;
    return destination;
  }
  return (void *)0x0;
}

