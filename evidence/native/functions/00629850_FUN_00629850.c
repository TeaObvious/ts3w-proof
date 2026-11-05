/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; analyst display name FootprintSet_InsertUniquePointerForwarder.
   Original Ghidra database symbol: FUN_00629850; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00629850,00629872); 0 envelope gap bytes are not owned instructions.
*/

/* The physical wrapper consumes two stack words and supplies a third zero word to 628CA0 (62985A..66). Its return is the output-pair pointer. The trailing word is absent in the current callee decompilation; this wrapper itself performs no null-key check. */

undefined4 * __thiscall FootprintSet_InsertUniquePointerForwarder(void *this,undefined4 *param_1,uint *param_2)

{
  FootprintSet_InsertUniquePointer(this,param_1,param_2);
  return param_1;
}
