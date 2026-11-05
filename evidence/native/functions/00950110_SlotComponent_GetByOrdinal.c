/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 slot contract. ECX component, UInt32 ordinal, RET4, pointer EAX. Unsigned
   compare/subtract chooses five authored arrays in routing/containment/effect/target/cone order:
   count/base offsets 08/0C stride18,10/14 stride20,18/1C stride18,20/24 stride18,28/2C stride20.
   Remaining ordinal indexes dereferenced pointer vector [54,58), count SAR32(end-begin,2). Returns
   NULL outside that final unsigned range. Counts/storage consistency is assumed; no independent
   null check of selected array. These are MEMORY strides, not RSLT wire lengths. */

byte * __thiscall SlotComponent_GetByOrdinal(void *this,uint ordinal)

{
  uint uVar1;
  
  if (ordinal < *(uint *)((int)this + 8)) {
    return (byte *)(*(int *)((int)this + 0xc) + ordinal * 0x18);
  }
  uVar1 = ordinal - *(uint *)((int)this + 8);
  if (uVar1 < *(uint *)((int)this + 0x10)) {
    return (byte *)(uVar1 * 0x20 + *(int *)((int)this + 0x14));
  }
  uVar1 = uVar1 - *(uint *)((int)this + 0x10);
  if (uVar1 < *(uint *)((int)this + 0x18)) {
    return (byte *)(*(int *)((int)this + 0x1c) + uVar1 * 0x18);
  }
  uVar1 = uVar1 - *(uint *)((int)this + 0x18);
  if (uVar1 < *(uint *)((int)this + 0x20)) {
    return (byte *)(*(int *)((int)this + 0x24) + uVar1 * 0x18);
  }
  uVar1 = uVar1 - *(uint *)((int)this + 0x20);
  if (uVar1 < *(uint *)((int)this + 0x28)) {
    return (byte *)(uVar1 * 0x20 + *(int *)((int)this + 0x2c));
  }
  uVar1 = uVar1 - *(uint *)((int)this + 0x28);
  if (uVar1 < (uint)(*(int *)((int)this + 0x58) - *(int *)((int)this + 0x54) >> 2)) {
    return *(byte **)(*(int *)((int)this + 0x54) + uVar1 * 4);
  }
  return (byte *)0x0;
}

