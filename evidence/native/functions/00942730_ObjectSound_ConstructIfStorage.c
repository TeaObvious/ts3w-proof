/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. cdecl nullable component storage and owner object; null
   returnsNULL, otherwise delegates constructor942670 with one stack word. Descriptor calls this
   constructor callback, while9435A0 is the distinct registration callback. No allocation here. */

void * __cdecl ObjectSound_ConstructIfStorage(void *componentStorage,void *ownerObject)

{
  void *pvVar1;
  
  if (componentStorage != (void *)0x0) {
    pvVar1 = ObjectSound_ConstructComponent(componentStorage,ownerObject);
    return pvVar1;
  }
  return (void *)0x0;
}

