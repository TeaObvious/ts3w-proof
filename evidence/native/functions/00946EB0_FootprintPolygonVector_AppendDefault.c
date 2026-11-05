/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). ECX vector
   descriptor. Advances end by 0x40, initializes level byte+5=0, extra+0x1c=0 and vertex
   vector+0x30. Growth path copies a stack default record. This is the first append in
   relative-transform expansion before a second copied transformed record is appended. */

void __fastcall FootprintPolygonVector_AppendDefault(void *param_1)

{
  undefined4 *puVar1;
  undefined4 local_40;
  undefined1 local_3b;
  undefined4 local_24;
  void *local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  puVar1 = *(undefined4 **)((int)param_1 + 4);
  if (puVar1 < *(undefined4 **)((int)param_1 + 8)) {
    *(undefined4 **)((int)param_1 + 4) = puVar1 + 0x10;
    if (puVar1 != (undefined4 *)0x0) {
      *(undefined1 *)((int)puVar1 + 5) = 0;
      puVar1[7] = 0;
      puVar1[0xc] = 0;
      puVar1[0xd] = 0;
      puVar1[0xe] = 0;
      puVar1[0xf] = "Objects/FootprintPolygon";
      return;
    }
  }
  else {
    local_3b = 0;
    local_24 = 0;
    local_10 = (void *)0x0;
    local_c = 0;
    local_8 = 0;
    local_4 = "Objects/FootprintPolygon";
    FUN_0082f220(param_1,puVar1,&local_40);
    if (local_10 != (void *)0x0) {
      Memory_FreeIfNonNull(local_10);
    }
  }
  return;
}

