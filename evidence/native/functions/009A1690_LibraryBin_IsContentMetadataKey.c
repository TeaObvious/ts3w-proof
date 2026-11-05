/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): Original vtable data pointer0104BF2C targets
   this19-byte predicate. One physical key-pointer stack word RET4; incoming ECX receiver
   overwritten. XOR EAX,EAX/CMP key+8,0679B9B8/SETE AL returns exact EAX0/1. This is a type
   predicate, not a resource-type getter. Function defined from original no-overlap instructions
   without byte changes. */

bool LibraryBin_IsContentMetadataKey(int param_1)

{
  return *(int *)(param_1 + 8) == 0x679b9b8;
}

