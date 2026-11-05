/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX
   metadata,no stack args. StoredUInt32+64 returns unchanged unlessFFFFFFFF, includingzero. Sentinel
   calls effective-name getter5A2A00 then classifies known32-bit world hashes to1/2 or default0;
   original signed comparisons retained. It does not classify arbitrary localized display strings.
    */

uint __thiscall WorldTemplate_GetEffectiveWorldType(void *this)

{
  uint uVar1;
  
                    /* Analyst: Stored typeFFFFFFFF alone requests fallback; storedzero is returned.
                        */
  uVar1 = *(uint *)((int)this + 100);
  if (uVar1 == 0xffffffff) {
    uVar1 = WorldTemplate_GetEffectiveWorldName(this);
    if ((int)uVar1 < 0x859db51) {
      if (((uVar1 == 0x859db50) || (uVar1 == 0x859db48)) || (uVar1 == 0x859db4c)) {
        return 1;
      }
    }
    else if (0x9ffe3d6 < (int)uVar1) {
      if ((int)uVar1 < 0x9ffe3da) {
        return 2;
      }
      if (uVar1 == 0xc086272) {
        return 1;
      }
    }
    uVar1 = 0;
  }
  return uVar1;
}

