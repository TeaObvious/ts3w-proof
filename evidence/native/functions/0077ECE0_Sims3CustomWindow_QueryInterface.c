/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX complete object, one interface ID DWORD, RET4 or
   tail-JMP. Selected ID0x03F29FC8 returns complete+0x250 for nonnull receiver; other IDs
   tail-delegate unchanged receiver/word to00513A10. Native property/IWindow/custom interfaces are
   distinct; no name/ABI may be inferred merely from shared pointer size. */

void * __thiscall Sims3CustomWindow_QueryInterface(void *this,uint interfaceId)

{
  void *pvVar1;
  
  if (interfaceId != 0x3f29fc8) {
    pvVar1 = WindowBase_QueryPropertyAndWindowInterfaces(this,interfaceId);
    return pvVar1;
  }
  if (this != (void *)0x0) {
    return (void *)((int)this + 0x250);
  }
  return (void *)0x0;
}

