/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
    if (*(void **)(uVar2 + 0x30) != (void *)0x0) {
      Memory_FreeIfNonNull(*(void **)(uVar2 + 0x30));
    }
    uVar2 = uVar2 + 0x40;
  } while (uVar2 < uVar1);
  param_1[1] = *param_1;
  return;
}

