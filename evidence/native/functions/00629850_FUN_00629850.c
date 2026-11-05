/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; analyst display name FootprintSet_InsertUniquePointerForwarder.
   Original Ghidra database symbol: FUN_00629850; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00629850,00629872); 0 envelope gap bytes are not owned instructions.
*/

/* Retained historical annotation 2, previous C line 12; earlier snapshot context. */
/* The physical wrapper consumes two stack words and supplies a third zero word to 628CA0 (62985A..66). Its return is the output-pair pointer. The trailing word is absent in the current callee decompilation; this wrapper itself performs no null-key check. */



undefined4 * __thiscall FUN_00629850(void *this,undefined4 *param_1,uint *param_2)

{
  FUN_00628ca0(this,param_1,param_2);
  return param_1;
}

