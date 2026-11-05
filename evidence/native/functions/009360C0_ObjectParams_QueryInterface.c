/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. Physical ECX ObjectParams resource plus1stackDWORD IID,
   RET4; EAX=this for02DC3450,02269ED1,EB54B802,EE3F516E, null otherwise. Pointer result, not
   ALBoolean. Selected resource vtable01043E0C+0C binds this leaf. Factory9372A0 querycall must
   account for this one-word purge before reading context after saved EBX/ESI. */

void * __thiscall ObjectParams_QueryInterface(void *this,dword interfaceId)

{
  if (((interfaceId != 0x2dc3450) && (interfaceId != 0x2269ed1)) && (interfaceId != 0xeb54b802)) {
    this = (void *)((uint)this & (interfaceId != 0xee3f516e) - 1);
  }
  return this;
}

