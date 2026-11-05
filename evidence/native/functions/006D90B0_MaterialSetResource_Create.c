/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. cdecl no arguments; allocates68hex bytes, initializes resource
   base, installsFF774C at+0 andFF7720 at+40, clears default+44 and vectors+48..60, stores
   allocation-tag string Renderer/MaterialSetList pointer at+64; NULLallocation returnsNULL. Factory
   callback identity/type admission are separate from this physical constructor. */

void * __cdecl MaterialSetResource_Create(void)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_004e4500(0x68,"Renderer/AsyncModelFactory",0);
  if (puVar1 == (undefined4 *)0x0) {
    return (void *)0x0;
  }
  FUN_006cb210(puVar1);
  puVar1[0x10] = &PTR_LAB_00ff769c;
  *puVar1 = &PTR_thunk_FUN_00731c10_00ff774c;
  puVar1[0x10] = &PTR_LAB_00ff7720;
  puVar1[0x11] = 0;
  puVar1[0x12] = 0;
  puVar1[0x13] = 0;
  puVar1[0x14] = 0;
  puVar1[0x15] = 0;
  puVar1[0x16] = 0;
  puVar1[0x17] = 0;
  puVar1[0x18] = 0;
  puVar1[0x19] = "Renderer/MaterialSetList";
  return puVar1;
}

