/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Destroys owned vertex
   buffers of each 0x40-byte record and sets end=begin while retaining backing polygon storage. */

void __fastcall FootprintPolygonVector_Clear(uint *param_1)

{
  uint uVar1;
  uint uVar2;
  
  uVar2 = *param_1;
  uVar1 = param_1[1];
  if (uVar1 <= uVar2) {
    param_1[1] = uVar2;
    return;
  }
  do {
    if (*(int *)(uVar2 + 0x30) != 0) {
      FUN_004e44e0(*(int *)(uVar2 + 0x30));
    }
    uVar2 = uVar2 + 0x40;
  } while (uVar2 < uVar1);
  param_1[1] = *param_1;
  return;
}

