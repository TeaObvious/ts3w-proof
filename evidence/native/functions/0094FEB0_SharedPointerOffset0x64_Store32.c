/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX receiver plus one physical32-bit word, RET4;
   stores argument at receiver+64h.957790/9576C0 pass a parent Slots pointer;6E9300 forwards a
   different linked receiver. Shared code address is not proof these receivers have the same type.
   No addref/release or validation occurs in this leaf. */

void __thiscall SharedPointerOffset0x64_Store32(void *this,undefined4 param_1)

{
  *(undefined4 *)((int)this + 100) = param_1;
  return;
}

