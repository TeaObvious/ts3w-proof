/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX complete proxy, one UInt32 interface ID/RET4 or
   tail-JMP. ID056BB768 returns same complete receiver; others tail-delegate00513A10. The separate
   proxy predicate and actual property interface jointly select the GetCustomControlID dynamic
   identity path. */

void * __thiscall Sims3CustomProxyControl_QueryInterface(void *this,uint interfaceId)

{
  void *pvVar1;
  
  if (interfaceId != 0x56bb768) {
    pvVar1 = WindowBase_QueryPropertyAndWindowInterfaces(this,interfaceId);
    return pvVar1;
  }
  return this;
}

