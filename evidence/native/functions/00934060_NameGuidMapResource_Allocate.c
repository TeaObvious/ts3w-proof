/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. Factory allocation slot+34: allocate0x48 tagged
   Objects/NameGuidMapResource; null returns null; successful path tail-jumps constructor00933F90,
   returns same allocation. */

void * __cdecl NameGuidMapResource_Allocate(void)

{
  void *pvVar1;
  
  pvVar1 = (void *)FUN_004e4500(0x48,"Objects/NameGuidMapResource",0);
  if (pvVar1 != (void *)0x0) {
    pvVar1 = NameGuidMapResource_Construct(pvVar1);
    return pvVar1;
  }
  return (void *)0x0;
}

