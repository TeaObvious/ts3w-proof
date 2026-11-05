/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 fence resource/renderer and resolved virtual contract): ECX product catalog;
   RET8 key pointer and low-byte allowDefault flag; EAX product pointer. Lookup map at+110, compare
   iterator/end sentinel; found returns node+10 value. Absent key returns null when flag0, otherwise
   invokes C8E710 default product getter. Both native fence rail and post dispatchers pass1, so
   their missing-key behavior is not current dense-row fail-closed filtering. Full default-product
   creation and external catalog population remain separate dependencies. */

void * __thiscall ProductCatalog_LookupFenceProduct(void *this,void *productKey,byte allowDefault)

{
  void *pvVar1;
  int local_8;
  int local_4;
  
  FUN_00c8db20((void *)((int)this + 0x110),&local_8,productKey);
  if (local_8 == local_4) {
    local_8 = *(int *)((int)this + 0x114);
  }
  if (local_8 == *(int *)((int)this + 0x114)) {
    if (allowDefault == 0) {
      return (void *)0x0;
    }
    pvVar1 = (void *)FUN_00c8e710((int)this);
    return pvVar1;
  }
  return *(void **)(local_8 + 0x10);
}

