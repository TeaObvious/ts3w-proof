/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; analyst display name FootprintGather_IsDiscardedClassification.
   Original Ghidra database symbol: FUN_00621220; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00621220,00621237); 0 envelope gap bytes are not owned instructions.
*/

/* Retained historical annotation 2, previous C line 12; earlier snapshot context. */
/* The selected caller consumes AL only. Unsigned classes 0, 1 and 0x0d return nonzero AL; other classes return zero AL. This predicate does not classify wall kinds. See 621224..621233; do not infer a normalized full-register ABI from the generated return type. */



undefined4 __cdecl FUN_00621220(uint param_1)

{
  if ((param_1 < 2) || (param_1 == 0xd)) {
    return 1;
  }
  return 0;
}

