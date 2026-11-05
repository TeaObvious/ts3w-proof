/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 slot contract. ECX component, UInt32 nameWord RET4, pointer EAX. Zero name
   immediately NULL. Computes wrapping DWORD total = SAR32(end58-begin54,2)+five category counts.
   Scans increasing ordinal through950110, compares record+4 fullDWORD, returns FIRST exact match.
   No deduplication, category override, case conversion, hash calculation or null guard on returned
   row. Malformed/stale counts do not gain safety from this routine. Inputs called name words
   because projected from resource name array; hash algorithm is separate. */

byte * __thiscall SlotComponent_FindFirstNameWord(void *this,uint nameWord)

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

