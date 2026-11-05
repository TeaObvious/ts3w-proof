/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 slot contract. Five originalbytes only: JMP9501A0 with sameECX/nameWord ABI.
   ActualGhidra decompiler may inline targetbody in thunk pseudocode; ASM is the actual
   fivebyteenvelope. Analystalias, no distinct scan algorithm. */

byte * __thiscall SlotComponent_FindFirstNameWordThunk(void *this,uint nameWord)

{
  byte *pbVar1;
  uint ordinal;
  uint uVar2;
  
  if (nameWord == 0) {
    return (byte *)0x0;
  }
  ordinal = 0;
  uVar2 = (*(int *)((int)this + 0x58) - *(int *)((int)this + 0x54) >> 2) +
          *(int *)((int)this + 0x28) + *(int *)((int)this + 0x20) + *(int *)((int)this + 0x18) +
          *(int *)((int)this + 0x10) + *(int *)((int)this + 8);
  if (uVar2 != 0) {
    do {
      pbVar1 = SlotComponent_GetByOrdinal(this,ordinal);
      if (*(uint *)(pbVar1 + 4) == nameWord) {
        return pbVar1;
      }
      ordinal = ordinal + 1;
    } while (ordinal < uVar2);
  }
  return (byte *)0x0;
}

