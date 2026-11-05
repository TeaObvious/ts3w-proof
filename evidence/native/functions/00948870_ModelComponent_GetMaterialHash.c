/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. Physical ECX Model; MOV EAX,[ECX+4C]; RET. Returns raw UInt32
   material hash, not geometry state. */

uint __thiscall ModelComponent_GetMaterialHash(void *this)

{
  return *(uint *)((int)this + 0x4c);
}

