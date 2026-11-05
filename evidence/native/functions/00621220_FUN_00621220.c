/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; analyst display name FootprintGather_IsDiscardedClassification.
   Original Ghidra database symbol: FUN_00621220; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00621220,00621237); 0 envelope gap bytes are not owned instructions.
*/

/* The selected caller consumes AL only. Unsigned classes 0, 1 and 0x0d return nonzero AL; other classes return zero AL. This predicate does not classify wall kinds. See 621224..621233; do not infer a normalized full-register ABI from the generated return type. */

undefined4 __cdecl FootprintGather_IsDiscardedClassification(uint param_1)

{
  if ((param_1 < 2) || (param_1 == 0xd)) {
    return 1;
  }
  return 0;
}
