/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 roof catalog reader/lookup contract): ECX catalog, RET8 key pointer and
   lowbyte allowDefault; EAX product pointer. Search ordered map+E8, found returns node+10. Missing
   with flag0 returnsnull; flag1 invokes C8ECC0 fixed-default-key lookup, which may also returnnull.
   Used by original saved-roof reader B995E0 before typed construction B98940. No current cache,
   dense tail parser or FullBuild/DeltaBuild scan is established by this catalog lookup. */

void * __thiscall ProductCatalog_LookupRoofStyle(void *this,void *productKey,byte allowDefault)

{
  void *pvVar1;
  int local_8;
  int local_4;
  
  FUN_00c8db20((void *)((int)this + 0xe8),&local_8,productKey);
  if (local_8 == local_4) {
    local_8 = *(int *)((int)this + 0xec);
  }
  if (local_8 == *(int *)((int)this + 0xec)) {
    if (allowDefault == 0) {
      return (void *)0x0;
    }
    pvVar1 = ProductCatalog_FindDefaultRoofStyle(this);
    return pvVar1;
  }
  return *(void **)(local_8 + 0x10);
}

