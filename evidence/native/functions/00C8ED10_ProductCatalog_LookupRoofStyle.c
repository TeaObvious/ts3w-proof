/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  
  ProductCatalogKeyArray_FindExact((void *)((int)this + 0xe8),&local_8,productKey);
  if (local_8 == local_4) {
    local_8 = *(int *)((int)this + 0xec);
  }
  if (local_8 != *(int *)((int)this + 0xec)) {
    return *(void **)(local_8 + 0x10);
  }
  if (allowDefault == 0) {
    return (void *)0x0;
  }
  pvVar1 = ProductCatalog_FindDefaultRoofStyle(this);
  return pvVar1;
}

