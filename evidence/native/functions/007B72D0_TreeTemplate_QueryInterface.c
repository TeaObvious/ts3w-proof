/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst name from the complete interface-ID switch. ECX owner and one stack word; returns this
   for 0x10FD73F0, this+8 for 0x02269ED1, 0xEB54B802 or 0xEE3F516E, otherwise null. This is
   interface selection, not destruction; stored pointer/integer types remain inferred. */

void * __thiscall TreeTemplate_QueryInterface(void *this,int param_1)

{
  if (((param_1 != 0x10fd73f0) && (this = (void *)((int)this + 8), param_1 != 0x2269ed1)) &&
     (param_1 != -0x14ab47fe)) {
    this = (void *)((uint)this & (param_1 != -0x11c0ae92) - 1);
  }
  return this;
}

