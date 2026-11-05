/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX listener,no stack args/plain RET,AL result.
   Scans24-byte entries from+4 to+8; true when primary byte+D or controller identity+8 equals
   selected+14. Empty/all nonprimary unselected yieldsAL0; upper EAX pointer bits incidental. Actual
   list identity matters.
   
   Analyst note (PC1.67 SACS migration contract): ECX listener; AL Boolean, upper EAX incidental.
   Scan24-byte registrations [listener+4,+8); primary byte+D or controller identity+8 equal
   selected+14 yields true. Current focused registration owner must query actual live entry
   flags/selected identity, not a constructor snapshot. */

uint __fastcall SacsListener_HasBlockingController(int param_1)

{
  uint uVar1;
  
  uVar1 = *(uint *)(param_1 + 4);
  if (uVar1 == *(uint *)(param_1 + 8)) {
    return uVar1 & 0xffffff00;
  }
  while( true ) {
    if (uVar1 == *(uint *)(param_1 + 8)) {
      return uVar1 & 0xffffff00;
    }
    if ((*(char *)(uVar1 + 0xd) != '\0') || (*(int *)(uVar1 + 8) == *(int *)(param_1 + 0x14)))
    break;
    uVar1 = uVar1 + 0x18;
  }
  return CONCAT31((int3)(uVar1 >> 8),1);
}

