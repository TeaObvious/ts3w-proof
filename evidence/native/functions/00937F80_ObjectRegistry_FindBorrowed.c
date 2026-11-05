/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. ECX registry; full uint64 GUID on stack, RET8. Returns object
   node orNULL after comparing registry sentinel+1034. No refcount increment.
   
   PC1.67 object identity closure: ECXregistry+fullUInt64GUID RET8, returns borrowedobjectornull
   using originalhash/sentinel. No retain inthisleaf. GUIDalone doesnotprove samepointer across
   removal/newobject allocation. Callingwrapper responsible foractual lifetime; host epoch/atomic
   snapshot are project ownership mechanisms. */

void * __thiscall ObjectRegistry_FindBorrowed(void *this,ulonglong guid)

{
  uint local_8 [2];
  
  ObjectHash_FindGuid((void *)((int)this + 0x10),local_8,&guid);
  return (void *)(-(uint)(local_8[0] != *(uint *)((int)this + 0x1034)) & local_8[0]);
}

