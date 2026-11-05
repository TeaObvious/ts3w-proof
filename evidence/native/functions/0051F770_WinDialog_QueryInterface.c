/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX complete object, one UInt32 ID/RET4 or tail-JMP. Its
   selected native control interface0x6F0B8AC9 returns complete+250 for nonnull receiver; other IDs
   tail-delegate00513A10 with the same receiver/word. Custom derived query dispatch preserves this
   native inheritance frontier. */

void * __thiscall WinDialog_QueryInterface(void *this,uint interfaceId)

{
  void *pvVar1;
  
  if (interfaceId != 0x6f0b8ac9) {
    pvVar1 = WindowBase_QueryPropertyAndWindowInterfaces(this,interfaceId);
    return pvVar1;
  }
  if (this != (void *)0x0) {
    return (void *)((int)this + 0x250);
  }
  return (void *)0x0;
}

