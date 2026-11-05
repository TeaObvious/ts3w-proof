/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 roof catalog reader/lookup contract): ECX catalog, no physical stack
   arguments, plain RET; EAX product pointer. Search same map+E8 using address011EE1C0, return found
   node+10 ornull on absent key. No insertion, arbitrary first-map-element selection or guaranteed
   default success. Address denotes existing runtime-global key storage; its initial concrete value
   is not established here. */

void * __thiscall ProductCatalog_FindDefaultRoofStyle(void *this)

{
  int local_8;
  int local_4;
  
  FUN_00c8db20((void *)((int)this + 0xe8),&local_8,(uint *)&DAT_011ee1c0);
  if (local_8 == local_4) {
    local_8 = *(int *)((int)this + 0xec);
  }
  if (local_8 == *(int *)((int)this + 0xec)) {
    return (void *)0x0;
  }
  return *(void **)(local_8 + 0x10);
}

