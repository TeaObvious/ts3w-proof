/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX full resource; UInt32 IID, RET4, pointer result.
   IID0202F7D5 returns receiver+40 when receiver nonnull; IID02269ED1 orEB54B802 returnsreceiver;
   EE3F516E returnsreceiver elseNULL. Original65-byte body includes three RET paths and final
   return. The +40 interface vtable atFF7720 supplies lookup+28 and default+14. */

void * __thiscall MaterialSetResource_QueryInterface(void *this,uint interfaceId)

{
  if (interfaceId == 0x202f7d5) {
    if (this == (void *)0x0) {
      return (void *)0x0;
    }
    return (void *)((int)this + 0x40);
  }
  if ((interfaceId == 0x2269ed1) || (interfaceId == 0xeb54b802)) {
    return this;
  }
  return (void *)((interfaceId != 0xee3f516e) - 1 & (uint)this);
}

