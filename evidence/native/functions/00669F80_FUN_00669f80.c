/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; analyst display name FootprintQueryCell_IsTerminal.
   Original Ghidra database symbol: FUN_00669f80; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00669f80,00669f98); 0 envelope gap bytes are not owned instructions.
*/

/* Terminal means descriptor storage+C is null OR low-byte subcell code+1C is greater than unsigned 0x14. A physical leaf storage node alone is not this predicate. Nonempty terminal segment descriptors therefore use codes21..84 and the mask-checked collector branch. */

undefined4 __fastcall FootprintQueryCell_IsTerminal(int param_1)

{
  if ((*(int *)(param_1 + 0xc) == 0) || (0x14 < *(byte *)(param_1 + 0x1c))) {
    return 1;
  }
  return 0;
}
