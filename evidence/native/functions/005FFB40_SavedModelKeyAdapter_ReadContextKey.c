/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 saved Model shared-key adapter slot+0C at vtable00FE7748. ECX adapter, stack4
   reader, stack8 output16-byte resource key. Loads enclosing context from adapter+4 then
   tail-jumps7D7470; inherited RET8. That existing original context reader selects UInt16/UInt32
   from context flag82, not shared table version. Full owned2instructions8bytes; this-adjusting tail
   adapter remains an ordinary explicitly bounded function. 606B20 initializes outputzero and
   ignores resolver result. No bytes/target/callee annotations changed. */

void __thiscall SavedModelKeyAdapter_ReadContextKey(void *this,void *reader,void *outputKey)

{
  ResourceReferences_ReadContextKey(*(void **)((int)this + 4),reader,outputKey);
  return;
}

