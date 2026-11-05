/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). ECX is vector
   pointer. Iterates64-byte records, frees each owned vertex buffer atrecord+30 then backing
   allocation. No automatic clearing of vector fields after destruction. */

void __fastcall FootprintPolygonVector_Destroy(uint *param_1)

{
  uint uVar1;
  uint uVar2;
  
  uVar1 = param_1[1];
  for (uVar2 = *param_1; uVar2 < uVar1; uVar2 = uVar2 + 0x40) {
    if (*(int *)(uVar2 + 0x30) != 0) {
      FUN_004e44e0(*(int *)(uVar2 + 0x30));
    }
  }
  if (*param_1 != 0) {
    FUN_004e44e0(*param_1);
  }
  return;
}

