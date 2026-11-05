/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). ECX is vector
   pointer. Iterates64-byte records, frees each owned vertex buffer atrecord+30 then backing
   allocation. No automatic clearing of vector fields after destruction. */

void __fastcall FootprintPolygonVector_Destroy(uint *param_1)

{
  uint uVar1;
  uint uVar2;
  
  uVar1 = param_1[1];
  for (uVar2 = *param_1; uVar2 < uVar1; uVar2 = uVar2 + 0x40) {
    if (*(void **)(uVar2 + 0x30) != (void *)0x0) {
      Memory_FreeIfNonNull(*(void **)(uVar2 + 0x30));
    }
  }
  if ((void *)*param_1 != (void *)0x0) {
    Memory_FreeIfNonNull((void *)*param_1);
  }
  return;
}

