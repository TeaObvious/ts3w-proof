/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. PC1.67 static instruction review. cdecl object pointer; forms resource key
   atobject+18 and calls catalog lookup00C8EBB0 on global011EE034. Returns lookup pointer. The
   parser/populator of catalog fields is outside this wall-visibility review. */

void * __cdecl Object_FindCatalogInfo(void *object)

{
  void *pvVar1;
  
  pvVar1 = (void *)FUN_00c8ebb0(DAT_011ee034,(uint *)((int)object + 0x18));
  return pvVar1;
}

