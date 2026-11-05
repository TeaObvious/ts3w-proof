/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; analyst display name FootprintCell_CollectChildren.
   Original Ghidra database symbol: FUN_00669e60; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00669e60,00669eaa); 0 envelope gap bytes are not owned instructions.
*/

/* Visit four nonnull child slots in order and forward the same filter/collector arguments to the recursive collector. Geometric segment admission is owned by 663F50/66AA30, not this helper. */

void __thiscall
FootprintCell_CollectChildren(void *this,int param_1,void *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 *puVar1;
  int local_4;
  
  puVar1 = (undefined4 *)((int)this + 0xc);
  local_4 = 4;
  do {
    if ((void *)*puVar1 != (void *)0x0) {
      FootprintCell_CollectRecordsRecursive((void *)*puVar1,param_1,param_2,param_3,param_4,param_5);
    }
    puVar1 = puVar1 + 1;
    local_4 = local_4 + -1;
  } while (local_4 != 0);
  return;
}
