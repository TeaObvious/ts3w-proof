/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. PC1.67 static instruction review. cdecl object pointer; forms resource key
   atobject+18 and calls catalog lookup00C8EBB0 on global011EE034. Returns lookup pointer. The
   parser/populator of catalog fields is outside this wall-visibility review. */

void * __cdecl Object_FindCatalogInfo(void *object)

{
  void *pvVar1;
  
  pvVar1 = (void *)ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)object + 0x18));
  return pvVar1;
}

