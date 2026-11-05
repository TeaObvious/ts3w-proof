/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. PC1.67 static instruction review. Validates signed byte X/Y/level from a
   four-byte tile locator. X/Y must be >=0 and below lot+174/+178; signed level is inclusive within
   lot+17C..180. MOVSX, JL/JGE/JG govern basement behavior. */

bool __thiscall Lot_IsSignedTileInBounds(void *this,char *tile4)

{
  if ((((-1 < *tile4) && ((int)*tile4 < *(int *)((int)this + 0x174))) && (-1 < tile4[1])) &&
     ((((int)tile4[1] < *(int *)((int)this + 0x178) &&
       (*(int *)((int)this + 0x17c) <= (int)tile4[2])) &&
      ((int)tile4[2] <= *(int *)((int)this + 0x180))))) {
    return true;
  }
  return false;
}

