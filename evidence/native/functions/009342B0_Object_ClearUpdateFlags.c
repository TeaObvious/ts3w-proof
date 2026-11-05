/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Clears requested bits of object+28. Component presence at +2c
   is unchanged. */

void __thiscall Object_ClearUpdateFlags(void *this,uint flags)

{
  uint uVar1;
  
  uVar1 = ~flags & *(uint *)((int)this + 0x28);
  if (uVar1 != *(uint *)((int)this + 0x28)) {
    *(uint *)((int)this + 0x28) = uVar1;
  }
  return;
}

