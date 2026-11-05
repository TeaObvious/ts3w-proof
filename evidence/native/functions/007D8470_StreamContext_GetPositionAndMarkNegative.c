/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. ECX context, no stack arguments. Underlying stream
   +24h(origin zero) returns position bits in EAX. Signed JGE keeps status; a negative/high-bit
   result clears context status +14h. Return position bits unchanged. This differs from treating
   every UInt32 position as an admissible positive absolute offset. */

int __thiscall StreamContext_GetPositionAndMarkNegative(void *this)

{
  uint uVar1;
  
  uVar1 = (**(code **)(**(int **)((int)this + 8) + 0x24))(*(int **)((int)this + 8),0);
  if ((int)uVar1 < 0) {
    *(undefined1 *)((int)this + 0x14) = 0;
  }
  return uVar1;
}

