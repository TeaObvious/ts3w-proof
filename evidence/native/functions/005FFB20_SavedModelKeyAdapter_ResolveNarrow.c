/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 saved Model shared-key adapter slot+8 at vtable00FE7748. ECX adapter, stack4 raw
   handle word, stack8 output16-byte resource key; RET8. Loads enclosing context from adapter+4,
   passes pointer to lowUInt16 stack slot to7D7190, forwards low-AL lookup result. Full
   owned7instructions21bytes. Present zero key can resolve successfully; missing output remains
   caller-initialized. Scalar width follows instructions, not stale high stack bits. No original
   bytes changed. */

byte __thiscall SavedModelKeyAdapter_ResolveNarrow(void *this,ushort handleWord,void *outputKey)

{
  uint uVar1;
  
  uVar1 = ResourceReferences_ResolveNarrowHandle(*(void **)((int)this + 4),&handleWord,outputKey);
  return (byte)uVar1;
}

