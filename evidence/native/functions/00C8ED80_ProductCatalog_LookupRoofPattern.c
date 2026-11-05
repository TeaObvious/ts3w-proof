/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 roof catalog reader/lookup contract): ECX catalog, RET8 key pointer and
   lowbyte allowDefault; EAX product pointer. Search ordered map+FC with end sentinel+100. Found
   returns node+10. On absence flag0 returnsnull; flag1 selects map begin if nonempty, otherwise
   null. B995E0 calls with1 and copies the separately retained product at catalog+A8 into manager
   default key only when lookup returnsnull and+A8 is nonnull. These are distinct control paths;
   this function alone does not implement current package filename scan or prove catalog population
   order. */

void * __thiscall ProductCatalog_LookupRoofPattern(void *this,void *productKey,byte allowDefault)

{
  int local_8;
  int local_4;
  
  ProductCatalogKeyArray_FindExact((int *)((int)this + 0xfc),&local_8,productKey);
  if (local_8 == local_4) {
    local_8 = *(int *)((int)this + 0x100);
  }
  if ((local_8 == *(int *)((int)this + 0x100)) &&
     ((allowDefault == 0 ||
      (local_8 = *(int *)((int)this + 0xfc), local_8 == *(int *)((int)this + 0x100))))) {
    return (void *)0x0;
  }
  return *(void **)(local_8 + 0x10);
}

