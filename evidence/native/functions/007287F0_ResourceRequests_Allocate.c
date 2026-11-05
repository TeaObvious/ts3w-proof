/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. cdecl no args returns pointer orNULL; raw
   pushes six allocator operands with size3A8 and tagResourceSystem/AsyncLoader, then
   tailcalls728600 on nonnull allocation. C allocator projection may show only three logical
   operands. Does not itself publish global or start thread. */

void * __cdecl ResourceRequests_Allocate(void)

{
  void *pvVar1;
  
  pvVar1 = (void *)FUN_004e4500(0x3a8,"ResourceSystem/AsyncLoader",0);
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ResourceRequests_Construct(pvVar1);
    return pvVar1;
  }
  return (void *)0x0;
}

