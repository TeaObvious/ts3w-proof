/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; analyst display name RoutingRecord_GetOptionsField28OrNull.
   Original Ghidra database symbol: FUN_00828f00; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00828f00,00828f13); 0 envelope gap bytes are not owned instructions.
*/

/* Retained historical annotation 2, previous C line 12; earlier snapshot context. */
/* One stack pointer argument, RET4: null returns zero, nonnull returns its DWORD+28. The ECX manager value visible at callers is unused here. RoutingOptions use of the returned pointer is established in callers; the getter alone does not prove the whole record type or ownership. */



undefined4 FUN_00828f00(int param_1)

{
  if (param_1 == 0) {
    return 0;
  }
  return *(undefined4 *)(param_1 + 0x28);
}

